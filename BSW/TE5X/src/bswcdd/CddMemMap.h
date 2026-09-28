/*----------------------------------------------------------------------------*/
/************** *SAMPLE* of MemMap.h. Not for production purposes *************/
/*----------------------------------------------------------------------------*/
#define MEM_VENDOR_ID        (11U)
#define MEM_AR_MAJOR_VERSION (4U)
#define MEM_AR_MINOR_VERSION (0U)
#define MEM_AR_PATCH_VERSION (3U)
#define MEM_SW_MAJOR_VERSION (5U)
#define MEM_SW_MINOR_VERSION (6U)
#define MEM_SW_PATCH_VERSION (3U)

/* -------------------------------------------------------------------------- */
/*             OS (Operating System)                                          */
/* -------------------------------------------------------------------------- */
//#include <Os_MemMap.h>

/*******************************************************************************
**                      Default section mapping                               **
*******************************************************************************/


#if defined (START_WITH_IF)
/* -------------------------------------------------------------------------- */
/* RAM variables not initialized                                              */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_NOINIT_BOOLEAN)
  #undef      DEFAULT_START_SEC_VAR_NOINIT_BOOLEAN
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_BOOLEAN)
  #undef      DEFAULT_STOP_SEC_VAR_NOINIT_BOOLEAN

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_8BIT)
  #undef      DEFAULT_START_SEC_VAR_NOINIT_8BIT
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_8BIT)
  #undef      DEFAULT_STOP_SEC_VAR_NOINIT_8BIT

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_16BIT)
  #undef      DEFAULT_START_SEC_VAR_NOINIT_16BIT
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_16BIT)
  #undef      DEFAULT_STOP_SEC_VAR_NOINIT_16BIT

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_32BIT)
  #undef      DEFAULT_START_SEC_VAR_NOINIT_32BIT
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_32BIT)
  #undef      DEFAULT_STOP_SEC_VAR_NOINIT_32BIT

#elif defined (DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_VAR_NOINIT_UNSPECIFIED
#elif defined (DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_VAR_NOINIT_UNSPECIFIED

/* -------------------------------------------------------------------------- */
/* RAM variables power-on initialized                                         */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_POWER_ON_INIT_BOOLEAN)
  #undef      DEFAULT_START_SEC_VAR_POWER_ON_INIT_BOOLEAN
#elif defined (DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_BOOLEAN)
  #undef      DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_BOOLEAN

#elif defined (DEFAULT_START_SEC_VAR_POWER_ON_INIT_8BIT)
  #undef      DEFAULT_START_SEC_VAR_POWER_ON_INIT_8BIT
#elif defined (DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_8BIT)
  #undef      DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_8BIT

#elif defined (DEFAULT_START_SEC_VAR_POWER_ON_INIT_16BIT)
  #undef      DEFAULT_START_SEC_VAR_POWER_ON_INIT_16BIT
#elif defined (DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_16BIT)
  #undef      DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_16BIT

#elif defined (DEFAULT_START_SEC_VAR_POWER_ON_INIT_32BIT)
  #undef      DEFAULT_START_SEC_VAR_POWER_ON_INIT_32BIT
#elif defined (DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_32BIT)
  #undef      DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_32BIT

#elif defined (DEFAULT_START_SEC_VAR_POWER_ON_INIT_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_VAR_POWER_ON_INIT_UNSPECIFIED
#elif defined (DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_VAR_POWER_ON_INIT_UNSPECIFIED

#elif defined (DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED
  #ifdef __TASKING__
    #pragma section farbss="DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED"
  #elif defined __GNUC__   
    #pragma  section ".bss.DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED"
  #elif defined _DIABDATA_C_TRICORE_
  #endif

#elif defined (DEFAULT_STOP_SEC_VAR_NO_INIT_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
   #ifdef __TASKING__
    #pragma section farbss restore
   #elif defined __GNUC__    
    #pragma  section
   #elif defined _DIABDATA_C_TRICORE_
   #endif

/* -------------------------------------------------------------------------- */
/* RAM variables initialized from ROM on reset                                */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_BOOLEAN)
  #undef      DEFAULT_START_SEC_VAR_BOOLEAN
#elif defined (DEFAULT_STOP_SEC_VAR_BOOLEAN)
  #undef      DEFAULT_STOP_SEC_VAR_BOOLEAN

#elif defined (DEFAULT_START_SEC_VAR_8BIT)
  #undef      DEFAULT_START_SEC_VAR_8BIT
#elif defined (DEFAULT_STOP_SEC_VAR_8BIT)
  #undef      DEFAULT_STOP_SEC_VAR_8BIT

#elif defined (DEFAULT_START_SEC_VAR_16BIT)
  #undef      DEFAULT_START_SEC_VAR_16BIT
#elif defined (DEFAULT_STOP_SEC_VAR_16BIT)
  #undef      DEFAULT_STOP_SEC_VAR_16BIT

#elif defined (DEFAULT_START_SEC_VAR_32BIT)
  #undef      DEFAULT_START_SEC_VAR_32BIT
#elif defined (DEFAULT_STOP_SEC_VAR_32BIT)
  #undef      DEFAULT_STOP_SEC_VAR_32BIT

#elif defined (DEFAULT_START_SEC_VAR_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_VAR_UNSPECIFIED
#elif defined (DEFAULT_STOP_SEC_VAR_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_VAR_UNSPECIFIED

#elif defined CDD_START_SEC_VAR_INIT_CORE0_UNSPECIFIED
   #pragma section "CddInitData.Cpu0.Unspecified" aw
   #undef  CDD_START_SEC_VAR_INIT_CORE0_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_INIT_CORE0_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE0_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_INIT_CORE0_BOOLEAN
   #pragma section "CddInitData.Cpu0.bool" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE0_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_INIT_CORE0_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE0_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_INIT_CORE0_8
   #pragma section "CddInitData.Cpu0.8bit" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE0_8
#elif defined CDD_STOP_SEC_VAR_INIT_CORE0_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE0_8
   
#elif defined CDD_START_SEC_VAR_INIT_CORE0_16
   #pragma section "CddInitData.Cpu0.16bit" aw 2
   #undef  CDD_START_SEC_VAR_INIT_CORE0_16
#elif defined CDD_STOP_SEC_VAR_INIT_CORE0_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE0_16
   
#elif defined CDD_START_SEC_VAR_INIT_CORE0_32
   #pragma section "CddInitData.Cpu0.32bit" aw 4
   #undef  CDD_START_SEC_VAR_INIT_CORE0_32
