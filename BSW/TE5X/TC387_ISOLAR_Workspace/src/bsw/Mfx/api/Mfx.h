


#ifndef MFX_H
#define MFX_H

#ifdef __cplusplus
extern "C" {
#endif

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */
#include "Std_Types.h"
#include "Mfx_Types.h"
#include "Mfx_Cfg.h"


/* Patch to speed up the run of QAC tool */
#if (!defined(__QACDF__) || (defined(__QACDF__) && defined(SRVLIBS)))

/*
 * SRVLIBS_CPP_BUILD - This macro will be enabled only for PS-EC Cplusplus project
 * for vcup c++ only extern declarations should be visible header files should not be included.
 */
#if(!defined(SRVLIBS_CPP_BUILD))

#if (MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON)
    #include "rba_MfxTCCommon_Replacements.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX)
    #include "rba_MfxTC27xx_Replacements.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2)
    #include "rba_MfxMPCCut2_Replacements.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCOMMON)
    #include "rba_MfxMPCCommon_Replacements.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Replacements.h"
#endif

#include "Mfx_Limit_Inl.h"
#include "Mfx_Stat_Inl.h"
#include "Mfx_Sat_Inl.h"

#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX))
    #include "rba_MfxTCCommon_Sat_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Sat_Inl.h"
#endif
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX))
    #include "rba_MfxTCCommon_Stat_Inl.h"
#endif
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2))
    #include "rba_MfxMPCCommon_Stat_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2)
    #include "rba_MfxMPCCut2_Stat_Inl.h"
#endif


#include "Mfx_Add_Inl.h"
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX))
    #include "rba_MfxTCCommon_Add_Inl.h"
#endif
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2))
    #include "rba_MfxMPCCommon_Add_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2)
    #include "rba_MfxMPCCut2_Add_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Add_Inl.h"
#endif

#include "Mfx_Div_Inl.h"
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX))
    #include "rba_MfxTCCommon_Div_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX)
    #include "rba_MfxTC27xx_Div_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Div_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX)
    #include "rba_MfxTC27xx_Mul_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCOMMON)
    #include "rba_MfxMPCCommon_Div_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2)
    #include "rba_MfxMPCCut2_Div_Inl.h"
#endif

#include "Mfx_Mul_Inl.h"
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX))
    #include "rba_MfxTCCommon_Mul_Inl.h"
#endif
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2))
    #include "rba_MfxMPCCommon_Mul_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2)
    #include "rba_MfxMPCCut2_Mul_Inl.h"
#endif

#include "Mfx_Sub_Inl.h"
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_TCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_TC27XX))
    #include "rba_MfxTCCommon_Sub_Inl.h"
#endif
#if ((MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCOMMON) || (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2))
    #include "rba_MfxMPCCommon_Sub_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_MPCCUT2)
    #include "rba_MfxMPCCut2_Sub_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Sub_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Stat_Inl.h"
#endif
#if (MFX_CFG_OPTIMIZATION == MFX_CFG_ARMV8X32)
    #include "rba_MfxARMV8X32_Mul_Inl.h"
#endif

/* End if for "#if(!defined(SRVLIBS_CPP_BUILD))" */
#endif

/* End if for "Speed up the run of QAC tool" */
#endif

/*
 **********************************************************************************************************************
 * Module Version Information
 **********************************************************************************************************************
 */
#define MFX_MODULE_ID                   211
#define MFX_VENDOR_ID                   6
#define MFX_SW_MAJOR_VERSION            9
#define MFX_SW_MINOR_VERSION            0
#define MFX_SW_PATCH_VERSION            0
#define MFX_AR_RELEASE_MAJOR_VERSION    4
#define MFX_AR_RELEASE_MINOR_VERSION    2
#define MFX_AR_RELEASE_REVISION_VERSION 2


/*
 **********************************************************************************************************************
 * GetVersionInfo
 **********************************************************************************************************************
 */
#if (MFX_VERSIONINFOAPI == STD_ON)
    #define MFX_START_SEC_CODE
    #include "Mfx_MemMap.h"
    extern void Mfx_GetVersionInfo(Std_VersionInfoType* versionInfo);
    #define MFX_STOP_SEC_CODE
    #include "Mfx_MemMap.h"
#endif

#ifdef __cplusplus
/* extern "C" { */
}
#endif

/* MFX_H */
#endif
