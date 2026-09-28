
/* BSW-8793 */
#include "rba_DemObdBasic_Prv.h"


#if DEM_CFG_OBD_DTR

#define DEM_START_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"
rba_DemObdBasic_DtrDataType rba_DemObdBasic_DtrData;
#define DEM_STOP_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"


#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"


/**********************************************************************************************************
 Function name    : rba_DemObdBasic_ClearAllDtr
 Syntax           : void rba_DemObdBasic_ClearAllDtr(void)
 Parameter        : None
 Return value     : None
 Description      : Clear/Reset all DTR related data.
***********************************************************************************************************/
/* [$DD_BSWCODE 17267] */
void rba_DemObdBasic_ClearAllDtr(void)
{
    uint16 idxDtr_u16;           /* Local traverse over all the DTRs */
    uint8  idxObdmidMsk_u8;      /* Local traverse over the Obdmid Masks */

    DEM_ENTERLOCK_MON();
    /* Clear/Reset all DTR data.*/
    for(idxDtr_u16 = 0; idxDtr_u16 < DEM_CFG_NUM_ALL_DTRS; idxDtr_u16++)
    {
        rba_DemObdBasic_Dtr_DtrTestValue(idxDtr_u16) = DTR_ZERO;
        rba_DemObdBasic_Dtr_DtrLowLimitValue(idxDtr_u16) = DTR_ZERO;
        rba_DemObdBasic_Dtr_DtrUppLimitValue(idxDtr_u16) = DTR_ZERO;
        rba_DemObdBasic_Dtr_DtrStatus(idxDtr_u16) = DEM_DTRSTATUS_VISIBLE;
    }
    /*reset mask to configure value*/
    for(idxObdmidMsk_u8 = 0; idxObdmidMsk_u8 < DEM_NUM_OF_OBDMIDMASK; idxObdmidMsk_u8++)
    {
        rba_DemObdBasic_Dtr_ObdmidRuntimeMasks(idxObdmidMsk_u8) = rba_DemObdBasic_Dtr_GetObdmidConfigMask(idxObdmidMsk_u8);
    }
    DEM_EXITLOCK_MON();
}

/***************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_InitCheckNvm
 Syntax           : void rba_DemObdBasic_Dtr_InitCheckNvm(void)
 Description      : Function to be called from Dem_Init to validate the Nv block
 Parameter        : None
 Return value     : None
***************************************************************************************************/
/* [$DD_BSWCODE 17275] */
void rba_DemObdBasic_Dtr_InitCheckNvm(void)
{
    /* The DTR contents in NvM block must be available at this point. So, check for the validity of the data and if
     * it's not ok, then clear the complete data and start afresh.
     * ASW request for clearing the non-volatile data eg: after reprogramming.*/

    if (Dem_NvMIsInvalidateAllNVMBlocksRequested())
    {
        /* Reset all DTRs data */
    	rba_DemObdBasic_ClearAllDtr();
        Dem_NvMClearBlockByInvalidate(DEM_NVM_ID_OBD_DTR_DATA);
    }
    else
    {
        if (Dem_NvmGetStatus(DEM_NVM_ID_OBD_DTR_DATA) != DEM_NVM_SUCCESS)
        {
            /* Reset all DTRs data */
            rba_DemObdBasic_ClearAllDtr();
            Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_OBD_DTR_DATA);
        }
        else
        {
            /* Do Nothing */
        }
    }
}

/***************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_Shutdown
 Syntax           : void rba_DemObdBasic_Dtr_Shutdown(void)
 Description      : Trigger writing DEM_NVM_ID_OBD_DTR_DATA to non-volatile memory during shutdown
 Parameter        : None
 Return value     : None
***************************************************************************************************/
/* [$DD_BSWCODE 17268] */
void rba_DemObdBasic_Dtr_Shutdown(void)
{
    /* Indicate to NvM that the data is valid/updated so that it gets written to non-volatile area during shutdown. The
     return value is not used since there is nothing that can be done in case of an error */
    Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_OBD_DTR_DATA);
}