#elif defined CDD_STOP_SEC_VAR_INIT_CORE0_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE0_32
   
#elif defined CDD_START_SEC_VAR_INIT_CORE1_UNSPECIFIED
   #pragma section "CddInitData.Cpu1.Unspecified" aw
   #undef  CDD_START_SEC_VAR_INIT_CORE1_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_INIT_CORE1_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE1_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_INIT_CORE1_BOOLEAN
   #pragma section "CddInitData.Cpu1.bool" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE1_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_INIT_CORE1_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE1_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_INIT_CORE1_8
   #pragma section "CddInitData.Cpu1.8bit" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE1_8
#elif defined CDD_STOP_SEC_VAR_INIT_CORE1_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE1_8
   
#elif defined CDD_START_SEC_VAR_INIT_CORE1_16
   #pragma section "CddInitData.Cpu1.16bit" aw 2
   #undef  CDD_START_SEC_VAR_INIT_CORE1_16
#elif defined CDD_STOP_SEC_VAR_INIT_CORE1_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE1_16
   
#elif defined CDD_START_SEC_VAR_INIT_CORE1_32
   #pragma section "CddInitData.Cpu1.32bit" aw 4
   #undef  CDD_START_SEC_VAR_INIT_CORE1_32
#elif defined CDD_STOP_SEC_VAR_INIT_CORE1_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE1_32
   
#elif defined CDD_START_SEC_VAR_INIT_CORE2_UNSPECIFIED
   #pragma section "CddInitData.Cpu2.Unspecified" aw
   #undef  CDD_START_SEC_VAR_INIT_CORE2_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_INIT_CORE2_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE2_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_INIT_CORE2_BOOLEAN
   #pragma section "CddInitData.Cpu2.bool" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE2_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_INIT_CORE2_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE2_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_INIT_CORE2_8
   #pragma section "CddInitData.Cpu2.8bit" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE2_8
#elif defined CDD_STOP_SEC_VAR_INIT_CORE2_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE2_8
   
#elif defined CDD_START_SEC_VAR_INIT_CORE2_16
   #pragma section "CddInitData.Cpu2.16bit" aw 2
   #undef  CDD_START_SEC_VAR_INIT_CORE2_16
#elif defined CDD_STOP_SEC_VAR_INIT_CORE2_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE2_16
   
#elif defined CDD_START_SEC_VAR_INIT_CORE2_32
   #pragma section "CddInitData.Cpu2.32bit" aw 4
   #undef  CDD_START_SEC_VAR_INIT_CORE2_32
#elif defined CDD_STOP_SEC_VAR_INIT_CORE2_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE2_32
   
#elif defined CDD_START_SEC_VAR_INIT_CORE3_UNSPECIFIED
   #pragma section "CddInitData.Cpu3.Unspecified" aw
   #undef  CDD_START_SEC_VAR_INIT_CORE3_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_INIT_CORE3_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE3_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_INIT_CORE3_BOOLEAN
   #pragma section "CddInitData.Cpu3.bool" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE3_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_INIT_CORE3_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE3_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_INIT_CORE3_8
   #pragma section "CddInitData.Cpu3.8bit" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE3_8
#elif defined CDD_STOP_SEC_VAR_INIT_CORE3_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE3_8
   
#elif defined CDD_START_SEC_VAR_INIT_CORE3_16
   #pragma section "CddInitData.Cpu3.16bit" aw 2
   #undef  CDD_START_SEC_VAR_INIT_CORE3_16
#elif defined CDD_STOP_SEC_VAR_INIT_CORE3_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE3_16
   
#elif defined CDD_START_SEC_VAR_INIT_CORE3_32
   #pragma section "CddInitData.Cpu3.32bit" aw 4
   #undef  CDD_START_SEC_VAR_INIT_CORE3_32
#elif defined CDD_STOP_SEC_VAR_INIT_CORE3_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE3_32
   
#elif defined CDD_START_SEC_VAR_INIT_CORE4_UNSPECIFIED
   #pragma section "CddInitData.Cpu4.Unspecified" aw
   #undef  CDD_START_SEC_VAR_INIT_CORE4_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_INIT_CORE4_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE4_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_INIT_CORE4_BOOLEAN
   #pragma section "CddInitData.Cpu4.bool" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE4_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_INIT_CORE4_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE4_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_INIT_CORE4_8
   #pragma section "CddInitData.Cpu4.8bit" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE4_8
#elif defined CDD_STOP_SEC_VAR_INIT_CORE4_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE4_8
   
#elif defined CDD_START_SEC_VAR_INIT_CORE4_16
   #pragma section "CddInitData.Cpu4.16bit" aw 2
   #undef  CDD_START_SEC_VAR_INIT_CORE4_16
#elif defined CDD_STOP_SEC_VAR_INIT_CORE4_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE4_16
   
#elif defined CDD_START_SEC_VAR_INIT_CORE4_32
   #pragma section "CddInitData.Cpu4.32bit" aw 4
   #undef  CDD_START_SEC_VAR_INIT_CORE4_32
#elif defined CDD_STOP_SEC_VAR_INIT_CORE4_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE4_32
   
#elif defined CDD_START_SEC_VAR_INIT_CORE5_UNSPECIFIED
   #pragma section "CddInitData.Cpu5.Unspecified" aw
   #undef  CDD_START_SEC_VAR_INIT_CORE5_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_INIT_CORE5_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE5_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_INIT_CORE5_BOOLEAN
   #pragma section "CddInitData.Cpu5.bool" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE5_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_INIT_CORE5_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE5_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_INIT_CORE5_8
   #pragma section "CddInitData.Cpu5.8bit" aw 1
   #undef  CDD_START_SEC_VAR_INIT_CORE5_8
#elif defined CDD_STOP_SEC_VAR_INIT_CORE5_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE5_8
   
#elif defined CDD_START_SEC_VAR_INIT_CORE5_16
   #pragma section "CddInitData.Cpu5.16bit" aw 2
   #undef  CDD_START_SEC_VAR_INIT_CORE5_16
#elif defined CDD_STOP_SEC_VAR_INIT_CORE5_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE5_16
   
#elif defined CDD_START_SEC_VAR_INIT_CORE5_32
   #pragma section "CddInitData.Cpu5.32bit" aw 4
   #undef  CDD_START_SEC_VAR_INIT_CORE5_32
#elif defined CDD_STOP_SEC_VAR_INIT_CORE5_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_INIT_CORE5_32

