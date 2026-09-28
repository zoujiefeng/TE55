


/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */
 
#define SRVLIBS
 
#include "Mfx.h"

/**
 **********************************************************************************************************************
 * Mfx_GetVersionInfo
 *
 * Macro to get version information including Vendor Id, Module Id and Version Info
 *
 * \param    versionInfo - pointer to structure Std_VersionInfoType
 * \retval   void
 **********************************************************************************************************************
*/
#if (MFX_VERSIONINFOAPI == STD_ON)

    #define MFX_START_SEC_CODE
    #include "Mfx_MemMap.h"
    void Mfx_GetVersionInfo(Std_VersionInfoType* versionInfo)
    {
        versionInfo->vendorID = MFX_VENDOR_ID;
        versionInfo->moduleID = MFX_MODULE_ID;
        versionInfo->sw_major_version = MFX_SW_MAJOR_VERSION;
        versionInfo->sw_minor_version = MFX_SW_MINOR_VERSION;
        versionInfo->sw_patch_version = MFX_SW_PATCH_VERSION;
    }
    #define MFX_STOP_SEC_CODE
    #include "Mfx_MemMap.h"

#endif

/*********************************************************************************************************************/


