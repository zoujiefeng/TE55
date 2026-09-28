
/* BSW-8793 */
#ifndef RBA_DEMOBDBASIC_DTR_H
#define RBA_DEMOBDBASIC_DTR_H


#if DEM_CFG_OBD_DTR


#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/**
 *
 *  @ingroup RBA_DEMOBDBASIC_DTR_H
 * 
 * Reports the value of a requested "availability-OBDMID" to the DCM
 * upon a Service $06 request. Derived from that the tester displays
 * the supported tests a mechanic can select from. API is needed in
 * OBD-relevant ECUs only.
 *
 * @param in        : Obdmid        - Availablity OBDMID ($00,$20, $40...).
 *    
 * @param out       : Obdmidvalue   - Bit coded information on the support of OBDMIDs.
 *
 * @return          : Std_ReturnType:   - E_OK: Report of DTR result successful.
 *                                      - E_NOT_OK: Report of DTR result failed.
 */
extern Std_ReturnType Dem_DcmGetAvailableOBDMIDs(uint8 Obdmid, uint32* Obdmidvalue);

/**
 *
 *  @ingroup RBA_DEMOBDBASIC_DTR_H
 * 
 * Gets the number of TIDs per (functional) OBDMID.This can be used by
 * the DCM to iteratively request for OBD/TID result data within a loop from
 * 0. . . .numberOfTIDs-1 API is needed in OBD-relevant ECUs only.
 *
 * @param in        : Obdmid        - OBDMID subject of the request to identify the number of assigned TIDs.
 *    
 * @param out       : numberOfTIDs   - Number of assigned TIDs for the requested OBDMID. 
 *                                    Used as loop value for the DCM to retrieve all OBD/TID result data.
 *
 * @return          : Std_ReturnType:   - E_OK: get number of TIDs successful.
 *                                      - E_NOT_OK: get number of TIDs failed.
 */
extern Std_ReturnType Dem_DcmGetNumTIDsOfOBDMID(uint8 Obdmid,uint8* numberOfTIDs);

/**
 *  @ingroup RBA_DEMOBDBASIC_DTR_H
 * 
 * Reports a DTR data along with TID-value, UaSID, test result with lower
 * and upper limit.
 * API is needed in OBD-relevant ECUs only.
 *
 * @param in        : Obdmid            - Identification of a DTR element by assigned DTRId.
 * @param in        : TIDindex          - Index of the TID within the DEM. Runs from 0 
 *                                        to "numberOfTIDs" obtained in the call to
 *                                        Dem_DcmGetNumTIDsOfOBDMID().
 * 
 * @param out       : TIDvalue          - TID to be put on the tester reponse.
 * @param out       : UaSID             - UaSID to be put on the tester reponse. 
 * @param out       : Testvalue         - Latest test result.
 * @param out       : Lowlimvalue       - Lower limit value associated to the latest test result.
 * @param out       : Upplimvalue       - Upper limit value associated to the latest test result.
 * @return          : Std_ReturnType:   - E_OK: Report of DTR result successful.
 *                                      - E_NOT_OK: Report of DTR result failed.
 */
extern Std_ReturnType Dem_DcmGetDTRData(uint8 Obdmid, 
                                        uint8 TIDindex,
                                        uint8* TIDvalue,
                                        uint8* UaSID,
                                        uint16* Testvalue,
                                        uint16* Lowlimvalue,
                                        uint16* Upplimvalue);


/**
 *  @ingroup RBA_DEMOBDBASIC_DTR_H
 * 
 * Reports a DTR data along with TID-value, UaSID, test result with lower
 * and upper limit.
 * API is needed in OBD-relevant ECUs only.
 *
 * @param in        : DTRId             - Identification of a DTR element by assigned DTRId.
 * @param in        : TestResult        - Test result of DTR.
 * @param in        : LowerLimit        - Lower limit of DTR.
 * @param in        : UpperLimit        - Control value of the DTR to support its interpretation.
 *                                        Dem-internally.
 * @param in        : Ctrlval           - Latest test result.
 *
 * @return          : Std_ReturnType:   - E_OK: Report of DTR result successful.
 *                                      - E_NOT_OK: Report of DTR result failed.
 */
extern Std_ReturnType Dem_SetDTR(Dem_DtrIdType DTRId,
                                sint32 TestResult,
                                sint32 LowerLimit,
                                sint32 UpperLimit,
                                Dem_DTRControlType Ctrlval);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif /* DEM_CFG_OBD_DTR */

#endif /* RBA_DEMOBDBASIC_DTR_H */
/* END BSW-8793 */