/* -------------------------------------------------------------------------- */
/* RAM variables cleared on reset                                             */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_CLEARED_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_VAR_CLEARED_UNSPECIFIED
   #ifdef __TASKING__
    #pragma section farbss=".DEFAULT_VAR_CLEARED_UNSPECIFIED"
   #elif defined __GNUC__
       #pragma section ".bss.DEFAULT_VAR_CLEARED_UNSPECIFIED"
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined (DEFAULT_STOP_SEC_VAR_CLEARED_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_VAR_CLEARED_UNSPECIFIED
   #ifdef __TASKING__
    #pragma section farbss restore
   #elif defined __GNUC__
       #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif

#elif defined CDD_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
   #pragma section "CddClearedData.Cpu0.Unspecified" aw
   #undef  CDD_START_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE0_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE0_BOOLEAN
   #pragma section "CddClearedData.Cpu0.bool" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE0_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE0_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE0_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE0_8
   #pragma section "CddClearedData.Cpu0.8bit" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE0_8
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE0_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE0_8
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE0_16
   #pragma section "CddClearedData.Cpu0.16bit" aw 2
   #undef  CDD_START_SEC_VAR_CLEARED_CORE0_16
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE0_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE0_16
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE0_32
   #pragma section "CddClearedData.Cpu0.32bit" aw 4
   #undef  CDD_START_SEC_VAR_CLEARED_CORE0_32
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE0_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE0_32
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE1_UNSPECIFIED
   #pragma section "CddClearedData.Cpu1.Unspecified" aw
   #undef  CDD_START_SEC_VAR_CLEARED_CORE1_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE1_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE1_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE1_BOOLEAN
   #pragma section "CddClearedData.Cpu1.bool" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE1_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE1_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE1_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE1_8
   #pragma section "CddClearedData.Cpu1.8bit" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE1_8
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE1_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE1_8
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE1_16
   #pragma section "CddClearedData.Cpu1.16bit" aw 2
   #undef  CDD_START_SEC_VAR_CLEARED_CORE1_16
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE1_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE1_16
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE1_32
   #pragma section "CddClearedData.Cpu1.32bit" aw 4
   #undef  CDD_START_SEC_VAR_CLEARED_CORE1_32
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE1_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE1_32
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE2_UNSPECIFIED
   #pragma section "CddClearedData.Cpu2.Unspecified" aw
   #undef  CDD_START_SEC_VAR_CLEARED_CORE2_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE2_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE2_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE2_BOOLEAN
   #pragma section "CddClearedData.Cpu2.bool" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE2_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE2_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE2_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE2_8
   #pragma section "CddClearedData.Cpu2.8bit" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE2_8
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE2_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE2_8
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE2_16
   #pragma section "CddClearedData.Cpu2.16bit" aw 2
   #undef  CDD_START_SEC_VAR_CLEARED_CORE2_16
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE2_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE2_16
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE2_32
   #pragma section "CddClearedData.Cpu2.32bit" aw 4
   #undef  CDD_START_SEC_VAR_CLEARED_CORE2_32
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE2_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE2_32
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE3_UNSPECIFIED
   #pragma section "CddClearedData.Cpu3.Unspecified" aw
   #undef  CDD_START_SEC_VAR_CLEARED_CORE3_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE3_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE3_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE3_BOOLEAN
   #pragma section "CddClearedData.Cpu3.bool" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE3_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE3_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE3_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE3_8
   #pragma section "CddClearedData.Cpu3.8bit" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE3_8
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE3_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE3_8
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE3_16
   #pragma section "CddClearedData.Cpu3.16bit" aw 2
   #undef  CDD_START_SEC_VAR_CLEARED_CORE3_16
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE3_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE3_16
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE3_32
   #pragma section "CddClearedData.Cpu3.32bit" aw 4
   #undef  CDD_START_SEC_VAR_CLEARED_CORE3_32
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE3_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE3_32
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE4_UNSPECIFIED
   #pragma section "CddClearedData.Cpu4.Unspecified" aw
   #undef  CDD_START_SEC_VAR_CLEARED_CORE4_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE4_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE4_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE4_BOOLEAN
   #pragma section "CddClearedData.Cpu4.bool" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE4_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE4_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE4_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE4_8
   #pragma section "CddClearedData.Cpu4.8bit" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE4_8
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE4_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE4_8
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE4_16
   #pragma section "CddClearedData.Cpu4.16bit" aw 2
   #undef  CDD_START_SEC_VAR_CLEARED_CORE4_16
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE4_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE4_16
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE4_32
   #pragma section "CddClearedData.Cpu4.32bit" aw 4
   #undef  CDD_START_SEC_VAR_CLEARED_CORE4_32
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE4_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE4_32
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE5_UNSPECIFIED
   #pragma section "CddClearedData.Cpu5.Unspecified" aw
   #undef  CDD_START_SEC_VAR_CLEARED_CORE5_UNSPECIFIED
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE5_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE5_UNSPECIFIED
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE5_BOOLEAN
   #pragma section "CddClearedData.Cpu5.bool" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE5_BOOLEAN
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE5_BOOLEAN
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE5_BOOLEAN
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE5_8
   #pragma section "CddClearedData.Cpu5.8bit" aw 1
   #undef  CDD_START_SEC_VAR_CLEARED_CORE5_8
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE5_8
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE5_8
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE5_16
   #pragma section "CddClearedData.Cpu5.16bit" aw 2
   #undef  CDD_START_SEC_VAR_CLEARED_CORE5_16
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE5_16
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE5_16
   
#elif defined CDD_START_SEC_VAR_CLEARED_CORE5_32
   #pragma section "CddClearedData.Cpu5.32bit" aw 4
   #undef  CDD_START_SEC_VAR_CLEARED_CORE5_32
#elif defined CDD_STOP_SEC_VAR_CLEARED_CORE5_32
   #pragma section
   #undef  CDD_STOP_SEC_VAR_CLEARED_CORE5_32
   
/* -------------------------------------------------------------------------- */
/* PSRAM code initialized from ROM on reset                                   */
/* -------------------------------------------------------------------------- */
#elif defined   CDD_START_CODE_FAST_CPU0_SECTION
   #undef  CDD_START_CODE_FAST_CPU0_SECTION
   #pragma section ".cpu0_psram" axwc0
#elif defined   CDD_STOP_CODE_FAST_CPU0_SECTION
   #undef  CDD_STOP_CODE_FAST_CPU0_SECTION
   #pragma section

#elif defined   CDD_START_CODE_FAST_CPU1_SECTION
   #undef  CDD_START_CODE_FAST_CPU1_SECTION
   #pragma section ".cpu1_psram" axwc1
#elif defined   CDD_STOP_CODE_FAST_CPU1_SECTION
   #undef  CDD_STOP_CODE_FAST_CPU1_SECTION
   #pragma section

#elif defined   CDD_START_CODE_FAST_CPU2_SECTION
   #undef  CDD_START_CODE_FAST_CPU2_SECTION
   #pragma section ".cpu2_psram" axwc2
#elif defined   CDD_STOP_CODE_FAST_CPU2_SECTION
   #undef  CDD_STOP_CODE_FAST_CPU2_SECTION
   #pragma section

#elif defined   CDD_START_CODE_FAST_CPU3_SECTION
   #undef  CDD_START_CODE_FAST_CPU3_SECTION
   #pragma section ".cpu3_psram" axwc3
#elif defined   CDD_STOP_CODE_FAST_CPU3_SECTION
   #undef  CDD_STOP_CODE_FAST_CPU3_SECTION
   #pragma section
   
#elif defined   CDD_START_CODE_FAST_CPU4_SECTION
   #undef  CDD_START_CODE_FAST_CPU4_SECTION
   #pragma section ".cpu4_psram" axwc4
#elif defined   CDD_STOP_CODE_FAST_CPU4_SECTION
   #undef  CDD_STOP_CODE_FAST_CPU4_SECTION
   #pragma section

#elif defined   CDD_START_CODE_FAST_CPU5_SECTION
   #undef  CDD_START_CODE_FAST_CPU5_SECTION
   #pragma section ".cpu5_psram" axwc5
#elif defined   CDD_STOP_CODE_FAST_CPU5_SECTION
   #undef  CDD_STOP_CODE_FAST_CPU5_SECTION
   #pragma section

/* -------------------------------------------------------------------------- */
/* ROM code                                                                   */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_CODE)
  #undef      DEFAULT_START_SEC_CODE
