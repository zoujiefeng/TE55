/* BSW-13093 */
/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "Dem.h"
#include "rba_DemObdBasic_Mil.h" // to get rba_DemObdBasic_Mil_GetIndicatorStatusInternal()
#include "rba_DemObdBasic_Dcm.h" // to get the common Dcm API
#include "rba_DemObdBasic_Prv.h" // to get rba_DemObdBasic_Event_IsEmissionRelated()
#include "rba_DemObdBasic.h"

/*
 **********************************************************************************************************************
 * Local prototypes
 **********************************************************************************************************************
*/
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"


#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||  (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU)
static Std_ReturnType rba_DemObdBasic_GetPid21Data(uint8* pid21OutBuffer);
#endif     

#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)
static Std_ReturnType rba_DemObdBasic_GetPid31Data(uint8* pid31OutBuffer);
#endif

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"


/*
 **********************************************************************************************************************
 * Variables
 **********************************************************************************************************************
*/


/*
 **********************************************************************************************************************
 * Implementation
 **********************************************************************************************************************
*/
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/**
 **********************************************************************************************************************
 * Parameter ID 21
 **********************************************************************************************************************
 **/
#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)||\
    (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU))

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_GetPid21Data
 * 
 * \brief Internal helper to set 2 bytes in an output buffer with the value stored in the PID $21 counter
 * \note Value is converted from m to Km. The converted value saturates at 0xFFFF. There are no buffer size checks.
 * Caller should ensure buffer is of the correct size.
 *
 * \param[out]   uint8*      pid21OutBuffer          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                       Buffer write status
 */
 /* [$DD_BSWCODE 30800] */
static Std_ReturnType rba_DemObdBasic_GetPid21Data(uint8* pid21OutBuffer)
{
    uint32 distanceDataInKm_u32 = 0u;
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != pid21OutBuffer)
    {
        /*Do not wrap to $0000 if value is $FFFF*/
        distanceDataInKm_u32 = rba_DemObdBasic_PidNv.pid21Cnt_u32;
        pid21OutBuffer[3u] = (uint8)(distanceDataInKm_u32 >> 24u);
        pid21OutBuffer[2u] = (uint8)(distanceDataInKm_u32 >> 16u);
        pid21OutBuffer[1u] = (uint8)(distanceDataInKm_u32 >> 8u);
        pid21OutBuffer[0u] = (uint8)distanceDataInKm_u32;
        retVal = E_OK;
    }

    return retVal; 
}

/**
 **********************************************************************************************************************
 * Dem_DcmReadDataOfPID21
 * 
 * \brief Interface to get the value stored in the internal PID $21 counter.
 * \note If DemOBDSupport == DEM_OBD_PRIMARY_ECU and Dem_SetDataOfPID21 was not called prior to this function call
 * at least once after diagnostics information was cleared, the function returns 0xFFFF, otherwise, it returns
 * the value stored in the internal PID $21 counter.There are no buffer size checks.
 * Caller should ensure buffer referenced by PID21value is of the correct size.
 *
 * \param[out]   uint8*      PID21value          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
 /* [$DD_BSWCODE 30814] */
Std_ReturnType Dem_DcmReadDataOfPID21_User(uint8* PID21value)
{
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != PID21value)
    {
        retVal = rba_DemObdBasic_GetPid21Data(PID21value);
    }

    return retVal;
}

Std_ReturnType Dem_DcmReadCntSetDataOfPID21_User(uint8* pid21CntSet_b)
{
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != pid21CntSet_b)
    {
        *pid21CntSet_b = rba_DemObdBasic_PidNv.pid21CntSet_b;
    }

    return retVal;
}
#endif /*#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)||\
    (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU))*/

#if((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) && (DEM_CFG_OBD_PID21_CENTRAL != DEM_CFG_OBD_PID21_CENTRAL_OFF))
/**
 **********************************************************************************************************************
 * Dem_GetDataOfPID21
 * 
 * \brief Service to get the value of PID $21 from the Dem by a software component.
 * API is needed in OBD-relevant ECUs only.
 * \note The value received in the input buffer is expected to be in Km units and is converted to m units 
 * for internal storage.
 *
 * \param[in]   uint8*          PID21value          Content of PID $21 as raw hex value.
 * 
 * \return      Std_ReturnType                      Always E_OK is returned, E_NOT_OK will only be returned if a NULL_PTR
 *                                                  is passed
 */
/* [$DD_BSWCODE 30818] */
Std_ReturnType Dem_GetDataOfPID21(uint8* PID21value)
{
    Std_ReturnType retVal = E_NOT_OK;
    if(NULL_PTR != PID21value)
    {
        retVal = rba_DemObdBasic_GetPid21Data(PID21value);
    }

    return retVal;
}
#endif