/**********************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_FindDtrId
 Syntax           : Std_ReturnType rba_DemObdBasic_Dtr_FindDtrId(uint8 Obdmid, uint8 TIDindex, Dem_DtrIdType* DtrId)
 Description      : Find the DtrId with correspond to the Obdmid and TIDindex.
 Parameter        : [in] Obdmid -> Obdmid of the DTR to be found.
                  : [in] TIDindex -> TID index of the DTR to be found.
                  : [out] DtrId -> DTRId found with correspond to the Obdmid and TIDindex.
 Return value     : E_OK: DtrId is found.
                  : E_NOT_OK: DtrId cannot be found
***********************************************************************************************************/
/* [$DD_BSWCODE 17928] */
static Std_ReturnType rba_DemObdBasic_Dtr_FindDtrId(uint8 Obdmid, uint8 TIDindex, Dem_DtrIdType* DtrId)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint16 index_u16 = 0;
    Dem_DtrIdType idxMappingEnd = 0;
    Dem_DtrIdType idxMappingOffset = 0;
    Dem_DtrIdType TmpDtrId  = 0;
    for(index_u16 = 0; index_u16 <= DEM_CFG_NUM_OF_OBDMIDS; index_u16++)
    {
        if(Obdmid == rba_DemObdBasic_Dtr_GetObdmidForOffset(index_u16))
        {
            if(index_u16 < DEM_CFG_NUM_OF_OBDMIDS)
            {
                idxMappingOffset = rba_DemObdBasic_Dtr_GetOffset(index_u16);
                idxMappingEnd = rba_DemObdBasic_Dtr_GetOffset(index_u16 + 1);
                /* TIDindex must be within the number of DTR having the Obdmid */
                if((Dem_DtrIdType)TIDindex < (idxMappingEnd - idxMappingOffset))
                {
                    TmpDtrId =  rba_DemObdBasic_Dtr_GetDtrIdFromTIDIndex(idxMappingOffset + TIDindex);
                    if(rba_DemObdBasic_Dtr_GetDtrObdTid(TmpDtrId) != DEM_DTR_TID_INVALID)
                    {
                        *DtrId = TmpDtrId;
                        retVal = E_OK;
                    }

                }
            }
            /* Only 1 occurrence of the Obdmid exists in the rba_DemObdBasic_DtrOffset, break */
            break;
        }
    }
    return retVal;
}


/*************************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_CheckTestResultConsistency
 Syntax           : Std_ReturnType rba_DemObdBasic_Dtr_CheckTestResultConsistency(Dem_EventIdType EventId,
                                                                                  sint32 TestResult,
                                                                                  sint32 LowerLimit,
                                                                                  sint32 UpperLimit,
                                                                                  Dem_DTRControlType Ctrlval)
 Description      : Check whether the result matches the debouncing direction
 Parameter        :
                  : EventId-> Identification of an event by assigned EventId.
                  : TestResult -> Latest test result
                  : LowerLimit -> Lower limit value associated to the latest test result
                  : UpperLimit -> Upper limit value associated to the latest test result
                  : Ctrlval-> Control value of the DTR to support its interpretation Dem-internally.

 Return value     : E_OK: the latest result  matches the debouncing direction.
                  : E_NOT_OK: not matches.
*************************************************************************************************************/
/* [$DD_BSWCODE 17271] */
static Std_ReturnType rba_DemObdBasic_Dtr_CheckTestResultConsistency(Dem_EventIdType EventId,
                                                              sint32 TestResult,
                                                              sint32 LowerLimit,
                                                              sint32 UpperLimit,
                                                              Dem_DTRControlType Ctrlval)
{
    Std_ReturnType retVal = E_NOT_OK;
    Std_ReturnType retVal_getEvtSts;
    uint8 checkRequiredSts;
    boolean EventFailed_u8;
    boolean TestResultsFailed;


    retVal_getEvtSts = Dem_GetEventFailed(EventId, &EventFailed_u8);

    /* Get Test Results Failed/Passed*/
    switch(Ctrlval)
    {
        case DEM_DTR_CTL_NORMAL:
        {
            checkRequiredSts = DEM_DTR_DEBOUNCEDIR_CHECK_REQUIRED;
            TestResultsFailed = ((TestResult <= UpperLimit) && (TestResult >= LowerLimit)) ? FALSE : TRUE;
            break;
        }
        case DEM_DTR_CTL_NO_MAX:
        {
            checkRequiredSts = DEM_DTR_DEBOUNCEDIR_CHECK_REQUIRED;
            TestResultsFailed = (TestResult >= LowerLimit) ? FALSE : TRUE;
            break;
        }
        case DEM_DTR_CTL_NO_MIN:
        {
            checkRequiredSts = DEM_DTR_DEBOUNCEDIR_CHECK_REQUIRED;
            TestResultsFailed = ((TestResult <= UpperLimit))? FALSE : TRUE;
            break;
        }
        case DEM_DTR_CTL_RESET:
        case DEM_DTR_CTL_INVISIBLE:
        {
            checkRequiredSts = DEM_DTR_DEBOUNCEDIR_CHECK_NOTREQUIRED;
            break;
        }
        default:
            checkRequiredSts = DEM_DTR_DEBOUNCEDIR_CHECK_INVALID;
            break;
    }

    if(checkRequiredSts == DEM_DTR_DEBOUNCEDIR_CHECK_INVALID)
    {
        retVal = E_NOT_OK;
    }
    else if (checkRequiredSts == DEM_DTR_DEBOUNCEDIR_CHECK_NOTREQUIRED)
    {
        retVal = E_OK;
    }
    else if((retVal_getEvtSts == E_OK) && (EventFailed_u8 == TestResultsFailed))
    {
        /* The result matches the debouncing direction */
        retVal = E_OK;
    }
    else
    {
        /* Do nothing, return E_NOT_OK */
    }

    return retVal;
}

