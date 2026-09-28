

#include "Fee.h"
#include "Fee_Cfg.h"
#include "Fee_Prv.h"
#include "NvM_Prv_SizeRamMirror.h" 



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
     /*   0 */{         0x0230         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_4                       */,
     /*   1 */{         0x03B1         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_5                       */,
     /*   2 */{         0x089E         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_02                     */,
     /*   3 */{         0x099E         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_03                     */,
     /*   4 */{         0x0BD6         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_01                     */,
     /*   5 */{         0x0C1D         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_07                     */,
     /*   6 */{         0x0C37         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ValidityFlagsBlock                    */,
     /*   7 */{         0x0D1D         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_06                     */,
     /*   8 */{         0x0E9C         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_05                     */,
     /*   9 */{         0x0F9C         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_04                     */,
     /*  10 */{         0x103A         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_7                       */,
     /*  11 */{         0x1090         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_09                     */,
     /*  12 */{         0x1190         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_08                     */,
     /*  13 */{         0x11BB         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_6                       */,
     /*  14 */{         0x16F6         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_8                   */,
     /*  15 */{         0x1777         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_9                   */,
     /*  16 */{         0x1D2E         ,   0x0100   ,   0x0010   ,NULL_PTR              ,NULL_PTR               } /* NvM_UDS_au8ESKData                       */,
     /*  17 */{         0x2098         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ReserveForBoot_00_FailureAttemptCnt_L1 */,
     /*  18 */{         0x23B9         ,   0x0100   ,   0x000A   ,NULL_PTR              ,NULL_PTR               } /* NV_FingerprintBlock                      */,
     /*  19 */{         0x24A7         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_1                       */,
     /*  20 */{         0x2526         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_0                       */,
     /*  21 */{         0x36AD         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_2                       */,
     /*  22 */{         0x372C         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_3                       */,
     /*  23 */{         0x3836         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(rba_DemObdBasic_DtrDataType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_OBD_DTR_DATA                      */,
     /*  24 */{         0x48D4         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_3                   */,
     /*  25 */{         0x4955         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_2                   */,
     /*  26 */{         0x4AA1         ,   0x0100   ,  ( DEM_SIZEOF_VAR(Dem_GenericNvData) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_DEM_GENERIC_NV_DATA               */,
     /*  27 */{         0x4AAF         ,   0x0100   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* NV_ProgrammingCounterBlock               */,
     /*  28 */{         0x4D1D         ,   0x0100   ,   0x0080   ,NULL_PTR              ,NULL_PTR               } /* NvMBlock_LogisticData                    */,
     /*  29 */{         0x5033         ,   0x0100   ,   0x0080   ,NULL_PTR              ,NULL_PTR               } /* NvM_UDS_au8WrDidTable                    */,
     /*  30 */{         0x5106         ,   0x0100   ,  ( DEM_SIZEOF_VAR(Dem_AllEventsStatusByte) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVT_STATUSBYTE                    */,
     /*  31 */{         0x523E         ,   0x0100   ,   0x0032   ,NULL_PTR              ,NULL_PTR               } /* NvM_RCVoltageGain                        */,
     /*  32 */{         0x540E         ,   0x0100   ,   0x0010   ,NULL_PTR              ,NULL_PTR               } /* NvM_ShutdownStatusBlock                  */,
     /*  33 */{         0x5502         ,   0x0100   ,   0x0008   ,NULL_PTR              ,NULL_PTR               } /* NV_CrcBlock                              */,
     /*  34 */{         0x5A5F         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_0                   */,
     /*  35 */{         0x5BDE         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_1                   */,
     /*  36 */{         0x6493         ,   0x0100   ,  ( DEM_SIZEOF_VAR(Dem_AllEventsIndicatorState) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_INDICATOR_ATTRIBUTES              */,
     /*  37 */{         0x6A8B         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_9                       */,
     /*  38 */{         0x6B0A         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_8                       */,
     /*  39 */{         0x6EC0         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_7                   */,
     /*  40 */{         0x6F41         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_6                   */,
     /*  41 */{         0x722A         ,   0x0100   ,   0x0008   ,NULL_PTR              ,NULL_PTR               } /* NVM_BlockRunTime                         */,
     /*  42 */{         0x7C4B         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_4                   */,
     /*  43 */{         0x7DCA         ,   0x0100   ,   0x00C8   ,NULL_PTR              ,NULL_PTR               } /* NvM_ResetLogNvMEntry_5                   */,
     /*  44 */{         0x7FBE         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ExternalReprogrammingRequestFlagBlock */,
     /*  45 */{         0x86EB         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_10                      */,
     /*  46 */{         0x9362         ,   0x0100   ,  ( DEM_SIZEOF_VAR(rba_DemObdBasic_PdtcMem) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_OBD_PERMANENT_MEMORY              */,
     /*  47 */{         0x97E3         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_11                      */,
     /*  48 */{         0x99E9         ,   0x0101   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* NvMBlockDescriptor_ECUConfiguration      */,
     /*  49 */{         0xA47A         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_12                      */,
     /*  50 */{         0xA6AF         ,   0x0101   ,   0x0064   ,NULL_PTR              ,NULL_PTR               } /* NvM_NativeBlock_2                        */,
     /*  51 */{         0xB572         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_13                      */,
     /*  52 */{         0xB6F5         ,   0x0100   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* NV_ProgrammingAttemptCounterBlock        */,
     /*  53 */{         0xC248         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_15                      */,
     /*  54 */{         0xD340         ,   0x0100   ,  ( DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0)   ,NULL_PTR              ,NULL_PTR               } /* NVM_ID_EVMEM_LOC_14                      */,
     /*  55 */{         0xE859         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NV_ResetResponseFlagBlock                */,
     /*  56 */{         0xF2F7         ,   0x0100   ,   0x0004   ,NULL_PTR              ,NULL_PTR               } /* ECUM_CFG_NVM_BLOCK                       */,
     /*  57 */{         0xF443         ,   0x0100   ,   0x0001   ,NULL_PTR              ,NULL_PTR               } /* NvM_UDS_au8FailureAttemptCnt_L1          */,
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



