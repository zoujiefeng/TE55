#include "EnhancedResetLogger.h"
#include "rba_BswSrv.h"

#include "IfxScu_reg.h"
#include "IfxSmu_reg.h"

#include "IOHAL.h"
#include "PortMux.h"

/* 本地变量 */
static uint16 g_latestSequence = 0;
static uint32 g_systemUptime = 0;

ShutdownStatusBlock_t ERL_xShutdownStatusBlock;

const ShutdownStatusBlock_t ERL_xShutdownStatusBlockRom_NVM = {0};

#pragma section ".psram_ErrorInfo" a 4
static NoClearResetLog_t NoClearResetLog;
#pragma section

ResetLogNvMEntry_t ERL_xResetLogNvMEntry_0;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_1;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_2;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_3;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_4;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_5;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_6;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_7;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_8;
ResetLogNvMEntry_t ERL_xResetLogNvMEntry_9;

const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_0_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_1_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_2_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_3_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_4_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_5_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_6_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_7_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_8_Rom_NVM = {0};
const ResetLogNvMEntry_t ERL_xResetLogNvMEntry_9_Rom_NVM = {0};

ResetLogNvMCfg ERL_axResetLogNvMCfg[] = {
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_0, &ERL_xResetLogNvMEntry_0},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_1, &ERL_xResetLogNvMEntry_1},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_2, &ERL_xResetLogNvMEntry_2},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_3, &ERL_xResetLogNvMEntry_3},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_4, &ERL_xResetLogNvMEntry_4},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_5, &ERL_xResetLogNvMEntry_5},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_6, &ERL_xResetLogNvMEntry_6},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_7, &ERL_xResetLogNvMEntry_7},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_8, &ERL_xResetLogNvMEntry_8},
    {NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_9, &ERL_xResetLogNvMEntry_9},
};

#define NV_RESET_LOG_SIZE          (sizeof(ERL_axResetLogNvMCfg) / sizeof(ResetLogNvMCfg))       /* 日志条目数量 */

/*===========================================================================*/
/*                         NvM操作函数                                       */
/*===========================================================================*/
static Std_ReturnType WriteLogEntryImmediate(uint8 index)
{
    if(index >= NV_RESET_LOG_SIZE) 
    {
        return E_NOT_OK;
    }

    uint16 blockId = ERL_axResetLogNvMCfg[index].u16NvMID;
    Std_ReturnType ret = NvM_WriteBlock(blockId, NULL_PTR);
    
    return ret;
}

static Std_ReturnType WriteShutdownStatusImmediate(void)
{
    uint16 blockId = NVM_BLOCK_SHUTDOWN_STATUS;

    Std_ReturnType ret = NvM_WriteBlock(blockId, NULL_PTR);
    
    return ret;
}

/*===========================================================================*/
/*                         关机状态管理函数                                  */
/*===========================================================================*/
/**
 * @brief 更新关机状态
 */
static uint8 UpdateShutdownStatus(ShutdownStatus_t newStatus)
{
    /* 读取当前状态 */
    /* 初始化状态块 */
    ERL_xShutdownStatusBlock.magic = 0x5348444EU; /* "SHDN" */
    
    /* 更新状态 */
    ERL_xShutdownStatusBlock.status = newStatus;
    ERL_xShutdownStatusBlock.timestamp = g_systemUptime;
    ERL_xShutdownStatusBlock.checksum = 0;
    
    WriteShutdownStatusImmediate();
}

/**
 * @brief 获取上次关机状态
 */
static ShutdownStatus_t ERL_GetLastShutdownStatus(void)
{
    ShutdownStatus_t eRet = SHUTDOWN_STATUS_NORMAL;

    if(0x5348444EU == ERL_xShutdownStatusBlock.magic)
    {
        eRet = ERL_xShutdownStatusBlock.status;
    }

    return eRet;
}

/*===========================================================================*/
/*                         复位信息收集函数                                  */
/*===========================================================================*/

static ResetType_t GetResetType(uint32 rstStat)
{
    if(rstStat & 0x0002U) return RESET_TYPE_WATCHDOG;
    if(rstStat & 0x0004U) return RESET_TYPE_SOFTWARE;
    if(rstStat & 0x0008U) return RESET_TYPE_EXTERNAL;
    if(rstStat & 0x0010U) return RESET_TYPE_POWER_ON;
    if(rstStat & 0x0020U) return RESET_TYPE_SAFETY_WDT;

    return RESET_TYPE_UNKNOWN;
}

