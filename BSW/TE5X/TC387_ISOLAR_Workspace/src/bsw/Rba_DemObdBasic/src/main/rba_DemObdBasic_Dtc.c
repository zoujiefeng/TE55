

#include "rba_DemObdBasic_Prv.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

Dem_DtcCodeType rba_DemObdBasic_Dtc_GetCode(Dem_DtcIdType dtcId)
{
    Dem_DtcCodeType dtcCode = DEM_OBD_DTC_INVALID;

    if (rba_DemObdBasic_Dtc_IsEmissionRelated(dtcId))
    {
#if (DEM_CFG_OBD_DTC_CONFIG != DEM_CFG_OBD_DTC_CONFIG_ON)
        dtcCode = (Dem_GetDtcCode(dtcId)) & (DEM_OBD_DTC_MASK);
#else
        dtcCode = ((Dem_Cfg_Dtc_GetObd_DtcCode(dtcId) << 8) & (DEM_OBD_DTC_MASK));
#endif
    }
    return dtcCode;
}

static void rba_DemObdBasic_Dtc_GetDtcAndDtcStatus(Dem_DtcIdType dtcId, uint32* DTC, uint8* DTCStatus)
{
    *DTC = rba_DemObdBasic_Dtc_GetCode(dtcId);

    *DTCStatus = Dem_DtcStatusByteRetrieve(dtcId);

    *DTCStatus = (uint8)(*DTCStatus & DEM_CFG_DTCSTATUS_AVAILABILITYMASK);
}


Std_ReturnType rba_DemObdBasic_Dtc_GetNextFilteredDTC(Dem_DTCFilterState* dtcFilter_p, uint32* DTC, uint8* DTCStatus)
{
    Dem_DtcIdType dtcId;
    boolean dtcFound = FALSE;
    Std_ReturnType retVal = DEM_NO_SUCH_ELEMENT;

    //If the DTC origin is PRIMARY
    if(Dem_EvMemEventMemoryLocIteratorIsValid(&(dtcFilter_p->obdFilter.evMemLocIt), DEM_CFG_EVMEM_MEMID_PRIMARY))
    {
        dtcFound = rba_DemObdBasic_EvMem_GetNextFilteredDtcId(dtcFilter_p, &dtcId);
    }

    //If the DTC origin is PERMANENT
    if(rba_DemObdBasic_PdtcMem_LocIteratorIsValid(&(dtcFilter_p->obdFilter.pdtcLocIt)))
    {
        dtcFound = rba_DemObdBasic_PdtcMem_GetNextFilteredDtcId(&(dtcFilter_p->obdFilter.pdtcLocIt), &dtcId);
    }

    if(dtcFound)
    {
        rba_DemObdBasic_Dtc_GetDtcAndDtcStatus(dtcId, DTC, DTCStatus);
        dtcFilter_p->numberOfMatchingDTCs++;
        retVal =  E_OK;
    }

    return retVal;
}

void rba_DemObdBasic_Dtc_DtcFilterInit(Dem_DTCFilterState* dtcFilter_p)
{
    Dem_EvMemEventMemoryLocIteratorInvalidate(&(dtcFilter_p->obdFilter.evMemLocIt), DEM_CFG_EVMEM_MEMID_PRIMARY);
    rba_DemObdBasic_PdtcMem_LocIteratorInvalidate(&(dtcFilter_p->obdFilter.pdtcLocIt));
}

void rba_DemObdBasic_Dtc_SetDTCFilter(Dem_DTCFilterState* dtcFilter_p, Dem_DTCOriginType DTCOrigin)
{
    if(DTCOrigin == DEM_DTC_ORIGIN_PRIMARY_MEMORY)
    {
        Dem_EvMemEventMemoryLocIteratorNew(&(dtcFilter_p->obdFilter.evMemLocIt),DEM_CFG_EVMEM_MEMID_PRIMARY);
    }
    else if(DTCOrigin == DEM_DTC_ORIGIN_PERMANENT_MEMORY)
    {
        rba_DemObdBasic_PdtcMem_LocIteratorNew(&(dtcFilter_p->obdFilter.pdtcLocIt));
    }
    else
    {
        //To avoid MISRA
    }
}

boolean rba_DemObdBasic_Dtc_DTCFilterMatches (Dem_DtcIdType dtcId, const Dem_DTCFilterState* DemDTCFilter){

    boolean returnValue = TRUE;

    if( (DemDTCFilter->DTCFormat == DEM_DTC_FORMAT_OBD) &&
        (DemDTCFilter->DTCOrigin == DEM_DTC_ORIGIN_PRIMARY_MEMORY))
    {
        returnValue = rba_DemObdBasic_Dtc_IsEmissionRelated(dtcId);
    }else if ( ( DemDTCFilter->DTCStatusMask == 0 ) &&
              ( DemDTCFilter->DTCOrigin == DEM_DTC_ORIGIN_PERMANENT_MEMORY))
    {
        returnValue = rba_DemObdBasic_PdtcMem_IsPdtcServ0A(dtcId);
    }

    return returnValue;
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