#elif defined (DEFAULT_STOP_SEC_CODE)
  #undef      DEFAULT_STOP_SEC_CODE

#elif defined (DEFAULT_START_SEC_CODE_FAST)
  #undef      DEFAULT_START_SEC_CODE_FAST
#elif defined (DEFAULT_STOP_SEC_CODE_FAST)
  #undef      DEFAULT_STOP_SEC_CODE_FAST

#elif defined (DEFAULT_START_SEC_CODE_SLOW)
  #undef      DEFAULT_START_SEC_CODE_SLOW
#elif defined (DEFAULT_STOP_SEC_CODE_SLOW)
  #undef      DEFAULT_STOP_SEC_CODE_SLOW

#elif defined (DEFAULT_START_SEC_CODE_LIB)
  #undef      DEFAULT_START_SEC_CODE_LIB
#elif defined (DEFAULT_STOP_SEC_CODE_LIB)
  #undef      DEFAULT_STOP_SEC_CODE_LIB

#elif defined (DEFAULT_START_SEC_VECTORS)
  #undef      DEFAULT_START_SEC_VECTORS
#elif defined (DEFAULT_STOP_SEC_VECTORS)
  #undef      DEFAULT_STOP_SEC_VECTORS

#elif defined CDD_START_CODE_CPU0_SECTION
   #pragma section "Code.Cpu0" ax
   #undef  CDD_START_CODE_CPU0_SECTION
#elif defined CDD_STOP_CODE_CPU0_SECTION
   #pragma section
   #undef  CDD_STOP_CODE_CPU0_SECTION

#elif defined CDD_START_CODE_CPU1_SECTION
   #pragma section "Code.Cpu1" ax
   #undef  CDD_START_CODE_CPU1_SECTION
#elif defined CDD_STOP_CODE_CPU1_SECTION
   #pragma section
   #undef  CDD_STOP_CODE_CPU1_SECTION

#elif defined CDD_START_CODE_CPU2_SECTION
   #pragma section "Code.Cpu2" ax
   #undef  CDD_START_CODE_CPU2_SECTION
#elif defined CDD_STOP_CODE_CPU2_SECTION
   #pragma section
   #undef  CDD_STOP_CODE_CPU2_SECTION

#elif defined CDD_START_CODE_CPU3_SECTION
   #pragma section "Code.Cpu3" ax
   #undef  CDD_START_CODE_CPU3_SECTION
#elif defined CDD_STOP_CODE_CPU3_SECTION
   #pragma section
   #undef  CDD_STOP_CODE_CPU3_SECTION

#elif defined CDD_START_CODE_CPU4_SECTION
   #pragma section "Code.Cpu4" ax
   #undef  CDD_START_CODE_CPU4_SECTION
#elif defined CDD_STOP_CODE_CPU4_SECTION
   #pragma section
   #undef  CDD_STOP_CODE_CPU4_SECTION

#elif defined CDD_START_CODE_CPU5_SECTION
   #pragma section "Code.Cpu5" ax
   #undef  CDD_START_CODE_CPU5_SECTION
#elif defined CDD_STOP_CODE_CPU5_SECTION
   #pragma section
   #undef  CDD_STOP_CODE_CPU5_SECTION

/* -------------------------------------------------------------------------- */
/* Calib section initialized from ROM on reset                                */
/* -------------------------------------------------------------------------- */
#elif defined CDD_CALIB_START_SEC_CONST_UNSPECIFIED
   #undef  CDD_CALIB_START_SEC_CONST_UNSPECIFIED
   #ifdef __TASKING__
      #pragma section farrom="Calib_unspec"
      #pragma align 4
   #elif defined _GNU_C_TRICORE_
      #pragma section ".rodata.Calib_unspec" a 4
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_STOP_SEC_CONST_UNSPECIFIED
    #undef CDD_CALIB_STOP_SEC_CONST_UNSPECIFIED
   #ifdef __TASKING__
    #pragma align restore
    #pragma section farrom restore
   #elif defined _GNU_C_TRICORE_
      #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif

#elif defined CDD_CALIB_START_SEC_CONST_BOOL
   #undef  CDD_CALIB_START_SEC_CONST_BOOL
   #ifdef __TASKING__
      #pragma section farrom="Calib_bool"
      #pragma align 1
   #elif defined _GNU_C_TRICORE_
      #pragma section ".rodata.Calib_bool" a 1
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_STOP_SEC_CONST_BOOL
    #undef CDD_CALIB_STOP_SEC_CONST_BOOL
   #ifdef __TASKING__
    #pragma align restore
    #pragma section farrom restore
   #elif defined _GNU_C_TRICORE_
      #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_START_SEC_CONST_8
   #undef  CDD_CALIB_START_SEC_CONST_8
   #ifdef __TASKING__
      #pragma section farrom="Calib_8"
      #pragma align 1
   #elif defined _GNU_C_TRICORE_
      #pragma section ".rodata.Calib_8" a 1
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_STOP_SEC_CONST_8
   #undef CDD_CALIB_STOP_SEC_CONST_8
   #ifdef __TASKING__
      #pragma align restore
      #pragma section farrom restore
   #elif defined _GNU_C_TRICORE_
      #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_START_SEC_CONST_16
   #undef  CDD_CALIB_START_SEC_CONST_16
   #ifdef __TASKING__
      #pragma section farrom="Calib_16"
      #pragma align 2
   #elif defined _GNU_C_TRICORE_
      #pragma section ".rodata.Calib_16" a 2
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_STOP_SEC_CONST_16
   #undef CDD_CALIB_STOP_SEC_CONST_16
   #ifdef __TASKING__
      #pragma align restore
      #pragma section farrom restore
   #elif defined _GNU_C_TRICORE_
      #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_START_SEC_CONST_32
   #undef  CDD_CALIB_START_SEC_CONST_32
   #ifdef __TASKING__
      #pragma section farrom="Calib_32"
      #pragma align 4
   #elif defined _GNU_C_TRICORE_
    #pragma section ".rodata.Calib_32" a 4
   #elif defined _DIABDATA_C_TRICORE_
   #endif
#elif defined CDD_CALIB_STOP_SEC_CONST_32
   #undef  CDD_CALIB_STOP_SEC_CONST_32
   #ifdef __TASKING__
      #pragma align restore
      #pragma section farrom restore
   #elif defined _GNU_C_TRICORE_
    #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif

/* -------------------------------------------------------------------------- */
/* ROM constants                                                              */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_CONST_BOOLEAN)
  #undef      DEFAULT_START_SEC_CONST_BOOLEAN
#elif defined (DEFAULT_STOP_SEC_CONST_BOOLEAN)
  #undef      DEFAULT_STOP_SEC_CONST_BOOLEAN

#elif defined (DEFAULT_START_SEC_CONST_8BIT)
  #undef      DEFAULT_START_SEC_CONST_8BIT
#elif defined (DEFAULT_STOP_SEC_CONST_8BIT)
  #undef      DEFAULT_STOP_SEC_CONST_8BIT

#elif defined (DEFAULT_START_SEC_CONST_16BIT)
  #undef      DEFAULT_START_SEC_CONST_16BIT
#elif defined (DEFAULT_STOP_SEC_CONST_16BIT)
  #undef      DEFAULT_STOP_SEC_CONST_16BIT

#elif defined (DEFAULT_START_SEC_CONST_32BIT)
  #undef      DEFAULT_START_SEC_CONST_32BIT
#elif defined (DEFAULT_STOP_SEC_CONST_32BIT)
  #undef      DEFAULT_STOP_SEC_CONST_32BIT

#elif defined (DEFAULT_START_SEC_CONST_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_CONST_UNSPECIFIED
   #ifdef __TASKING__
      #pragma section farrom=".DEFAULT_CONST_UNSPECIFIED"
      #pragma align 4
   #elif defined __GNUC__
      #pragma section ".rodata.DEFAULT_CONST_UNSPECIFIED"
   #elif defined _DIABDATA_C_TRICORE_
   #endif

#elif defined (DEFAULT_STOP_SEC_CONST_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_CONST_UNSPECIFIED
   #ifdef __TASKING__
      #pragma align restore
      #pragma section farrom restore
   #elif defined __GNUC__
      #pragma section
   #elif defined _DIABDATA_C_TRICORE_
   #endif

/* -------------------------------------------------------------------------- */
/* ROM constants Data                                                         */
/* -------------------------------------------------------------------------- */
#elif defined CDD_START_CONST_CPU0_SECTION_UNSPECIFIED
   #pragma section  "CddConst.Cpu0.Unspecified" a 4
   #undef  CDD_START_CONST_CPU0_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONST_CPU0_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONST_CPU0_SECTION_UNSPECIFIED

#elif defined CDD_START_CONST_CPU0_SECTION_BOOL
   #pragma section  "CddConst.Cpu0.bool" a 1
   #undef  CDD_START_CONST_CPU0_SECTION_BOOL
#elif defined CDD_STOP_CONST_CPU0_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONST_CPU0_SECTION_BOOL

#elif defined CDD_START_CONST_CPU0_SECTION_8
   #pragma section  "CddConst.Cpu0.8bit" a 1
   #undef  CDD_START_CONST_CPU0_SECTION_8
#elif defined CDD_STOP_CONST_CPU0_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONST_CPU0_SECTION_8

#elif defined CDD_START_CONST_CPU0_SECTION_16
   #pragma section  "CddConst.Cpu0.16bit" a 2
   #undef  CDD_START_CONST_CPU0_SECTION_16
#elif defined CDD_STOP_CONST_CPU0_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONST_CPU0_SECTION_16

#elif defined CDD_START_CONST_CPU0_SECTION_32
   #pragma section  "CddConst.Cpu0.32bit" a 4
   #undef  CDD_START_CONST_CPU0_SECTION_32
#elif defined CDD_STOP_CONST_CPU0_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONST_CPU0_SECTION_32

#elif defined CDD_START_CONST_CPU1_SECTION_UNSPECIFIED
   #pragma section  "CddConst.Cpu1.Unspecified" a 4
   #undef  CDD_START_CONST_CPU1_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONST_CPU1_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONST_CPU1_SECTION_UNSPECIFIED

#elif defined CDD_START_CONST_CPU1_SECTION_BOOL
   #pragma section  "CddConst.Cpu1.bool" a 1
   #undef  CDD_START_CONST_CPU1_SECTION_BOOL
#elif defined CDD_STOP_CONST_CPU1_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONST_CPU1_SECTION_BOOL

#elif defined CDD_START_CONST_CPU1_SECTION_8
   #pragma section  "CddConst.Cpu1.8bit" a 1
   #undef  CDD_START_CONST_CPU1_SECTION_8
#elif defined CDD_STOP_CONST_CPU1_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONST_CPU1_SECTION_8

#elif defined CDD_START_CONST_CPU1_SECTION_16
   #pragma section  "CddConst.Cpu1.16bit" a 2
   #undef  CDD_START_CONST_CPU1_SECTION_16
#elif defined CDD_STOP_CONST_CPU1_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONST_CPU1_SECTION_16