/**********************************************************************************************************
 Function name    : rba_DemObdBasic_CheckDtrConditions
 Syntax           : Std_ReturnType rba_DemObdBasic_CheckDtrConditions(Dem_DtrIdType DTRId,
                                                                      sint32 TestResult,
                                                                      sint32 LowerLimit,
                                                                      sint32 UpperLimit,
                                                                      Dem_DTRControlType Ctrlval)

 Description      : Check the conditions of DtrId are fulfill or not.
 Parameter        : DTRId -> Identification of a DTR element by assigned DTRId.
                  : TestResult -> Latest test result
                  : LowerLimit -> Lower limit value associated to the latest test result
                  : UpperLimit -> Upper limit value associated to the latest test result
                  : Ctrlval    -> Control value of the DTR to support its interpretation Dem-internally.
 Return value     : E_OK: Conditions are fulfill
                  : E_NOT_OK: Conditions are not fulfill
***********************************************************************************************************/
/* [$DD_BSWCODE 17927] */
static Std_ReturnType rba_DemObdBasic_CheckDtrConditions(Dem_DtrIdType DTRId,
                                                         sint32 TestResult,
                                                         sint32 LowerLimit,
                                                         sint32 UpperLimit,
                                                         Dem_DTRControlType Ctrlval)
{
    Std_ReturnType retVal = E_NOT_OK;
    Dem_DebouncingStateType DebouncingState_u8;
    boolean areStocoFulfilled;
    boolean isEnCoFulfilled;
    Dem_EventIdType DtrEventIdRef = rba_DemObdBasic_Dtr_GetDtrEventIdRef(DTRId);
    uint8 DtrUpdateKind_u8 = rba_DemObdBasic_Dtr_GetDtrUpdateKind(DTRId);

    if(rba_DemObdBasic_Dtr_GetDtrObdTid(DTRId) != DEM_DTR_TID_INVALID)
    {
        if((DtrEventIdRef != DEM_EVENTID_INVALID ) && (DtrEventIdRef <= DEM_EVENTID_COUNT))
        {
            areStocoFulfilled = Dem_StoCoAreAllFulfilled(Dem_EvtParam_GetStorageConditions(DtrEventIdRef));
            isEnCoFulfilled = Dem_EvtAllEnableConditionsFulfilled(DtrEventIdRef);
            if((!Dem_EvtIsSuppressed(DtrEventIdRef)) && isEnCoFulfilled && areStocoFulfilled)
            {
                if(DtrUpdateKind_u8 == DEM_OBDDTR_UPDATEKIND_UPDATE_STEADY)
                {
                    if(Dem_GetDebouncingOfEvent(DtrEventIdRef, &DebouncingState_u8) == E_OK)
                    {
                        /* Event pre-debouncing within Dem is stuck at the FAIL or PASS limit */
                        if((DebouncingState_u8 & DEM_DTR_UPDATE) == DEM_DTR_UPDATE)
                        {
                            retVal = rba_DemObdBasic_Dtr_CheckTestResultConsistency(DtrEventIdRef, TestResult, LowerLimit, UpperLimit, Ctrlval);
                        }
                    }
                }
                else if(DtrUpdateKind_u8 == DEM_OBDDTR_UPDATEKIND_UPDATE_ALWAYS)
                {
                    retVal = E_OK;
                }
                else
                {
                    /* Intentionally do nothing */
                }
            }
            else
            {
                /* Event is suppressed/EnableCondition/StorageCondition is not fullfilled. Return E_NOT_OK */
            }
        }
        else if(DtrEventIdRef == DEM_EVENTID_INVALID)
        {
            /* DtrUpdateKind is set to DTR_UPDATEKIND_UPDATE_ALWAYS for DTR with no DtrEventIdRef */
            /* Always update DTR data in this case */
            retVal = E_OK;
        }
        else
        {
            /* Do nothing */
        }
    }
    return retVal;
}