static void CollectResetInfo(ResetLogNvMEntry_t* entry, uint32 rstStat)
{
    /* 基础复位信息 */
    entry->xResetLogEntry.scuRstStat = rstStat;
    entry->xResetLogEntry.resetType = GetResetType(rstStat);
    
    /* 看门狗信息 */
    entry->xResetLogEntry.wdtStatus[0] = SCU_WDTCPU0SR.U;
    entry->xResetLogEntry.wdtStatus[1] = SCU_WDTCPU1SR.U;
    entry->xResetLogEntry.wdtStatus[2] = SCU_WDTCPU2SR.U;
    entry->xResetLogEntry.wdtStatus[3] = SCU_WDTCPU3SR.U;
    
    /* SMU信息 */
    entry->xResetLogEntry.smuAlmStatus[0] = SMU_AG0.U;
    entry->xResetLogEntry.smuAlmStatus[1] = SMU_AG1.U;
    entry->xResetLogEntry.smuAlmStatus[2] = SMU_AG2.U;
    entry->xResetLogEntry.smuAlmStatus[3] = SMU_AG3.U;
    entry->xResetLogEntry.smuAlmStatus[4] = SMU_AG4.U;
    entry->xResetLogEntry.smuAlmStatus[5] = SMU_AG5.U;
    entry->xResetLogEntry.smuAlmStatus[6] = SMU_AG6.U;
    entry->xResetLogEntry.smuAlmStatus[7] = SMU_AG7.U;
    entry->xResetLogEntry.smuAlmStatus[8] = SMU_AG8.U;
    entry->xResetLogEntry.smuAlmStatus[9] = SMU_AG9.U;
    entry->xResetLogEntry.smuAlmStatus[10] = SMU_AG10.U;
    entry->xResetLogEntry.smuAlmStatus[11] = SMU_AG11.U;
    
    entry->xResetLogEntry.wdtTimeout = 0;               /* 看门狗是否超时 */
    entry->xResetLogEntry.smuAlarmPresent = 0;          /* 是否存在SMU报警 */

    /* 时间信息 */
    entry->xResetLogEntry.resetInterval = 0;           /* 距离上次复位的时间间隔 */

    /* 系统运行时间 */
    entry->xResetLogEntry.systemUptime = g_systemUptime;
}

/*===========================================================================*/
/*                         序号管理函数                                      */
/*===========================================================================*/
// 判断两个uint16值是否连续（考虑溢出）
static boolean is_continuous(uint16 a, uint16 b)
{
    boolean bRet = FALSE;

    // 正常情况：b = a + 1
    if(b == a + 1)
    {
        bRet = TRUE;
    }
    else if(a == 65535 && b == 0)
    {
        bRet = TRUE;
    }
    else
    {
        /* Do nothing */
    }
    
    return bRet;
}

/**
 * @brief 查找下一个可用的日志索引和序列号
 */
static uint8 FindNextLogIndex(uint16* nextSequence)
{
    uint8 u8Idx;
    uint8 u8NextIdx;
    uint8 u8RetIdx;
    boolean bIsContinue, bIsFound = FALSE;

    for(u8Idx = 0; u8Idx < NV_RESET_LOG_SIZE; u8Idx++)
    {
        if(RESET_LOG_VERSION != ERL_axResetLogNvMCfg[u8Idx].pxNvMEntry->xResetLogEntry.version)
        {
            bIsFound = TRUE;
            u8RetIdx = u8Idx;

            if(0 == u8Idx)
            {
                *nextSequence = 0;
            }
            else
            {
                *nextSequence = ERL_axResetLogNvMCfg[u8Idx - 1].pxNvMEntry->xResetLogEntry.sequence + 1;
            }
            break;
        }
    }

    if(FALSE == bIsFound)
    {
        for(u8Idx = 0; u8Idx < NV_RESET_LOG_SIZE; u8Idx++)
        {
            u8NextIdx = (u8Idx + 1) % NV_RESET_LOG_SIZE;

            bIsContinue = is_continuous(ERL_axResetLogNvMCfg[u8Idx].pxNvMEntry->xResetLogEntry.sequence, ERL_axResetLogNvMCfg[u8NextIdx].pxNvMEntry->xResetLogEntry.sequence);
            if(FALSE == bIsContinue)
            {
                u8RetIdx = u8NextIdx;
                *nextSequence = ERL_axResetLogNvMCfg[u8Idx].pxNvMEntry->xResetLogEntry.sequence + 1;
            }
        }
    }

    return u8RetIdx;
}

/*===========================================================================*/
/*                         公开接口函数                                      */
/*===========================================================================*/