#elif defined CDD_START_CONST_CPU1_SECTION_32
   #pragma section  "CddConst.Cpu1.32bit" a 4
   #undef  CDD_START_CONST_CPU1_SECTION_32
#elif defined CDD_STOP_CONST_CPU1_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONST_CPU1_SECTION_32

#elif defined CDD_START_CONST_CPU2_SECTION_UNSPECIFIED
   #pragma section  "CddConst.Cpu2.Unspecified" a 4
   #undef  CDD_START_CONST_CPU2_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONST_CPU2_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONST_CPU2_SECTION_UNSPECIFIED

#elif defined CDD_START_CONST_CPU2_SECTION_BOOL
   #pragma section  "CddConst.Cpu2.bool" a 1
   #undef  CDD_START_CONST_CPU2_SECTION_BOOL
#elif defined CDD_STOP_CONST_CPU2_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONST_CPU2_SECTION_BOOL

#elif defined CDD_START_CONST_CPU2_SECTION_8
   #pragma section  "CddConst.Cpu2.8bit" a 1
   #undef  CDD_START_CONST_CPU2_SECTION_8
#elif defined CDD_STOP_CONST_CPU2_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONST_CPU2_SECTION_8

#elif defined CDD_START_CONST_CPU2_SECTION_16
   #pragma section  "CddConst.Cpu2.16bit" a 2
   #undef  CDD_START_CONST_CPU2_SECTION_16
#elif defined CDD_STOP_CONST_CPU2_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONST_CPU2_SECTION_16

#elif defined CDD_START_CONST_CPU2_SECTION_32
   #pragma section  "CddConst.Cpu2.32bit" a 4
   #undef  CDD_START_CONST_CPU2_SECTION_32
#elif defined CDD_STOP_CONST_CPU2_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONST_CPU2_SECTION_32

#elif defined CDD_START_CONST_CPU3_SECTION_UNSPECIFIED
   #pragma section  "CddConst.Cpu3.Unspecified" a 4
   #undef  CDD_START_CONST_CPU3_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONST_CPU3_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONST_CPU3_SECTION_UNSPECIFIED

#elif defined CDD_START_CONST_CPU3_SECTION_BOOL
   #pragma section  "CddConst.Cpu3.bool" a 1
   #undef  CDD_START_CONST_CPU3_SECTION_BOOL
#elif defined CDD_STOP_CONST_CPU3_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONST_CPU3_SECTION_BOOL

#elif defined CDD_START_CONST_CPU3_SECTION_8
   #pragma section  "CddConst.Cpu3.8bit" a 1
   #undef  CDD_START_CONST_CPU3_SECTION_8
#elif defined CDD_STOP_CONST_CPU3_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONST_CPU3_SECTION_8

#elif defined CDD_START_CONST_CPU3_SECTION_16
   #pragma section  "CddConst.Cpu3.16bit" a 2
   #undef  CDD_START_CONST_CPU3_SECTION_16
#elif defined CDD_STOP_CONST_CPU3_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONST_CPU3_SECTION_16

#elif defined CDD_START_CONST_CPU3_SECTION_32
   #pragma section  "CddConst.Cpu3.32bit" a 4
   #undef  CDD_START_CONST_CPU3_SECTION_32
#elif defined CDD_STOP_CONST_CPU3_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONST_CPU3_SECTION_32

#elif defined CDD_START_CONST_CPU4_SECTION_UNSPECIFIED
   #pragma section  "CddConst.Cpu4.Unspecified" a 4
   #undef  CDD_START_CONST_CPU4_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONST_CPU4_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONST_CPU4_SECTION_UNSPECIFIED

#elif defined CDD_START_CONST_CPU4_SECTION_BOOL
   #pragma section  "CddConst.Cpu4.bool" a 1
   #undef  CDD_START_CONST_CPU4_SECTION_BOOL
#elif defined CDD_STOP_CONST_CPU4_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONST_CPU4_SECTION_BOOL

#elif defined CDD_START_CONST_CPU4_SECTION_8
   #pragma section  "CddConst.Cpu4.8bit" a 1
   #undef  CDD_START_CONST_CPU4_SECTION_8
#elif defined CDD_STOP_CONST_CPU4_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONST_CPU4_SECTION_8

#elif defined CDD_START_CONST_CPU4_SECTION_16
   #pragma section  "CddConst.Cpu4.16bit" a 2
   #undef  CDD_START_CONST_CPU4_SECTION_16
#elif defined CDD_STOP_CONST_CPU4_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONST_CPU4_SECTION_16

#elif defined CDD_START_CONST_CPU4_SECTION_32
   #pragma section  "CddConst.Cpu4.32bit" a 4
   #undef  CDD_START_CONST_CPU4_SECTION_32
#elif defined CDD_STOP_CONST_CPU4_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONST_CPU4_SECTION_32

#elif defined CDD_START_CONST_CPU5_SECTION_UNSPECIFIED
   #pragma section  "CddConst.Cpu5.Unspecified" a 4
   #undef  CDD_START_CONST_CPU5_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONST_CPU5_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONST_CPU5_SECTION_UNSPECIFIED

#elif defined CDD_START_CONST_CPU5_SECTION_BOOL
   #pragma section  "CddConst.Cpu5.bool" a 1
   #undef  CDD_START_CONST_CPU5_SECTION_BOOL
#elif defined CDD_STOP_CONST_CPU5_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONST_CPU5_SECTION_BOOL

#elif defined CDD_START_CONST_CPU5_SECTION_8
   #pragma section  "CddConst.Cpu5.8bit" a 1
   #undef  CDD_START_CONST_CPU5_SECTION_8
#elif defined CDD_STOP_CONST_CPU5_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONST_CPU5_SECTION_8

#elif defined CDD_START_CONST_CPU5_SECTION_16
   #pragma section  "CddConst.Cpu5.16bit" a 2
   #undef  CDD_START_CONST_CPU5_SECTION_16
#elif defined CDD_STOP_CONST_CPU5_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONST_CPU5_SECTION_16

#elif defined CDD_START_CONST_CPU5_SECTION_32
   #pragma section  "CddConst.Cpu5.32bit" a 4
   #undef  CDD_START_CONST_CPU5_SECTION_32
#elif defined CDD_STOP_CONST_CPU5_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONST_CPU5_SECTION_32