/*******************************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_UpdateObdmidRuntimeMask
 Syntax           : void rba_DemObdBasic_Dtr_UpdateObdmidRuntimeMask(uint32 DtrId , Dem_DTRControlType ctrl)
 Description      : Update Available OBDMIDs runtime mask
 Parameter        : DtrId -> Identification of a DTR element by assigned DTRId.
                  : ctrl -> Control value of the DTR to support its interpretation Dem-internally.
 Return value     : None
*******************************************************************************************************************/
/* [$DD_BSWCODE 17274] */
static void rba_DemObdBasic_Dtr_UpdateObdmidRuntimeMask(Dem_DtrIdType DtrId , Dem_DTRControlType ctrl)
{
    uint16 idxOffset_u16;    /* Local traverse over the offset structure */
    uint8 idxTID_u8;       /* Local traverse over the number of TIDs */
    uint16 offset = 65535u;
    uint8 numberOfTIDs = 255u;
    boolean IsObdmidFound = FALSE;
    boolean IsObdmidSupported = FALSE;
    uint8 ObdmidValue;
    uint32 *dataBitMask_u32;
    /* Bit mask with relevant Obdmid to be set*/
    uint32 ObdmidBitMask;

    DEM_ENTERLOCK_MON();

    ObdmidValue = rba_DemObdBasic_Dtr_GetDtrObdMid(DtrId);
    dataBitMask_u32 = &rba_DemObdBasic_Dtr_ObdmidRuntimeMasks(ObdmidValue / 0x20);
    ObdmidBitMask = (0x80000000u >> (((ObdmidValue % 0x20) - 1)));

    if(ctrl != DEM_DTR_CTL_INVISIBLE)
    {
        rba_DiagLib_Bit32SetBitMask(dataBitMask_u32, ObdmidBitMask);
    }
    else
    {
        for(idxOffset_u16 = 0; idxOffset_u16 <= DEM_CFG_NUM_OF_OBDMIDS; idxOffset_u16++)
        {
            /* Last element indicates the invalid obdmid, the found index must be smaller than DEM_CFG_NUM_OF_OBDMIDS*/
            if((ObdmidValue == rba_DemObdBasic_Dtr_GetObdmidForOffset(idxOffset_u16)) && (idxOffset_u16 < DEM_CFG_NUM_OF_OBDMIDS))
            {
                offset = rba_DemObdBasic_Dtr_GetOffset(idxOffset_u16);
                numberOfTIDs = (uint8)(rba_DemObdBasic_Dtr_GetOffset(idxOffset_u16 + 1) - offset);
                IsObdmidFound = TRUE;
                break;
            }
        }

        if(IsObdmidFound == TRUE)
        {
            for(idxTID_u8 = 0; idxTID_u8 < numberOfTIDs; idxTID_u8++ )
            {
                /* Status is DEM_DTRSTATUS_VISIBLE means,this OBDMID is still supported */
                if(rba_DemObdBasic_Dtr_DtrStatus(rba_DemObdBasic_Dtr_GetDtrIdFromTIDIndex(offset + idxTID_u8)) == DEM_DTRSTATUS_VISIBLE)
                {
                    /* If one of the DTRs having the same Obdmid is visible, mark the Obdmid as supported/available */
                    IsObdmidSupported = TRUE;
                    break;
                }
            }
        }
        else
        {
            /* Do nothing */
        }

        if((IsObdmidSupported == FALSE) && (IsObdmidFound == TRUE))
        {
            /* Obdmid is found but all DTRs in this OBDMID are INVISIBLE*/
            /* Clear the corresponding runtime bit mask */
            rba_DiagLib_Bit32ClearBitMask(dataBitMask_u32, ObdmidBitMask);
        }
        else
        {
            /* Do nothing, Obdmid is not found. Otherwise, the corresponding bit mask has been set before */
        }
    }
    DEM_EXITLOCK_MON();
}