/**
 **********************************************************************************************************************
 * Dem_SetDataOfPID21
 * 
 * \brief Interface to set the value stored in the internal PID $21 counter.
 * \note The value received in the input buffer is expected to be in Km units and is converted to m units 
 * for internal storage. Caller should ensure buffer referenced by PID21value is of the correct size.
 *
 * \param[in]   const uint8*    PID21value          Input buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                      Internal PID $21 counter set status
 */
/* [$DD_BSWCODE 30822] */
Std_ReturnType Dem_SetDataOfPID21_User(const uint32 PID21value, boolean PID21CntSet)
{
    Std_ReturnType retVal = E_NOT_OK;
    
    DEM_ENTERLOCK_MON();
    rba_DemObdBasic_PidNv.pid21Cnt_u32 = PID21value;
    rba_DemObdBasic_PidNv.pid21CntSet_b = PID21CntSet;
    DEM_EXITLOCK_MON();
    Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
    retVal = E_OK;

    return retVal;
}

/**
 **********************************************************************************************************************
 * Parameter ID 31
 **********************************************************************************************************************
 **/

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_GetPid31Data
 * 
 * \brief Internal helper to set 2 bytes in an output buffer with the value stored in the internal PID $31 counter
 * \note Value is converted from m to Km. The converted value saturates at 0xFFFF. There are no buffer size checks.
 * Caller should ensure buffer is of the correct size.
 *
 * \param[out]   uint8*      pid21OutBuffer          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                       Buffer write status
 */
 /* [$DD_BSWCODE 30801] */
static Std_ReturnType rba_DemObdBasic_GetPid31Data(uint8* pid31OutBuffer)
{
   uint32 distanceDataInKm_u32 = 0u;
   Std_ReturnType retVal = E_NOT_OK;
   
   if(NULL_PTR != pid31OutBuffer)
   {
       /*Do not wrap to $0000 if value is $FFFF*/
       distanceDataInKm_u32 = rba_DemObdBasic_PidNv.pid31Cnt_u32;
       pid31OutBuffer[3u] = (uint8)((distanceDataInKm_u32 & 0xFF000000) >> 24u);
       pid31OutBuffer[2u] = (uint8)((distanceDataInKm_u32 & 0x00FF0000) >> 16u);
       pid31OutBuffer[1u] = (uint8)((distanceDataInKm_u32 & 0x0000FF00) >> 8u);
       pid31OutBuffer[0u] = (uint8)(distanceDataInKm_u32 & 0x000000FF);
       retVal = E_OK;
   }

    return retVal; 
}

/**
 **********************************************************************************************************************
 * Dem_DcmReadDataOfPID31
 * 
 * \brief Interface to get the value stored in the internal PID $31 counter.
 * \note it returns the value stored in the internal PID $31 counter.There are no buffer size checks.
 * Caller should ensure buffer referenced by PID31value is of the correct size.
 *
 * \param[out]   uint8*      PID31value          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
/* [$DD_BSWCODE 30815] */
Std_ReturnType Dem_DcmReadDataOfPID31_User(uint8* PID31value)
{
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != PID31value)
    {
        retVal = rba_DemObdBasic_GetPid31Data(PID31value);  
    }

    return retVal;
}

#if((DEM_CFG_OBD_PID31_CENTRAL != DEM_CFG_OBD_PID31_CENTRAL_OFF)&&\
    (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU))
/**
 **********************************************************************************************************************
 * Dem_GetDataOfPID31
 * 
 * \brief Service to get the value of PID $31 from the Dem by a software component.
 * API is needed in OBD-relevant ECUs only.
 * \note The value received in the input buffer is expected to be in Km units and is converted to m units 
 * for internal storage.
 *
 * \param[in]   uint8*          PID31value          Content of PID $31 as raw hex value.
 * 
 * \return      Std_ReturnType                      Always E_OK is returned, E_NOT_OK will only be returned if a NULL_PTR
 *                                                  is passed
 */
/* [$DD_BSWCODE 30819] */
Std_ReturnType Dem_GetDataOfPID31(uint8* PID31value)
{
    Std_ReturnType retVal = E_NOT_OK;
    
    if(NULL_PTR != PID31value)
    {
        retVal = rba_DemObdBasic_GetPid31Data(PID31value);
    }
    
    return retVal;
}
#endif