/* -------------------------------------------------------------------------- */
/* ROM constants config                                                       */
/* -------------------------------------------------------------------------- */
#elif defined CDD_START_CONFIG_CPU0_SECTION_UNSPECIFIED
   #pragma section  "CddConfig.Cpu0.Unspecified" a 4
   #undef  CDD_START_CONFIG_CPU0_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONFIG_CPU0_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU0_SECTION_UNSPECIFIED

#elif defined CDD_START_CONFIG_CPU0_SECTION_BOOL
   #pragma section  "CddConfig.Cpu0.bool" a 1
   #undef  CDD_START_CONFIG_CPU0_SECTION_BOOL
#elif defined CDD_STOP_CONFIG_CPU0_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU0_SECTION_BOOL

#elif defined CDD_START_CONFIG_CPU0_SECTION_8
   #pragma section  "CddConfig.Cpu0.8bit" a 1
   #undef  CDD_START_CONFIG_CPU0_SECTION_8
#elif defined CDD_STOP_CONFIG_CPU0_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU0_SECTION_8

#elif defined CDD_START_CONFIG_CPU0_SECTION_16
   #pragma section  "CddConfig.Cpu0.16bit" a 2
   #undef  CDD_START_CONFIG_CPU0_SECTION_16
#elif defined CDD_STOP_CONFIG_CPU0_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU0_SECTION_16

#elif defined CDD_START_CONFIG_CPU0_SECTION_32
   #pragma section  "CddConfig.Cpu0.32bit" a 4
   #undef  CDD_START_CONFIG_CPU0_SECTION_32
#elif defined CDD_STOP_CONFIG_CPU0_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU0_SECTION_32

#elif defined CDD_START_CONFIG_CPU1_SECTION_UNSPECIFIED
   #pragma section  "CddConfig.Cpu1.Unspecified" a 4
   #undef  CDD_START_CONFIG_CPU1_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONFIG_CPU1_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU1_SECTION_UNSPECIFIED

#elif defined CDD_START_CONFIG_CPU1_SECTION_BOOL
   #pragma section  "CddConfig.Cpu1.bool" a 1
   #undef  CDD_START_CONFIG_CPU1_SECTION_BOOL
#elif defined CDD_STOP_CONFIG_CPU1_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU1_SECTION_BOOL

#elif defined CDD_START_CONFIG_CPU1_SECTION_8
   #pragma section  "CddConfig.Cpu1.8bit" a 1
   #undef  CDD_START_CONFIG_CPU1_SECTION_8
#elif defined CDD_STOP_CONFIG_CPU1_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU1_SECTION_8

#elif defined CDD_START_CONFIG_CPU1_SECTION_16
   #pragma section  "CddConfig.Cpu1.16bit" a 2
   #undef  CDD_START_CONFIG_CPU1_SECTION_16
#elif defined CDD_STOP_CONFIG_CPU1_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU1_SECTION_16

#elif defined CDD_START_CONFIG_CPU1_SECTION_32
   #pragma section  "CddConfig.Cpu1.32bit" a 4
   #undef  CDD_START_CONFIG_CPU1_SECTION_32
#elif defined CDD_STOP_CONFIG_CPU1_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU1_SECTION_32

#elif defined CDD_START_CONFIG_CPU2_SECTION_UNSPECIFIED
   #pragma section  "CddConfig.Cpu2.Unspecified" a 4
   #undef  CDD_START_CONFIG_CPU2_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONFIG_CPU2_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU2_SECTION_UNSPECIFIED

#elif defined CDD_START_CONFIG_CPU2_SECTION_BOOL
   #pragma section  "CddConfig.Cpu2.bool" a 1
   #undef  CDD_START_CONFIG_CPU2_SECTION_BOOL
#elif defined CDD_STOP_CONFIG_CPU2_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU2_SECTION_BOOL

#elif defined CDD_START_CONFIG_CPU2_SECTION_8
   #pragma section  "CddConfig.Cpu2.8bit" a 1
   #undef  CDD_START_CONFIG_CPU2_SECTION_8
#elif defined CDD_STOP_CONFIG_CPU2_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU2_SECTION_8

#elif defined CDD_START_CONFIG_CPU2_SECTION_16
   #pragma section  "CddConfig.Cpu2.16bit" a 2
   #undef  CDD_START_CONFIG_CPU2_SECTION_16
#elif defined CDD_STOP_CONFIG_CPU2_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU2_SECTION_16

#elif defined CDD_START_CONFIG_CPU2_SECTION_32
   #pragma section  "CddConfig.Cpu2.32bit" a 4
   #undef  CDD_START_CONFIG_CPU2_SECTION_32
#elif defined CDD_STOP_CONFIG_CPU2_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU2_SECTION_32

#elif defined CDD_START_CONFIG_CPU3_SECTION_UNSPECIFIED
   #pragma section  "CddConfig.Cpu3.Unspecified" a 4
   #undef  CDD_START_CONFIG_CPU3_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONFIG_CPU3_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU3_SECTION_UNSPECIFIED

#elif defined CDD_START_CONFIG_CPU3_SECTION_BOOL
   #pragma section  "CddConfig.Cpu3.bool" a 1
   #undef  CDD_START_CONFIG_CPU3_SECTION_BOOL
#elif defined CDD_STOP_CONFIG_CPU3_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU3_SECTION_BOOL

#elif defined CDD_START_CONFIG_CPU3_SECTION_8
   #pragma section  "CddConfig.Cpu3.8bit" a 1
   #undef  CDD_START_CONFIG_CPU3_SECTION_8
#elif defined CDD_STOP_CONFIG_CPU3_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU3_SECTION_8

#elif defined CDD_START_CONFIG_CPU3_SECTION_16
   #pragma section  "CddConfig.Cpu3.16bit" a 2
   #undef  CDD_START_CONFIG_CPU3_SECTION_16
#elif defined CDD_STOP_CONFIG_CPU3_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU3_SECTION_16

#elif defined CDD_START_CONFIG_CPU3_SECTION_32
   #pragma section  "CddConfig.Cpu3.32bit" a 4
   #undef  CDD_START_CONFIG_CPU3_SECTION_32
#elif defined CDD_STOP_CONFIG_CPU3_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU3_SECTION_32

#elif defined CDD_START_CONFIG_CPU4_SECTION_UNSPECIFIED
   #pragma section  "CddConfig.Cpu4.Unspecified" a 4
   #undef  CDD_START_CONFIG_CPU4_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONFIG_CPU4_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU4_SECTION_UNSPECIFIED

#elif defined CDD_START_CONFIG_CPU4_SECTION_BOOL
   #pragma section  "CddConfig.Cpu4.bool" a 1
   #undef  CDD_START_CONFIG_CPU4_SECTION_BOOL