/**********************************************************************
 * Function name    :  ERL_vidSaveInfoToNoClearRam
 * Description      :  Save the error infomation to uncleared RAM space
 *                  :  before an abnormal reset occurs
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/06/15	     V1.0	     ZYX	       Create
 * 2025/10/28	     V1.0	     ZYX	       Create
 ***********************************************************************/ 
void ERL_vidSaveInfoToNoClearRam(void)
{
    uint8 u8Index;

    /**********************************************************************
    * Save trap data 
    * Mem size       : BSW_ECU_CORE_NUM * 8
    * Valid mem size : BSW_ECU_CORE_NUM * 6
    **********************************************************************/
    NoClearResetLog.trapOccurred = 0x01u;
    
    for(u8Index = 0; u8Index < NV_RESET_LOG_ECU_CORE_NUM; u8Index++)
    {
        /* Save Trap Info */
        NoClearResetLog.xCoresTrapInfo[u8Index].Class         = Os_ControlledCoreInfo[u8Index].TrapInfo.Class;
        NoClearResetLog.xCoresTrapInfo[u8Index].TIN           = Os_ControlledCoreInfo[u8Index].TrapInfo.TIN;
        NoClearResetLog.xCoresTrapInfo[u8Index].ReturnAddress = Os_ControlledCoreInfo[u8Index].TrapInfo.ReturnAddress;

        /* Save Core Info */
        NoClearResetLog.xCoreLog[u8Index].appErrorCode = 0;
        NoClearResetLog.xCoreLog[u8Index].taskId = 0;
        NoClearResetLog.xCoreLog[u8Index].cpuLoad = 0;
        NoClearResetLog.xCoreLog[u8Index].stackUsage = 0;
    }

    /**********************************************************************
    * Save voltage adc val
    **********************************************************************/
    NoClearResetLog.u16P5VRefProt = IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF();
    NoClearResetLog.u16P5VAd2s = IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S();
    NoClearResetLog.u16P5VBtm = PMux_u16GetInputVal(ePMUX_AN3_MUX11);
    NoClearResetLog.u16P5VGateway = PMux_u16GetInputVal(ePMUX_AN1_MUX11);
    NoClearResetLog.u16P5VCom = PMux_u16GetInputVal(ePMUX_AN2_MUX11);
    NoClearResetLog.u16PsuP5VLS = PMux_u16GetInputVal(ePMUX_AN3_MUX10);
    NoClearResetLog.u16PsuP5VHS = PMux_u16GetInputVal(ePMUX_AN2_MUX10);
    NoClearResetLog.u1615VRdc = IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC();
    NoClearResetLog.u16BatVol = PMux_u16GetInputVal(ePMUX_AN0_MUX10);

}

void ERL_vidRestoreInfoFromNoClearRam(ResetLogNvMEntry_t* entry)
{
    uint8 u8Index;

    /**********************************************************************
    * Save trap data 
    * Mem size       : BSW_ECU_CORE_NUM * 8
    * Valid mem size : BSW_ECU_CORE_NUM * 6
    **********************************************************************/
    entry->xResetLogEntry.trapOccurred = NoClearResetLog.trapOccurred;
    
    for(u8Index = 0; u8Index < NV_RESET_LOG_ECU_CORE_NUM; u8Index++)
    {
        /* Save Trap Info */
        entry->xResetLogEntry.xCoresTrapInfo[u8Index].Class = NoClearResetLog.xCoresTrapInfo[u8Index].Class;
        entry->xResetLogEntry.xCoresTrapInfo[u8Index].TIN = NoClearResetLog.xCoresTrapInfo[u8Index].TIN;
        entry->xResetLogEntry.xCoresTrapInfo[u8Index].ReturnAddress = NoClearResetLog.xCoresTrapInfo[u8Index].ReturnAddress;

        /* Save Core Info */
        entry->xResetLogEntry.xCoreLog[u8Index].appErrorCode = NoClearResetLog.xCoreLog[u8Index].appErrorCode = 0;
        entry->xResetLogEntry.xCoreLog[u8Index].taskId = NoClearResetLog.xCoreLog[u8Index].taskId = 0;
        entry->xResetLogEntry.xCoreLog[u8Index].cpuLoad = NoClearResetLog.xCoreLog[u8Index].cpuLoad = 0;
        entry->xResetLogEntry.xCoreLog[u8Index].stackUsage = NoClearResetLog.xCoreLog[u8Index].stackUsage = 0;
    }

    /**********************************************************************
    * Save voltage adc val
    **********************************************************************/
    entry->xResetLogEntry.u16P5VRefProt = NoClearResetLog.u16P5VRefProt;
    entry->xResetLogEntry.u16P5VAd2s = NoClearResetLog.u16P5VAd2s;
    entry->xResetLogEntry.u16P5VBtm = NoClearResetLog.u16P5VBtm;
    entry->xResetLogEntry.u16P5VGateway = NoClearResetLog.u16P5VGateway;
    entry->xResetLogEntry.u16P5VCom = NoClearResetLog.u16P5VCom;
    entry->xResetLogEntry.u16PsuP5VLS = NoClearResetLog.u16PsuP5VLS;
    entry->xResetLogEntry.u1615VRdc = NoClearResetLog.u1615VRdc;
    entry->xResetLogEntry.u16PsuP5VHS = NoClearResetLog.u16PsuP5VHS;
    entry->xResetLogEntry.u16BatVol = NoClearResetLog.u16BatVol;
}