/**
 **********************************************************************************************************************
 * Dem_SetDataOfPID31
 * 
 * \brief Service to set the value of PID $31 in the Dem by a software component.
 * API is needed in OBD-relevant ECUs only..
 * \note The value received in the input buffer is expected to be in Km units and is converted to m units 
 * for internal storage.
 *
 * \param[in]   const uint8*    PID31value          Buffer containing the contents of PID $31.
 *                                                  The buffer is provided by the Dcm with the appropriate
 *                                                  size, i.e. during configuration, the Dcm identifies
 *                                                  the required size from the largest PID in order to
 *                                                  configure a PIDBuffer.
 * 
 * \return      Std_ReturnType                      Always E_OK is returned, E_NOT_OK will only be returned if a NULL_PTR
 *                                                  is passed
 */
/* [$DD_BSWCODE 30823] */
Std_ReturnType Dem_SetDataOfPID31_User(const uint32 PID31value)
{
    Std_ReturnType retVal = E_NOT_OK;

    DEM_ENTERLOCK_MON();
    rba_DemObdBasic_PidNv.pid31Cnt_u32 = PID31value;
    DEM_EXITLOCK_MON();
    Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA); 
    retVal = E_OK;       

    return retVal;
}
#if 0
/**
 **********************************************************************************************************************
 * Parameter ID 4D
 **********************************************************************************************************************
 **/

#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_GetPid4DData
 * 
 * \brief Interface to get the value stored in the internal PID $4D counter.
 * \note  it returns the value stored in the internal PID $4D counter.
 * Value is converted from second to minute. The converted value saturates at 0xFFFF. There are no buffer size checks.
 * Caller should ensure buffer referenced by PID4Dvalue is of the correct size.
 *
 * \param[out]   uint8*      pid4DOutBuffer          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
 /* [$DD_BSWCODE 31776] */
static Std_ReturnType rba_DemObdBasic_GetPid4DData(uint8* pid4DOutBuffer)
{
    uint16 timeDataInMinute_u16 = 0u;
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != pid4DOutBuffer)
    {
        /*Do not wrap to $0000 if value is $FFFF*/
    	timeDataInMinute_u16 = Mfx_Div_u32u32_u16(rba_DemObdBasic_PidNv.pid4DCnt_u32, TIME_ONE_MINUTE);
        pid4DOutBuffer[0u] = (uint8)(timeDataInMinute_u16 >> 8u);
        pid4DOutBuffer[1u] = (uint8)timeDataInMinute_u16;
        retVal = E_OK;
    }

    return retVal; 
}

/**
 **********************************************************************************************************************
 * Dem_DcmReadDataOfPID4D
 * 
 * \brief Interface to get the value stored in the internal PID $4D counter.
 * \note it returns the value stored in the internal PID $4D counter.There are no buffer size checks.
 * Caller should ensure buffer referenced by PID4Dvalue is of the correct size.
 *
 * \param[out]   uint8*      PID4Dvalue          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
 /* [$DD_BSWCODE 30812] */
Std_ReturnType Dem_DcmReadDataOfPID4D(uint8* PID4Dvalue)
{
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != PID4Dvalue)
    {
        retVal = rba_DemObdBasic_GetPid4DData(PID4Dvalue);
    }    
    return retVal;
}

#endif /*#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)*/

#if((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) &&\
    (DEM_CFG_OBD_PID4D_CENTRAL != DEM_CFG_OBD_PID4D_CENTRAL_OFF))
/**
 **********************************************************************************************************************
 * Dem_GetDataOfPID4D
 * 
 * \brief Service to get the value of PID $4D from the Dem by a software component.
 * API is needed in OBD-relevant ECUs only.
 * \note The value received in the input buffer is expected to be in second units and is converted to minute units
 * for internal storage.
 *
 * \param[in]   uint8*          PID4Dvalue          Content of PID $4D as raw hex value.
 * 
 * \return      Std_ReturnType                      Always E_OK is returned, E_NOT_OK will only be returned if a NULL_PTR
 *                                                  is passed
 */
/* [$DD_BSWCODE 30816] */
Std_ReturnType Dem_GetDataOfPID4D(uint8* PID4Dvalue)
{
    Std_ReturnType retVal = E_NOT_OK;
    if(NULL_PTR != PID4Dvalue)
    {
        retVal = rba_DemObdBasic_GetPid4DData(PID4Dvalue);
    }

    return retVal;
}
#endif


#if ((DEM_CFG_OBD_PID4D_CENTRAL != DEM_CFG_OBD_PID4D_CENTRAL_OFF) && (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU))
/**
 **********************************************************************************************************************
 * Dem_SetDataOfPID4D
 * 
 * \brief Interface to set the value stored in the internal PID $4D counter.
 * \note The value received in the input buffer is expected to be in minute units and is converted to second units
 * for internal storage. Caller should ensure buffer referenced by PID4Dvalue is of the correct size.
 *
 * \param[in]   const uint8*    PID4Dvalue          Input buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                      Internal PID $4D counter set status
 */
