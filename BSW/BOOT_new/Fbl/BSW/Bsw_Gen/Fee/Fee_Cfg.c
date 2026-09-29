

#include "Fee.h"
#include "Fee_Cfg.h"
#include "Fee_Prv.h"



/* Properties of flash sectors */
#define FEE_START_SEC_CONST_UNSPECIFIED
#include "Fee_MemMap.h"
#if (defined(FEE_CFG_FEE1_ENABLED) && (TRUE == FEE_CFG_FEE1_ENABLED))
const Fee_FlashProp_tst Fee_FlashProp_st[FEE_NUM_FLASH_BANKS_AVAILABLE] = {
#else
const Fee_Rb_FlashProp_tst Fee_Rb_FlashProp_st[FEE_NUM_FLASH_BANKS_AVAILABLE] = {
#endif
    { FEE_PHYS_SEC_START0, FEE_PHYS_SEC_END0, FEE_LOG_SEC_START0, FEE_LOG_SEC_END0 }, /* sector 0 */
    { FEE_PHYS_SEC_START1, FEE_PHYS_SEC_END1, FEE_LOG_SEC_START1, FEE_LOG_SEC_END1 }, /* sector 1 */
};
#define FEE_STOP_SEC_CONST_UNSPECIFIED
#include "Fee_MemMap.h"


#if (FEE_RB_USE_ROM_BLOCKTABLE == TRUE)
#define FEE_START_SEC_CONST_UNSPECIFIED
#include "Fee_MemMap.h"
#if (defined(FEE_CFG_FEE1_ENABLED) && (TRUE == FEE_CFG_FEE1_ENABLED))
const Fee_BlockPropertiesType_tst Fee_BlockProperties_st[FEE_NUM_BLOCKS] = {
#else
const Fee_Rb_BlockPropertiesType_tst Fee_Rb_BlockProperties_st[FEE_NUM_BLOCKS] = {
#endif
#else
#define FEE_START_SEC_VAR_INIT_UNSPECIFIED
#include "Fee_MemMap.h"
#if (defined(FEE_CFG_FEE1_ENABLED) && (TRUE == FEE_CFG_FEE1_ENABLED))
Fee_BlockPropertiesType_tst Fee_BlockProperties_st[FEE_NUM_BLOCKS] = {
#else
Fee_Rb_BlockPropertiesType_tst Fee_Rb_BlockProperties_st[FEE_NUM_BLOCKS] = {
#endif
#endif

             /* FeeRbBlockPersistentId,  StatusFlags,  BlkLength ,  FeeRbCallbackEnd    ,  FeeRbCallbackError  */
     /*   0 */{         0x089E         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_02                     */,
     /*   1 */{         0x099E         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_03                     */,
     /*   2 */{         0x0BD6         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_01                     */,
     /*   3 */{         0x0C1D         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_07                     */,
     /*   4 */{         0x0C37         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ValidityFlagsBlock                    */,
     /*   5 */{         0x0D1D         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_06                     */,
     /*   6 */{         0x0E9C         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_05                     */,
     /*   7 */{         0x0F9C         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_04                     */,
     /*   8 */{         0x1090         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_09                     */,
     /*   9 */{         0x1190         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_08                     */,
     /*  10 */{         0x1D2E         ,   0x0100   ,   0x0010   ,NULL_PTR              ,NULL_PTR               } /* NvM_UDS_au8ESKData                       */,
     /*  11 */{         0x2098         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_00_FailureAttemptCnt_L1 */,
     /*  12 */{         0x23B9         ,   0x0100   ,   0x000A   ,NULL_PTR              ,NULL_PTR               } /* NV_FingerprintBlock                      */,
     /*  13 */{         0x4AAF         ,   0x0100   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* NV_ProgrammingCounterBlock               */,
     /*  14 */{         0x4D1D         ,   0x0100   ,   0x0080   ,NULL_PTR              ,NULL_PTR               } /* NvMBlock_LogisticData                    */,
     /*  15 */{         0x5033         ,   0x0100   ,   0x0080   ,NULL_PTR              ,NULL_PTR               } /* NvM_UDS_au8WrDidTable                    */,
     /*  16 */{         0x523E         ,   0x0100   ,   0x0032   ,NULL_PTR              ,NULL_PTR               } /* NvM_RCVoltageGain                        */,
     /*  17 */{         0x5502         ,   0x0100   ,   0x0008   ,NULL_PTR              ,NULL_PTR               } /* NV_CrcBlock                              */,
     /*  18 */{         0x722A         ,   0x0100   ,   0x0008   ,NULL_PTR              ,NULL_PTR               } /* NVM_BlockRunTime                         */,
     /*  19 */{         0x7FBE         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ExternalReprogrammingRequestFlagBlock */,
     /*  20 */{         0x99E9         ,   0x0101   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* NvMBlockDescriptor_ECUConfiguration      */,
     /*  21 */{         0xA6AF         ,   0x0101   ,   0x0064   ,NULL_PTR              ,NULL_PTR               } /* NvM_NativeBlock_2                        */,
     /*  22 */{         0xB6F5         ,   0x0100   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* NV_ProgrammingAttemptCounterBlock        */,
     /*  23 */{         0xB7E3         ,   0x0100   ,   0x0002   ,NULL_PTR              ,NULL_PTR               } /* NvM_NTC_Voltage_Calibration              */,
     /*  24 */{         0xE859         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ResetResponseFlagBlock                */,
     /*  25 */{         0xF443         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NvM_UDS_au8FailureAttemptCnt_L1          */,
};

#if (FEE_RB_USE_ROM_BLOCKTABLE == TRUE)
#define FEE_STOP_SEC_CONST_UNSPECIFIED
#include "Fee_MemMap.h"
#else
#define FEE_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "Fee_MemMap.h"
#endif

#define FEE_START_SEC_CONST_UNSPECIFIED
#include "Fee_MemMap.h"
/* Linked functions of the Fee */
const Fee_LinkedFunctions_tst Fee_LinkedFunctions_cst = 
{
    NULL_PTR
};
#define FEE_STOP_SEC_CONST_UNSPECIFIED
#include "Fee_MemMap.h"