/**********************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_ApplyCompuMethod
 Syntax           : uint16 rba_DemObdBasic_Dtr_ApplyCompuMethod(Dem_DtrIdType DTRId, sint32 value)
 Description      : Apply computational method on the sint32 value
 Parameter        : DTRId -> Identification of a DTR element by assigned DTRId.
                  : value -> sint32 value to be converted
 Return value     : converted_value: uint16 coverted value.
***********************************************************************************************************/
/* [$DD_BSWCODE 17270] */
static uint16 rba_DemObdBasic_Dtr_ApplyCompuMethod(Dem_DtrIdType DTRId, sint32 value)
{
    uint16 converted_value;

    /* By default, the float value configuration for Denominator0, Numerator0 and Numerator1 are normalized into integer values, in order to avoid usage of float number.
     * The meaning and result of linear conversion is retained.
    **/
    /* In the calculation formula, the casting to sint64 is required as the multiplication of sint32 value to the Numerator1 could lead to out of range value*/
    /* Users should take care of the value configured for Denorminator0, Numerator0, Numerator1 in order to have desired linear conversion. */
    /* At the end of the linear conversion formula, the result is casted to uint16, assuming that users already take care of the output range */

    converted_value = ((uint16)((((sint64)value * (sint64)rba_DemObdBasic_Dtr_GetDtrNum1(DTRId)) + ((sint64)rba_DemObdBasic_Dtr_GetDtrNum0(DTRId))) / ((sint64)rba_DemObdBasic_Dtr_GetDtrDen0(DTRId))));
    return converted_value;
}