/* [$DD_BSWCODE 31774] */
Std_ReturnType Dem_SetDataOfPID4D(const uint8* PID4Dvalue)
{
    uint16 timeDataInMinute_u16 = 0u;
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != PID4Dvalue)
    {
    	timeDataInMinute_u16 = ((((uint16)PID4Dvalue[0u]) << 8) | (PID4Dvalue[1u]));
        DEM_ENTERLOCK_MON();
        rba_DemObdBasic_PidNv.pid4DCnt_u32 = Mfx_Mul_u16u16_u32(timeDataInMinute_u16, TIME_ONE_MINUTE);
        DEM_EXITLOCK_MON();
        Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
        retVal = E_OK;
    }

    return retVal;
}
#endif


/**
 **********************************************************************************************************************
 * Parameter ID 4E
 **********************************************************************************************************************
 **/
#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_GetPid4EData
 * 
 * \brief Interface to get the value stored in the internal PID $4E counter.
 * \note  it returns the value stored in the internal PID $4E counter.
 * Value is converted from second to minute. The converted value saturates at 0xFFFF. There are no buffer size checks.
 * Caller should ensure buffer referenced by PID4Evalue is of the correct size.
 *
 * \param[out]   uint8*      pid4EOutBuffer      Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
 /* [$DD_BSWCODE 31777] */
static Std_ReturnType rba_DemObdBasic_GetPid4EData(uint8* pid4EOutBuffer)
{
    uint16 timeDataInMinute_u16 = 0u;
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != pid4EOutBuffer)
    {
        /*Do not wrap to $0000 if value is $FFFF*/
    	timeDataInMinute_u16 = Mfx_Div_u32u32_u16(rba_DemObdBasic_PidNv.pid4ECnt_u32, TIME_ONE_MINUTE);
        pid4EOutBuffer[0u] = (uint8)(timeDataInMinute_u16 >> 8u);
        pid4EOutBuffer[1u] = (uint8)timeDataInMinute_u16;
        retVal = E_OK;
    }

    return retVal; 
}


/**
 **********************************************************************************************************************
 * Dem_DcmReadDataOfPID4E
 * 
 * \brief Interface to get the value stored in the internal PID $4E counter.
 * \note it returns the value stored in the internal PID $4E counter.There are no buffer size checks.
 * Caller should ensure buffer referenced by PID4Evalue is of the correct size.
 *
 * \param[out]   uint8*      PID4Evalue          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
 /* [$DD_BSWCODE 30813] */
Std_ReturnType Dem_DcmReadDataOfPID4E(uint8* PID4Evalue)
{
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != PID4Evalue)
    {
        retVal = rba_DemObdBasic_GetPid4EData(PID4Evalue);
    }    
    return retVal;
}

#endif /*#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)*/


#if((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) &&\
    (DEM_CFG_OBD_PID4E_CENTRAL != DEM_CFG_OBD_PID4E_CENTRAL_OFF))
/**
 **********************************************************************************************************************
 * Dem_GetDataOfPID4E
 * 
 * \brief Service to get the value of PID $4E from the Dem by a software component.
 * API is needed in OBD-relevant ECUs only.
 * \note The value received in the input buffer is expected to be in second units and is converted to minute units
 * for internal storage.
 *
 * \param[in]   uint8*          PID4Evalue          Content of PID $4E as raw hex value.
 * 
 * \return      Std_ReturnType                      Always E_OK is returned, E_NOT_OK will only be returned if a NULL_PTR
 *                                                  is passed
 */
/* [$DD_BSWCODE 30817] */
Std_ReturnType Dem_GetDataOfPID4E(uint8* PID4Evalue)
{
    Std_ReturnType retVal = E_NOT_OK;
    if(NULL_PTR != PID4Evalue)
    {
        retVal = rba_DemObdBasic_GetPid4EData(PID4Evalue);
    }

    return retVal;
}
#endif

#if ((DEM_CFG_OBD_PID4E_CENTRAL != DEM_CFG_OBD_PID4E_CENTRAL_OFF) && (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU))
/**
 **********************************************************************************************************************
 * Dem_SetDataOfPID4E
 * 
 * \brief Interface to set the value stored in the internal PID $4E counter.
 * \note The value received in the input buffer is expected to be in minute units and is converted to second units
 * for internal storage. Caller should ensure buffer referenced by PID4Evalue is of the correct size.
 *
 * \param[in]   const uint8*    PID4Evalue          Input buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                      Internal PID $4E counter set status
 */