/**
 * @brief 初始化增强复位日志系统
 */
void ERL_Init(void)
{
    ShutdownStatus_t eStatus = ERL_GetLastShutdownStatus();

    if(SHUTDOWN_STATUS_ABNORMAL == eStatus)
    {
        /* 保存当前复位信息 */
        ERL_SaveResetInfo();
    }

    /* 关键步骤：上电时标记为异常状态 */
    /* 如果系统正常关机，这个标记会在关机前被覆盖为正常 */
    UpdateShutdownStatus(SHUTDOWN_STATUS_ABNORMAL);
}

/**
 * @brief 保存当前复位信息
 */
void ERL_SaveResetInfo(void)
{
    ResetLogNvMEntry_t * newEntry;
    uint16 nextSequence;
    uint8 writeIndex;
    
    uint32 rstStat = SCU_RSTSTAT.U;
    
    writeIndex = FindNextLogIndex(&nextSequence);

    newEntry = ERL_axResetLogNvMCfg[writeIndex].pxNvMEntry;

    rba_BswSrv_MemSet(newEntry, 0, sizeof(ResetLogNvMEntry_t));

    newEntry->xResetLogEntry.version = RESET_LOG_VERSION;
    
    newEntry->xResetLogEntry.sequence = nextSequence;
    
    CollectResetInfo(newEntry, rstStat);

    ERL_vidRestoreInfoFromNoClearRam(newEntry);

    WriteLogEntryImmediate(writeIndex);
}

/**
 * @brief 标记正常关机
 * @note 在系统正常关机流程中调用
 */
void ERL_MarkNormalShutdown(void)
{
    /* 标记为正常关机 */
    UpdateShutdownStatus(SHUTDOWN_STATUS_NORMAL);
}

/**
 * @brief 更新系统运行时间
 */
void ERL_UpdateUptime(void)
{
    g_systemUptime++;
}

/*===========================================================================*/
/*                         UDS诊断服务实现                                   */
/*===========================================================================*/

/**
 * @brief 通过索引读取复位日志
 */
void ERL_vidReadLogByIndex(uint8 request, uint8* response)
{
    uint8 logIndex = request % NV_RESET_LOG_SIZE;
    uint8 index = 0U;
    
    for(index = 0u; index < sizeof(ResetLogNvMEntry_t); index++)
    {
        *response = ERL_axResetLogNvMCfg[logIndex].pxNvMEntry->au8Data[index];
        response++;
    }
}

/*===========================================================================*/
/*                         辅助函数                                          */
/*===========================================================================*/

const char* ERL_GetResetTypeString(ResetType_t type)
{
    switch(type)
    {
        case RESET_TYPE_POWER_ON:    return "PowerOn";
        case RESET_TYPE_WATCHDOG:    return "Watchdog";
        case RESET_TYPE_SOFTWARE:    return "Software";
        case RESET_TYPE_EXTERNAL:    return "External";
        case RESET_TYPE_SAFETY_WDT:  return "SafetyWDT";
        case RESET_TYPE_TRAP:        return "Trap";
        case RESET_TYPE_SMU_ALARM:   return "SMUAlarm";
        default:                     return "Unknown";
    }
}

const char* ERL_GetShutdownStatusString(ShutdownStatus_t status)
{
    switch(status)
{
        case SHUTDOWN_STATUS_UNKNOWN:   return "Unknown";
        case SHUTDOWN_STATUS_ABNORMAL:  return "Abnormal";
        case SHUTDOWN_STATUS_NORMAL:    return "Normal";
        case SHUTDOWN_STATUS_RUNNING:   return "Running";
        default:                        return "Invalid";
    }
}