/**********************************************************************************************************
 Function name    : rba_DemObdBasic_Dtr_SetDtrValue
 Syntax           : void rba_DemObdBasic_Dtr_SetDtrValue(sint32 TestResult,
                                                        sint32 LowerLimit,
                                                        sint32 UpperLimit,
                                                        Dem_DTRControlType Ctrlval)

 Description      : convert and update Dtr data
 Parameter        : TestResult -> Latest test result
                  : LowerLimit -> Lower limit value associated to the latest test result
                  : UpperLimit -> Upper limit value associated to the latest test result
                  : Ctrlval    -> Control value of the DTR to support its interpretation Dem-internally.
***********************************************************************************************************/
/* [$DD_BSWCODE 17273] */
static void rba_DemObdBasic_Dtr_SetDtrValue(Dem_DtrIdType DTRId,
                                            sint32 TestResult,
                                            sint32 LowerLimit,
                                            sint32 UpperLimit,
                                            Dem_DTRControlType Ctrlval)
{
    uint16 convertedTestResult;
    uint16 convertedLowerLimit;
    uint16 convertedUpperLimit;

    DEM_ENTERLOCK_MON();
    switch (Ctrlval)
    {
        case DEM_DTR_CTL_INVISIBLE:
            rba_DemObdBasic_Dtr_DtrStatus(DTRId) = DEM_DTRSTATUS_INVISIBLE;
            break;

        case DEM_DTR_CTL_RESET:
            rba_DemObdBasic_Dtr_DtrTestValue(DTRId) = DTR_ZERO;
            rba_DemObdBasic_Dtr_DtrLowLimitValue(DTRId) = DTR_ZERO;
            rba_DemObdBasic_Dtr_DtrUppLimitValue(DTRId) = DTR_ZERO;
            rba_DemObdBasic_Dtr_DtrStatus(DTRId) = DEM_DTRSTATUS_VISIBLE;
            break;

        case DEM_DTR_CTL_NO_MAX:
        case DEM_DTR_CTL_NO_MIN:
        case DEM_DTR_CTL_NORMAL:
            convertedTestResult = rba_DemObdBasic_Dtr_ApplyCompuMethod(DTRId, TestResult);
            convertedLowerLimit = rba_DemObdBasic_Dtr_ApplyCompuMethod(DTRId, LowerLimit);
            convertedUpperLimit = rba_DemObdBasic_Dtr_ApplyCompuMethod(DTRId, UpperLimit);

            /* If rounding effects lead to an unintended change of the meaning, 
             * the thresholds shall be shifted by one increment accordingly to restore the result
             */
            if ((TestResult < LowerLimit) && (convertedTestResult >= convertedLowerLimit))
            {
                convertedLowerLimit++;
            }

            if ((TestResult > UpperLimit) && (convertedTestResult <= convertedUpperLimit))
            {
                convertedUpperLimit--;
            }

            rba_DemObdBasic_Dtr_DtrTestValue(DTRId) = convertedTestResult;
            rba_DemObdBasic_Dtr_DtrLowLimitValue(DTRId) = convertedLowerLimit;
            rba_DemObdBasic_Dtr_DtrUppLimitValue(DTRId) = convertedUpperLimit;
            rba_DemObdBasic_Dtr_DtrStatus(DTRId) = DEM_DTRSTATUS_VISIBLE;
            break;

        default:
            /* Intentionally do nothing */
            break;
    }
    DEM_EXITLOCK_MON();
}

/**********************************************************************************************************
 Function name    : Dem_SetDTR
 Syntax           : Std_ReturnType Dem_SetDTR(uint16 DTRId,
                                              sint32 TestResult,
                                              sint32 LowerLimit,
                                              sint32 UpperLimit,
                                              Dem_DTRControlType Ctrlval)
 Description      : Reports a DTR result with lower and upper limit.
 Parameter        : [in] DTRId -> Identification of a DTR element by assigned DTRId.
                  : [in] TestResult -> Latest test result
                  : [in] LowerLimit -> Lower limit value associated to the latest test result
                  : [in] UpperLimit -> Upper limit value associated to the latest test result
                  : [in] Ctrlval-> Control value of the DTR to support its interpretation Dem-internally.
 Return value     : E_OK: Report of DTR result successful
                  : E_NOT_OK: Report of DTR result failed
***********************************************************************************************************/
/* [$DD_BSWCODE 17266] */
Std_ReturnType Dem_SetDTR(Dem_DtrIdType DTRId,
                          sint32 TestResult,
                          sint32 LowerLimit,
                          sint32 UpperLimit,
                          Dem_DTRControlType Ctrlval)
{
    Std_ReturnType retVal = E_NOT_OK;

    if(!Dem_ClearIsInProgress())
    {
        if(rba_DemObdBasic_CheckDtrConditions(DTRId, TestResult, LowerLimit, UpperLimit, Ctrlval) == E_OK)
        {
            rba_DemObdBasic_Dtr_SetDtrValue(DTRId, TestResult, LowerLimit, UpperLimit, Ctrlval);
            rba_DemObdBasic_Dtr_UpdateObdmidRuntimeMask(DTRId, Ctrlval);
            retVal = E_OK;
        }
        else
        {
            /* Do nothing, report of DTR result failed as condition does not meet */
        }
    }

    return retVal;
}