/* [$DD_BSWCODE 31775] */
Std_ReturnType Dem_SetDataOfPID4E(const uint8* PID4Evalue)
{
    uint16 timeDataInMinute_u16 = 0u;
    Std_ReturnType retVal = E_NOT_OK;

    if(NULL_PTR != PID4Evalue)
    {
    	timeDataInMinute_u16 = ((((uint16)PID4Evalue[0u]) << 8) | (PID4Evalue[1u]));
        DEM_ENTERLOCK_MON();
        rba_DemObdBasic_PidNv.pid4ECnt_u32 = Mfx_Mul_u16u16_u32(timeDataInMinute_u16, TIME_ONE_MINUTE);
        DEM_EXITLOCK_MON();
        Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
        retVal = E_OK;
    }

    return retVal;
}
#endif

#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_DistanceTimePid_Init
 * 
 * \brief Service to initialize the global state variables required for PIDs $21, $31, $4D, and $4E internal calculation
 * in a master ECU. The global variables are for MIL status, distance reference, and time reference.
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 30796] */
void rba_DemObdBasic_DistanceTimePid_Init(void)
{
    Std_ReturnType distanceReadRetVal = E_NOT_OK;
    uint32 elapsedTotalDistance_u32 = 0u;
    Std_ReturnType timeReadRetVal = E_NOT_OK;
    uint16 elapsedTotalTime_u16 = 0u;

    rba_DemObdBasic_previousMilStatusOn_b = rba_DemObdBasic_MilOn();
    distanceReadRetVal = rba_DemObdBasic_GetTotalDistance(&elapsedTotalDistance_u32);    
    if(E_OK == distanceReadRetVal)
    {
        rba_DemObdBasic_distanceRef_u32 = elapsedTotalDistance_u32;
    }
    else
    {
        rba_DemObdBasic_distanceRef_u32 = DISTANCE_MAX;
    } 
    timeReadRetVal = rba_DemObdBasic_GetTotalTime(&elapsedTotalTime_u16);
    if(E_OK == timeReadRetVal)
    {
        rba_DemObdBasic_timeRef_u16 = elapsedTotalTime_u16;
    }
    else
    {
        rba_DemObdBasic_timeRef_u16 = TIME_MAX;
    } 
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_GetTotalDistance
 * 
 * \brief Internal function to get the distance data in a master ECU.
 * \note The value received from the SWC providing distance information is expected to be:
 * - Conforming to the parameter DemOBDInputDistanceInformation (i.e. 4 bytes, unsigned, 1m per bit, high byte first).
 * - Reflecting of the whole distance traveled in the current ECU power cycle. 
 *
 * \param[in]   uint32*          totalDistance      Distance data.
 * 
 * \return      Std_ReturnType                      Distance data read status.
 */
 /* [$DD_BSWCODE 30802] */
static Std_ReturnType rba_DemObdBasic_GetTotalDistance(uint32* totalDistance)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint8 tempBuffer[4u] = {0u};

    if(NULL_PTR != totalDistance)
    {
        if (E_OK == Dem_Cfg_EnvDataElement[DEM_CFG_OBD_DATA_DIST].ReadExternalFnc(tempBuffer))
        {
            *totalDistance = ((uint32)tempBuffer[0u] << 24u) | ((uint32)tempBuffer[1u] << 16u) | ((uint32)tempBuffer[2u] << 8u) | ((uint32)tempBuffer[3u]);
            retVal = E_OK;
        }
    }

    return retVal;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_GetTotalTime
 * 
 * \brief Internal function to get the time data in a master ECU.
 * \note The value received from the SWC providing time information is expected to be:
 * - Conforming to the parameter DemOBDTimeSinceEngineStart (i.e. 2 bytes, unsigned, 1 second per bit, high byte first).
 * - For hybrid vehicles or for vehicles that employ engine shutoff strategies (e.g. engine shutoff at idle), 
 *   the engine run timer shall increment: 
 *   after the ignition switch is turned to the on position and the engine is running,
 *   if the vehicle can be started in electric-only mode, after the propulsion system is active. 
 *   if the engine is turned off by the vehicle control system during normal operation.
 *
 * \param[in]   uint16*          totalTime      Time data.
 * 
 * \return      Std_ReturnType                  Time data read status.
 */
 /* [$DD_BSWCODE 31778] */
static Std_ReturnType rba_DemObdBasic_GetTotalTime(uint16* totalTime)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint8 tempBuffer[2u] = {0u};

    if(NULL_PTR != totalTime)
    {
        if (E_OK == Dem_Cfg_EnvDataElement[DEM_CFG_OBD_DATA_ENGTIME].ReadExternalFnc(tempBuffer))
        {
            *totalTime = ((uint16)tempBuffer[0u] << 8u) | ((uint16)tempBuffer[1u]);
            retVal = E_OK;
        }
    }

    return retVal;
}


