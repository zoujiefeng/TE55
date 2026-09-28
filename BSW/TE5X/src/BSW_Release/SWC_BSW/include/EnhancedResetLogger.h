#ifndef ENHANCED_RESET_LOGGER_H
#define ENHANCED_RESET_LOGGER_H

#include "Std_Types.h"
#include "NvM.h"

/* NvM Block配置 - 每个日志条目一个Block */
#define NVM_BLOCK_RESET_LOG_BASE   (0x0100U)  /* 复位日志条目基址 */
#define NVM_BLOCK_SHUTDOWN_STATUS  (NvMConf_NvMBlockDescriptor_NvM_ShutdownStatusBlock)  /* 关机状态块 */

/* 魔数和版本 */
#define RESET_LOG_VERSION          (0x0100U)      /* 版本1.0 */

#define NV_RESET_LOG_ECU_CORE_NUM      4

/* 关机状态 */
typedef enum {
    SHUTDOWN_STATUS_UNKNOWN = 0,           /* 未知状态 */
    SHUTDOWN_STATUS_ABNORMAL = 0x55,       /* 异常关机 */
    SHUTDOWN_STATUS_NORMAL = 0xAA,         /* 正常关机 */
    SHUTDOWN_STATUS_RUNNING = 0xCC         /* 系统运行中 */
} ShutdownStatus_t;

/* 复位类型枚举 */
typedef enum {
    RESET_TYPE_UNKNOWN = 0,
    RESET_TYPE_POWER_ON,
    RESET_TYPE_WATCHDOG,
    RESET_TYPE_SOFTWARE,
    RESET_TYPE_EXTERNAL,
    RESET_TYPE_SAFETY_WDT,
    RESET_TYPE_TRAP,
    RESET_TYPE_SMU_ALARM
} ResetType_t;

typedef struct {
    uint32 appErrorCode;         /* 应用错误码 */
    uint32 taskId;               /* 最后运行的任务ID */
    uint32 cpuLoad;              /* CPU负载 */
    uint32 stackUsage;           /* 栈使用量 */
}ResetLogCore;

typedef struct {
    uint8  trapOccurred;             /* 是否发生Trap */

    uint16 u16P5VRefProt;
    uint16 u16P5VAd2s;
    uint16 u16P5VBtm;
    uint16 u16P5VGateway;
    uint16 u16P5VCom;
    uint16 u16PsuP5VLS;
    uint16 u16PsuP5VHS;
    uint16 u1615VRdc;
    uint16 u16BatVol;

    /* Trap信息 */
    OsTrapInfoType xCoresTrapInfo[NV_RESET_LOG_ECU_CORE_NUM];
    
    /* 应用上下文 */
    ResetLogCore xCoreLog[NV_RESET_LOG_ECU_CORE_NUM];       /* CPU负载 */
}NoClearResetLog_t;

/* 简化的复位日志条目结构 */
typedef struct {
    /* 标识信息 */
    uint16 version;                 /* 结构体版本 */
    uint16 sequence;                /* 序列号 - 关键字段 */

    ResetType_t resetType;          /* 复位类型 */
    uint8 wdtTimeout;               /* 看门狗是否超时 */
    uint8 trapOccurred;             /* 是否发生Trap */
    uint8 smuAlarmPresent;          /* 是否存在SMU报警 */

    /* 时间信息 */
    uint32 uptimeBeforeReset;       /* 复位前运行时间(ms) */
    uint32 systemUptime;
    uint32 resetInterval;           /* 距离上次复位的时间间隔 */

    /* 复位源信息 */
    uint32 scuRstStat;              /* SCU_RSTSTAT寄存器值 */
    uint32 scuRstCon;               /* SCU_RSTCON寄存器值 */

    /* 看门狗信息 */
    uint32 wdtStatus[NV_RESET_LOG_ECU_CORE_NUM];               /* WDT状态寄存器 */
    
    /* SMU信息 */
    uint32 smuAlmStatus[12];         /* SMU报警状态 */
    
    /* Before Reset  */
    uint16 u16P5VRefProt;
    uint16 u16P5VAd2s;
    uint16 u16P5VBtm;
    uint16 u16P5VGateway;
    uint16 u16P5VCom;
    uint16 u16PsuP5VLS;
    uint16 u16PsuP5VHS;
    uint16 u1615VRdc;
    uint16 u16BatVol;

    /* Trap信息 */
    OsTrapInfoType xCoresTrapInfo[NV_RESET_LOG_ECU_CORE_NUM];
    
    /* 应用上下文 */
    ResetLogCore xCoreLog[NV_RESET_LOG_ECU_CORE_NUM];       /* CPU负载 */
} EnhancedResetLogEntry_t;

typedef union {
    uint8 au8Data[200];
    EnhancedResetLogEntry_t xResetLogEntry;
} ResetLogNvMEntry_t;

typedef struct {
    uint16 u16NvMID;
    ResetLogNvMEntry_t * pxNvMEntry;
}ResetLogNvMCfg;

/* 关机状态结构 */
typedef struct {
    uint32 magic;
    ShutdownStatus_t status;
    uint32 timestamp;           /* 最后状态更新时间 */
    uint32 checksum;
} ShutdownStatusBlock_t;

/* 函数声明 */
extern void ERL_Init(void);
extern void ERL_MarkNormalShutdown(void);
extern void ERL_UpdateUptime(void);
extern void ERL_vidReadLogByIndex(uint8 request, uint8* response);
extern void ERL_vidSaveInfoToNoClearRam(void);

/* 辅助函数 */
const char* ERL_GetResetTypeString(ResetType_t type);
const char* ERL_GetShutdownStatusString(ShutdownStatus_t status);

#endif /* ENHANCED_RESET_LOGGER_H */