/***************************************************************************************************
 Function name    : Dem_DcmGetAvailableOBDMIDs
 Syntax           : Std_ReturnType Dem_DcmGetAvailableOBDMIDs(uint8 Obdmid, uint32* Obdmidvalue)
 Description      : Reports the value of a requested "availability-OBDMID" to the DCM upon
                    a Service $06 request.
 Parameter        : Obdmid -> Availablity OBDMID ($00,$20, $40...)
                  : Obdmidvalue -> Bit coded information on the support of OBDMIDs.
 Return value     : E_OK: Report of DTR result successful
                  : E_NOT_OK: Report of DTR result failed
***************************************************************************************************/
/* [$DD_BSWCODE 17263] */
Std_ReturnType Dem_DcmGetAvailableOBDMIDs(uint8 Obdmid, uint32* Obdmidvalue)
{
    uint8 idxObdmidMsk_u8;    /* Local traverse over the Obdmid runtime mask */
    uint32 AvailableObdmidMask_u32;
    Std_ReturnType retVal = E_NOT_OK;
    uint8 ObdmidMaskIndex = Obdmid/0x20;


    /*Get the mask value by index*/
    DEM_ENTERLOCK_MON();
    AvailableObdmidMask_u32 = rba_DemObdBasic_Dtr_ObdmidRuntimeMasks(ObdmidMaskIndex);

    for(idxObdmidMsk_u8 = (ObdmidMaskIndex + 1); idxObdmidMsk_u8 < DEM_NUM_OF_OBDMIDMASK; idxObdmidMsk_u8++)
    {
        if(rba_DemObdBasic_Dtr_ObdmidRuntimeMasks(idxObdmidMsk_u8) != 0u)
        {
            /* Set the last bit of Available Obdmid Mask to 1 to indicate that there are supported Obdmid in subsequence ranges */
            rba_DiagLib_Bit32SetBit(&AvailableObdmidMask_u32, 0);
            break;
        }
    }
    DEM_EXITLOCK_MON();

    if(AvailableObdmidMask_u32 != DTR_ZERO)
    {
        *Obdmidvalue = AvailableObdmidMask_u32;
        retVal = E_OK;
    }

    return retVal;
}

/***************************************************************************************************
 Function name    : Dem_DcmGetNumTIDsOfOBDMID
 Syntax           : Std_ReturnType Dem_DcmGetNumTIDsOfOBDMID(uint8 Obdmid, uint8* numberOfTIDs)
 Description      : Gets the number of TIDs per (functional) OBDMID.
 Parameter        : [in] Obdmid -> OBDMID subject of the request to identify the number
                    of assigned TIDs
                  : [out] numberOfTIDs -> Number of assigned TIDs for the requested OBDMID.
 Return value     : E_OK: get number of TIDs successfully
                  : E_NOT_OK: get number of TIDs failed
***************************************************************************************************/
/* [$DD_BSWCODE 17926] */
Std_ReturnType Dem_DcmGetNumTIDsOfOBDMID(uint8 Obdmid, uint8* numberOfTIDs)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint16 index_u16;
    uint32 dataBitMask_u32 = rba_DemObdBasic_Dtr_ObdmidRuntimeMasks(Obdmid / 0x20);
    uint8 ObdmidBitPos_u8 = (0x20 - (Obdmid % 0x20));

    /*Check if ObdMid is available on ObdMid Mask*/
    if(RBA_DIAGLIB_ISBITSET32(dataBitMask_u32,ObdmidBitPos_u8))
    {
        for(index_u16 = 0; index_u16 <= DEM_CFG_NUM_OF_OBDMIDS; index_u16++)
        {
            /* Last element indicates the invalid obdmid, the found index must be smaller than DEM_CFG_NUM_OF_OBDMIDS */
            if((Obdmid == rba_DemObdBasic_Dtr_GetObdmidForOffset(index_u16)) && (index_u16 < DEM_CFG_NUM_OF_OBDMIDS))
            {
                *numberOfTIDs = (uint8)(rba_DemObdBasic_Dtr_GetOffset(index_u16 + 1) - rba_DemObdBasic_Dtr_GetOffset(index_u16));
                retVal = E_OK;
                break;
            }
        }
    }

    return retVal;
}