/**
 **********************************************************************************************************************
 * rba_DemObdBasic_MilOn
 * 
 * \brief Internal function to determine wether the MIL is ON or OFF.
 * \note The MIL status DEM_INDICATOR_BLINK_CONT is considered as MIL ON.
 * 
 * \return      boolean                    TRUE if MIL is DEM_INDICATOR_CONTINUOUS or DEM_INDICATOR_BLINK_CONT. 
 *                                         FALSE otherwise.
 */
 /* [$DD_BSWCODE 30805] */
static boolean rba_DemObdBasic_MilOn(void)
{
    boolean retVal = FALSE;
    Dem_IndicatorStatusType milStatus = DEM_INDICATOR_OFF;

    milStatus = rba_DemObdBasic_Mil_GetIndicatorStatusInternal();
    if((DEM_INDICATOR_CONTINUOUS == milStatus) || (DEM_INDICATOR_BLINK_CONT == milStatus) )
    {
        retVal = TRUE;
    }

    return retVal;
} 

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_MilAgingDone
 * 
 * \brief Internal function to determine wether 40 Warm-Up cycles have passed and MIL was off in a master ECU.
 * \note This function does not perform actual counting of warm-up cycles while MIL was off. Instead
 * This function will loop on all emission related errors in the Primary EvMem and ensure that non have 
 * the status confirmed. This indicates that event aging has completed, and event aging for OBD DTCs
 * has the aging counter threshold of 40. Since OBD DTCs has the Warm-Up Cycle as the aging sequence, then this method
 * is equivalent to counting warm-up cycles.
 * 
 * \return      boolean                    TRUE if MIL aging has completed (i.e. 40 Warm-Up cycles have passed
 *                                         and MIL was off). FALSE otherwise.
 */
 /* [$DD_BSWCODE 30804] */