#elif defined CDD_STOP_CONFIG_CPU4_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU4_SECTION_BOOL

#elif defined CDD_START_CONFIG_CPU4_SECTION_8
   #pragma section  "CddConfig.Cpu4.8bit" a 1
   #undef  CDD_START_CONFIG_CPU4_SECTION_8
#elif defined CDD_STOP_CONFIG_CPU4_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU4_SECTION_8

#elif defined CDD_START_CONFIG_CPU4_SECTION_16
   #pragma section  "CddConfig.Cpu4.16bit" a 2
   #undef  CDD_START_CONFIG_CPU4_SECTION_16
#elif defined CDD_STOP_CONFIG_CPU4_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU4_SECTION_16

#elif defined CDD_START_CONFIG_CPU4_SECTION_32
   #pragma section  "CddConfig.Cpu4.32bit" a 4
   #undef  CDD_START_CONFIG_CPU4_SECTION_32
#elif defined CDD_STOP_CONFIG_CPU4_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU4_SECTION_32

#elif defined CDD_START_CONFIG_CPU5_SECTION_UNSPECIFIED
   #pragma section  "CddConfig.Cpu5.Unspecified" a 4
   #undef  CDD_START_CONFIG_CPU5_SECTION_UNSPECIFIED
#elif defined CDD_STOP_CONFIG_CPU5_SECTION_UNSPECIFIED
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU5_SECTION_UNSPECIFIED

#elif defined CDD_START_CONFIG_CPU5_SECTION_BOOL
   #pragma section  "CddConfig.Cpu5.bool" a 1
   #undef  CDD_START_CONFIG_CPU5_SECTION_BOOL
#elif defined CDD_STOP_CONFIG_CPU5_SECTION_BOOL
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU5_SECTION_BOOL

#elif defined CDD_START_CONFIG_CPU5_SECTION_8
   #pragma section  "CddConfig.Cpu5.8bit" a 1
   #undef  CDD_START_CONFIG_CPU5_SECTION_8
#elif defined CDD_STOP_CONFIG_CPU5_SECTION_8
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU5_SECTION_8

#elif defined CDD_START_CONFIG_CPU5_SECTION_16
   #pragma section  "CddConfig.Cpu5.16bit" a 2
   #undef  CDD_START_CONFIG_CPU5_SECTION_16
#elif defined CDD_STOP_CONFIG_CPU5_SECTION_16
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU5_SECTION_16

#elif defined CDD_START_CONFIG_CPU5_SECTION_32
   #pragma section  "CddConfig.Cpu5.32bit" a 4
   #undef  CDD_START_CONFIG_CPU5_SECTION_32
#elif defined CDD_STOP_CONFIG_CPU5_SECTION_32
   #pragma section
   #undef  CDD_STOP_CONFIG_CPU5_SECTION_32

/* -------------------------------------------------------------------------- */
/* RAM variables frequently used or accessed bitwise                          */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_VAR_FAST_BOOLEAN)
  #undef      DEFAULT_START_SEC_VAR_FAST_BOOLEAN
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_BOOLEAN)
  #undef      DEFAULT_STOP_SEC_VAR_FAST_BOOLEAN

#elif defined (DEFAULT_START_SEC_VAR_FAST_8BIT)
  #undef      DEFAULT_START_SEC_VAR_FAST_8BIT
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_8BIT)
  #undef      DEFAULT_STOP_SEC_VAR_FAST_8BIT

#elif defined (DEFAULT_START_SEC_VAR_FAST_16BIT)
  #undef      DEFAULT_START_SEC_VAR_FAST_16BIT
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_16BIT)
  #undef      DEFAULT_STOP_SEC_VAR_FAST_16BIT

#elif defined (DEFAULT_START_SEC_VAR_FAST_32BIT)
  #undef      DEFAULT_START_SEC_VAR_FAST_32BIT
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_32BIT)
  #undef      DEFAULT_STOP_SEC_VAR_FAST_32BIT

#elif defined (DEFAULT_START_SEC_VAR_FAST_UNSPECIFIED)
  #undef      DEFAULT_START_SEC_VAR_FAST_UNSPECIFIED
#elif defined (DEFAULT_STOP_SEC_VAR_FAST_UNSPECIFIED)
  #undef      DEFAULT_STOP_SEC_VAR_FAST_UNSPECIFIED

/* -------------------------------------------------------------------------- */
/* ROM FAR constants                                                          */
/* -------------------------------------------------------------------------- */
#elif defined (DEFAULT_START_SEC_CONST_BOOLEAN_FAR)
  #undef      DEFAULT_START_SEC_CONST_BOOLEAN_FAR
#elif defined (DEFAULT_STOP_SEC_CONST_BOOLEAN_FAR)
  #undef      DEFAULT_STOP_SEC_CONST_BOOLEAN_FAR

#elif defined (DEFAULT_START_SEC_CONST_8BIT_FAR)
  #undef      DEFAULT_START_SEC_CONST_8BIT_FAR
#elif defined (DEFAULT_STOP_SEC_CONST_8BIT_FAR)
  #undef      DEFAULT_STOP_SEC_CONST_8BIT_FAR

#elif defined (DEFAULT_START_SEC_CONST_16BIT_FAR)
  #undef      DEFAULT_START_SEC_CONST_16BIT_FAR
#elif defined (DEFAULT_STOP_SEC_CONST_16BIT_FAR)
  #undef      DEFAULT_STOP_SEC_CONST_16BIT_FAR

#elif defined (DEFAULT_START_SEC_CONST_32BIT_FAR)
  #undef      DEFAULT_START_SEC_CONST_32BIT_FAR
#elif defined (DEFAULT_STOP_SEC_CONST_32BIT_FAR)
  #undef      DEFAULT_STOP_SEC_CONST_32BIT_FAR

#elif defined (DEFAULT_START_SEC_CONST_UNSPECIFIED_FAR)
  #undef      DEFAULT_START_SEC_CONST_UNSPECIFIED_FAR
#elif defined (DEFAULT_STOP_SEC_CONST_UNSPECIFIED_FAR)
  #undef      DEFAULT_STOP_SEC_CONST_UNSPECIFIED_FAR


/*---------------------------------------------------------------- ---------------------------------------------------*/
/*------------------------------------------End of default section mapping--------------------------------------------*/
/*---------------------------------------------------------------- ---------------------------------------------------*/

#endif  /* START_WITH_IF */
/*------------------------------------------------------End of file---------------------------------------------------*/