/**********************************************************************************************************
 Function name    : Dem_DcmGetDTRData
 Syntax           : Std_ReturnType Dem_DcmGetDTRData(uint8 Obdmid,
                                                    uint8 TIDindex,
                                                    uint8* TIDvalue,
                                                    uint8* UaSID,
                                                    uint16* Testvalue,
                                                    uint16* Lowlimvalue,
                                                    uint16* Upplimvalue)
 Description      : Reports a DTR data along with TID-value, UaSID, test result
                    with lowerand upper limit.
 Parameter        : [in] Obdmid -> Identification of a DTR element by assigned DTRId.
                  : [in] TIDindex -> Index of the TID within the DEM.
                  : [out] TIDvalue -> TID to be put on the tester reponse
                  : [out] UaSID:UaSID to be put on the tester reponse
                  : [out] Testvalue -> Latest test result
                  : [out] Lowlimvalue -> Lower limit value associated to the latest test result
                  : [out] Upplimvalue -> Upper limit value associated to the latest test result
 Return value     : E_OK: Report of DTR result successful
                  : E_NOT_OK: Report of DTR result failed
***********************************************************************************************************/
/* [$DD_BSWCODE 17264] */
Std_ReturnType Dem_DcmGetDTRData(uint8 Obdmid,
                                uint8 TIDindex,
                                uint8* TIDvalue,
                                uint8* UaSID,
                                uint16* Testvalue,
                                uint16* Lowlimvalue,
                                uint16* Upplimvalue)
{

    Std_ReturnType retVal = E_NOT_OK;
    Dem_DtrIdType DtrId = 0;
    Dem_EventIdType DtrEventIdRef;

    DEM_ENTERLOCK_MON();

    if(rba_DemObdBasic_Dtr_FindDtrId(Obdmid, TIDindex, &DtrId) == E_OK)
    {
        if(rba_DemObdBasic_Dtr_DtrStatus(DtrId) != DEM_DTRSTATUS_INVISIBLE)
        {
            *TIDvalue = rba_DemObdBasic_Dtr_GetDtrObdTid(DtrId);
            *UaSID = rba_DemObdBasic_Dtr_GetDtrUaSId(DtrId);

            DtrEventIdRef = rba_DemObdBasic_Dtr_GetDtrEventIdRef(DtrId);

            if((DtrEventIdRef != DEM_EVENTID_INVALID) && (DtrEventIdRef <= DEM_EVENTID_COUNT))
            {
                if(!Dem_EvtIsSuppressed(DtrEventIdRef))
                {
                    *Testvalue   = rba_DemObdBasic_Dtr_DtrTestValue(DtrId);
                    *Lowlimvalue = rba_DemObdBasic_Dtr_DtrLowLimitValue(DtrId);
                    *Upplimvalue = rba_DemObdBasic_Dtr_DtrUppLimitValue(DtrId);

                    retVal = E_OK;
                }
            }
            else if(DtrEventIdRef == DEM_EVENTID_INVALID)
            {
                *Testvalue   = rba_DemObdBasic_Dtr_DtrTestValue(DtrId);
                *Lowlimvalue = rba_DemObdBasic_Dtr_DtrLowLimitValue(DtrId);
                *Upplimvalue = rba_DemObdBasic_Dtr_DtrUppLimitValue(DtrId);

                retVal = E_OK;
            }
            else
            {
                /* Do nothing */
            }
        }
        else
        {
            /* rba_DemObdBasic_Dtr_DtrStatus is DEM_DTRSTATUS_INVISIBLE, treat the Dtr as if it is not integrated. */
        }
    }
    else
    {
        /* The DTR cannot be found with correspond to Obdmid and TIDindex, return E_NOT_OK */
    }
    DEM_EXITLOCK_MON();

    return retVal;
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif /* DEM_CFG_OBD_DTR */
/* END BSW-8793 */