static boolean rba_DemObdBasic_MilAgingDone(void)
{
    boolean retVal = TRUE;
    uint16_least locId;
    uint16_least locIdStatus;
    Dem_IndicatorStatusType milStatus = DEM_INDICATOR_OFF;

    /* Loop over the whole Primary EvMem and check for ObdSrv03 (=confirmed) entries */
    for (Dem_EvMemEventMemoryLocIteratorNew(&locId, DEM_CFG_EVMEM_MEMID_PRIMARY);
            Dem_EvMemEventMemoryLocIteratorIsValid(&locId, DEM_CFG_EVMEM_MEMID_PRIMARY);
            Dem_EvMemEventMemoryLocIteratorNext(&locId, DEM_CFG_EVMEM_MEMID_PRIMARY))
    {
        locIdStatus = Dem_EvMemGetEventMemStatus(locId);
        if (Dem_EvMemIsStored(locIdStatus))
        {
            if ((locIdStatus & DEM_EVMEM_STSMASK_CONFIRMED) == DEM_EVMEM_STSMASK_CONFIRMED)
            {
                if (rba_DemObdBasic_Event_IsEmissionRelated(Dem_EvMemGetEventMemEventId(locId)))
                {
                    retVal = FALSE;
                    break;
                }
            }
        }
    }

    return retVal;    
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_VehicleSpeedAvailable
 * 
 * \brief Internal function to determine wether vehicle speed information is available or not in a master ECU.
 * \note This function reads the OBD vehicle speed data. Only the return value from the SWC read function is used.
 * 
 * \return      boolean                    TRUE if E_OK was returned by the SWC providing vehicle speed information.
 *                                         FALSE otherwise.
 */
 /* [$DD_BSWCODE 30811] */
static boolean rba_DemObdBasic_VehicleSpeedAvailable(void)
{
    boolean retVal = FALSE;
    uint8 dummyBuffer[1u] ={0u};

    if (E_OK == Dem_Cfg_EnvDataElement[DEM_CFG_OBD_DATA_VEHSPEED].ReadExternalFnc(dummyBuffer))
    {
        retVal = TRUE;
    }

    return retVal;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_DistanceTimePid_MainFunction
 * 
 * \brief Service that should be called from a cyclic context to perform internal time and distance PIDs calculations.
 * \return      void
 */
 /* [$DD_BSWCODE 30797] */
void rba_DemObdBasic_DistanceTimePid_MainFunction(void)
{
    uint32 elapsedDistanceThisCycle = 0u;
    uint32 timeElapsedThisCycle = 0u;
    boolean currentMilStatusOn_b = FALSE;

    currentMilStatusOn_b = rba_DemObdBasic_MilOn();
    /*Distance PIDs calculation*/
    elapsedDistanceThisCycle = rba_DemObdBasic_DistanceProcessing();
    rba_DemObdBasic_Pid21Processing(elapsedDistanceThisCycle, currentMilStatusOn_b);
    rba_DemObdBasic_Pid31Processing(elapsedDistanceThisCycle);      
    /*Time PIDs calculation*/
    timeElapsedThisCycle = rba_DemObdBasic_TimeProcessing();   
    rba_DemObdBasic_Pid4DProcessing(timeElapsedThisCycle, currentMilStatusOn_b);
    rba_DemObdBasic_Pid4EProcessing(timeElapsedThisCycle);   
    /*Store current MIL status to be used as previous status in the next cycle*/   
    rba_DemObdBasic_previousMilStatusOn_b = currentMilStatusOn_b;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_DistanceProcessing
 * 
 * \brief Internal function to the elapsed distance since the last MainFunction call
 * 
 * \return      uint32                    Elapsed distance this cycle 
 */
 /* [$DD_BSWCODE 30794] */
static uint32 rba_DemObdBasic_DistanceProcessing(void)
{
    Std_ReturnType distanceReadRetVal = E_NOT_OK;
    uint32 elapsedTotalDistance_u32 = 0u;    
    uint32 elapsedDistanceThisCycle = 0u;

    distanceReadRetVal = rba_DemObdBasic_GetTotalDistance(&elapsedTotalDistance_u32);    
    if(E_OK == distanceReadRetVal)
    {
        DEM_ENTERLOCK_MON();
        if(DISTANCE_MAX == rba_DemObdBasic_distanceRef_u32)
        {
            rba_DemObdBasic_distanceRef_u32 = elapsedTotalDistance_u32;
        }
        else
        {
            /*Only process the distance information if it indicates more distance has elapsed compared to last cycle*/
            if(elapsedTotalDistance_u32 > rba_DemObdBasic_distanceRef_u32)
            {
                elapsedDistanceThisCycle = elapsedTotalDistance_u32 - rba_DemObdBasic_distanceRef_u32;
                rba_DemObdBasic_distanceRef_u32 = elapsedTotalDistance_u32;
            }
        }
        DEM_EXITLOCK_MON();
    }

    return elapsedDistanceThisCycle;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Pid21Processing
 * 
 * \brief Internal function to calculate the PID $21 data in a master ECU.
 * Note: converted value saturates at 0xFFFF
 * \param[in]   uint32          elapsedDistanceThisCycle    The elapsed distance this cycle to be used in the PID $21
 *                                                          data calculation .
 * \param[in]   boolean         milStatusThisCycle      MIL status in current cycle.
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 30808] */
static void rba_DemObdBasic_Pid21Processing(uint32 elapsedDistanceThisCycle, boolean milStatusThisCycle)
{
    if(TRUE == milStatusThisCycle)
    {
        DEM_ENTERLOCK_MON();
        if(FALSE == rba_DemObdBasic_previousMilStatusOn_b)
        {
            /*Reset to $0000 when MIL state changes from deactivated to activated */
            rba_DemObdBasic_PidNv.pid21Cnt_u32 = 0u;
            Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
        }
        else
        {
            /*Freeze value if no source of vehicle speed available*/ 
            if((elapsedDistanceThisCycle > 0u) &&
               (TRUE == rba_DemObdBasic_VehicleSpeedAvailable()))
            {
                /*Accumulate counts if MIL is activated (ON) and data shall not wrap to 0*/
                rba_DemObdBasic_PidNv.pid21Cnt_u32 = Mfx_Add_u32u32_u32(rba_DemObdBasic_PidNv.pid21Cnt_u32, elapsedDistanceThisCycle);
                Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
            }
        }
        DEM_EXITLOCK_MON();
    }
    else
    {
        DEM_ENTERLOCK_MON();
        if(rba_DemObdBasic_PidNv.pid21Cnt_u32 > 0u)
        {
            if(TRUE == rba_DemObdBasic_MilAgingDone())
            {
                /*Reset to $0000 if diagnostic information is cleared either by at least 40 warm-up cycles without MIL activated*/
                rba_DemObdBasic_PidNv.pid21Cnt_u32 = 0u;
                Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
            }
        }
        DEM_EXITLOCK_MON();
    }
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Pid31Processing
 * 
 * \brief Internal function to calculate the PID $31 data in a master ECU.
 * Note: converted data shall not wrap to zero if it reach over max value of uint32
 * \param[in]   uint32          elapsedDistanceThisCycle    The elapsed distance this cycle to be used in the PID $31
 *                                                          data calculation .
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 30809] */
static void rba_DemObdBasic_Pid31Processing(uint32 elapsedDistanceThisCycle)
{
    DEM_ENTERLOCK_MON();
    /*Freeze value if no source of vehicle speed available*/
    if((elapsedDistanceThisCycle > 0u) &&
       (TRUE == rba_DemObdBasic_VehicleSpeedAvailable()))
    {
        /*This is distance accumulated since DTCs were cleared, do not wrap to zero*/
        rba_DemObdBasic_PidNv.pid31Cnt_u32 = Mfx_Add_u32u32_u32(rba_DemObdBasic_PidNv.pid31Cnt_u32, elapsedDistanceThisCycle);
        Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
    }
    DEM_EXITLOCK_MON();
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_TimeProcessing
 * 
 * \brief Internal function to the elapsed time since the last MainFunction call
 * 
 * \return      uint32                    Elapsed time this cycle
 */
 /* [$DD_BSWCODE 30810] */
static uint32 rba_DemObdBasic_TimeProcessing(void)
{
    Std_ReturnType timeReadRetVal = E_NOT_OK;
    uint16 elapsedTotalTime_u16 = 0u;
    uint32 elapsedTimeThisCycle = 0u;

    timeReadRetVal = rba_DemObdBasic_GetTotalTime(&elapsedTotalTime_u16);
    if(E_OK == timeReadRetVal)
    {
        DEM_ENTERLOCK_MON();
        if(TIME_MAX == rba_DemObdBasic_timeRef_u16)
        {
            rba_DemObdBasic_timeRef_u16 = elapsedTotalTime_u16;
        }
        else
        {
            /*Only process the distance information if it indicates more distance has elapsed compared to last cycle*/
            if(elapsedTotalTime_u16 > rba_DemObdBasic_timeRef_u16)
            {
                elapsedTimeThisCycle = (uint32)(elapsedTotalTime_u16 - rba_DemObdBasic_timeRef_u16);
                rba_DemObdBasic_timeRef_u16 = elapsedTotalTime_u16;
            }
        }
        DEM_EXITLOCK_MON();
    }

    return elapsedTimeThisCycle;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Pid4DProcessing
 * 
 * \brief Internal function to calculate the PID $4D data in a master ECU.
 * Note: converted data shall not wrap to zero if it reach over max value of uint32
 * \param[in]   uint32          elapsedTimeThisCycle    The elapsed time this cycle to be used in the PID $4D
 *                                                      data calculation.
 * \param[in]   boolean         milStatusThisCycle      MIL status in current cycle.
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 30806] */
static void rba_DemObdBasic_Pid4DProcessing(uint32 elapsedTimeThisCycle, boolean milStatusThisCycle)
{
    if(TRUE == milStatusThisCycle)
    {
        DEM_ENTERLOCK_MON();
        if(FALSE == rba_DemObdBasic_previousMilStatusOn_b)
        {
            /*Reset to $0000 when MIL state changes from deactivated to activated */
            rba_DemObdBasic_PidNv.pid4DCnt_u32 = 0u;
            Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
        }
        else
        {
            if(elapsedTimeThisCycle > 0u)
            {
                /*Accumulate counts if MIL is activated (ON), Converted data shall not wrap to 0*/
                rba_DemObdBasic_PidNv.pid4DCnt_u32 = Mfx_Add_u32u32_u32(rba_DemObdBasic_PidNv.pid4DCnt_u32, elapsedTimeThisCycle);
                Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
            }
        }
        DEM_EXITLOCK_MON();
    }
    else
    {
        DEM_ENTERLOCK_MON();
        if(rba_DemObdBasic_PidNv.pid4DCnt_u32 > 0u)
        {
            if(TRUE == rba_DemObdBasic_MilAgingDone())
            {
                /*Reset to $0000 if diagnostic information is cleared either by at least 40 warm-up cycles without MIL activated*/
                rba_DemObdBasic_PidNv.pid4DCnt_u32 = 0u;
                Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
            }
        }
        DEM_EXITLOCK_MON();
    }
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Pid4EProcessing
 * 
 * \brief Internal function to calculate the PID $4E data in a master ECU.
 * Note: converted data shall not wrap to zero if it reach over max value of uint32
 * \param[in]   uint32          elapsedTimeThisCycle    The elapsed time this cycle to be used in the PID $4E
 *                                                      data calculation.
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 30807] */
static void rba_DemObdBasic_Pid4EProcessing(uint32 elapsedTimeThisCycle)
{
    DEM_ENTERLOCK_MON();
    if(elapsedTimeThisCycle > 0u)
    {
        /*This is time accumulated since DTCs were cleared, do not wrap to zero*/
        rba_DemObdBasic_PidNv.pid4ECnt_u32 = Mfx_Add_u32u32_u32(rba_DemObdBasic_PidNv.pid4ECnt_u32, elapsedTimeThisCycle);
        Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
    }
    DEM_EXITLOCK_MON();
}

#endif/*#if(DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)*/
#endif

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"
/* END BSW-13093 */

