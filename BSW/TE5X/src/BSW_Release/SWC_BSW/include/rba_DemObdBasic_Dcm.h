

#ifndef RBA_DEMOBDBASIC_DCM_H
#define RBA_DEMOBDBASIC_DCM_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/* BSW-13093 */
#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) || (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU))
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
Std_ReturnType Dem_DcmReadDataOfPID21(uint8* PID21value);

#endif /* ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) || (DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU)) */

#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)
/**
 **********************************************************************************************************************
 * Dem_DcmReadDataOfPID31
 * 
 * \brief Interface to get the value stored in the internal PID $31 counter.
 * \note  it returns the value stored in the internal PID $31 counter.There are no buffer size checks.
 * Caller should ensure buffer referenced by PID31value is of the correct size.
 *
 * \param[out]   uint8*      PID31value          Output buffer with expected size of at least 2 bytes
 * 
 * \return      Std_ReturnType                   Read status
 */
 /* [$DD_BSWCODE 30815] */
Std_ReturnType Dem_DcmReadDataOfPID31(uint8* PID31value);

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
Std_ReturnType Dem_DcmReadDataOfPID4D(uint8* PID4Dvalue);

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
Std_ReturnType Dem_DcmReadDataOfPID4E(uint8* PID4Evalue);

#endif /*#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)*/
/* END BSW-13093 */


/**
 * @ingroup DEM_H
 *
 * Dem318: Service to report the value of PID $01 - Monitor status since DTCs cleared (4 bytes) - computed by the Dem.
 *
 * @param [out] PID01value Buffer containing the contents of PID $01 computed by the Dem.
 *                         The buffer is provided by the Dcm with the appropriate size, i.e.
 *                         during configuration, the Dcm identifies the required size from the
 *                         largest PID in order to configure a PIDBuffer.
 *
 * @return E_NOT_OK is returned when OBD support is not enabled in Dem. Otherwise, E_OK is returned.
 */
Std_ReturnType Dem_DcmReadDataOfPID01 (uint8* PID01value);


/**
 * @ingroup DEM_H
 *
 * Dem325: Service to report the value of PID $1C - OBD requirements to which vehicle or engine is certified (1 byte)- computed by the Dem.
 *
 * @param [out] PID1Cvalue Buffer containing the contents of PID $1C computed by the Dem.
 *                         The buffer is provided by the Dcm with the appropriate size, i.e.
 *                         during configuration, the Dcm identifies the required size from the
 *                         largest PID in order to configure a PIDBuffer.
 *
 * @return  Always E_OK is returned, as E_NOT_OK will never appear.
 */
Std_ReturnType Dem_DcmReadDataOfPID1C (uint8* PID1Cvalue);


/**
 * @ingroup DEM_H
 *
 * Dem320: Service to report the value of PID $30 - Number of warm-ups since DTCs cleared (1 byte) - computed by the Dem.
 *
 * @param [out] PID30value Buffer containing the contents of PID $30 computed by the Dem.
 *                         The buffer is provided by the Dcm with the appropriate size, i.e.
 *                         during configuration, the Dcm identifies the required size from the
 *                         largest PID in order to configure a PIDBuffer.
 *
 * @return  Always E_OK is returned, as E_NOT_OK will never appear.
 */
Std_ReturnType Dem_DcmReadDataOfPID30 (uint8* PID30value);


/**
 * @ingroup DEM_H
 *
 * Dem322: Service to report the value of PID $41 - Monitor status this driving cycle (4 bytes) - computed by the Dem.
 *
 * @param [out] PID41value Buffer containing the contents of PID $41 computed by the Dem.
 *                         The buffer is provided by the Dcm with the appropriate size, i.e.
 *                         during configuration, the Dcm identifies the required size from the
 *                         largest PID in order to configure a PIDBuffer.
 *
 * @return E_NOT_OK is returned when support for OBD or PID$41 computation is not enabled in Dem. \n
 * Otherwise, E_OK is returned.
 */
Std_ReturnType Dem_DcmReadDataOfPID41 (uint8* PID41value);


/**
 * @ingroup DEM_H
 */
Std_ReturnType Dem_DcmGetInfoTypeValue08(Dcm_OpStatusType OpStatus, uint8* Iumprdata08, uint8* Iumprdata08BufferSize);


/**
 * @ingroup DEM_H
 */
Std_ReturnType Dem_DcmGetInfoTypeValue0B(Dcm_OpStatusType OpStatus,uint8* Iumprdata0B, uint8* Iumprdata0BBufferSize);


/**
 * @ingroup DEM_H
 *
 * Dem327:  Gets data element per PID and index of the most important freeze frame being selected for the output of service $02.
 *          The function stores the data in the provided DestBuffer.
 *
 * @param [in] PID This parameter is an identifier for a PID as defined in ISO15031-5.
 *
 * @param [in] DataElementIndexOfPID Data element index of this PID according to the Dcm configuration of service $02.
 *                                   It is zero-based and consecutive, and ordered by the data element positions
 *                                   (configured in Dcm, refer to Dem597).
 *
 * @param [in,out] DestBuffer This parameter contains a byte pointer that points to the buffer, to which the data element of the PID shall be written to.
 *                           The format is raw hexadecimal values and contains no header-information.
 *
 * @param [in,out] BufSize When the function is called this parameter contains the maximum number of data bytes that can be written to the buffer.
 *                        The function returns the actual number of written data bytes in this parameter.
 *
 * @return  E_OK Freeze frame data was successfully reported\n
 *          E_NOT_OK Freeze frame data was not successfully reported
 */
Std_ReturnType Dem_DcmReadDataOfOBDFreezeFrame (uint8 PID, uint8 DataElementIndexOfPID, uint8* DestBuffer, uint16* BufSize);

/**
 * @ingroup DEM_H
 *
 * Dem624:  Gets DTC by freeze frame record number.
 *
 * @param [in] FrameNumber Unique identifier for a freeze frame record as defined in ISO 15031-5.
 *                         The value 0x00 indicates the complete OBD freeze frame.
 *                         Other values are reserved for future functionality.
 *
 * @param[in]  DTCFormat   Output format of the DTC value.
 *
 * @param [out] DTC Diagnostic Trouble Code. If the return value of the function is other than E_OK this parameter does not contain valid data.
 *
 * @return  E_OK: operation was successful\n
 *          E_NOT_OK: no DTC available
 */
Std_ReturnType Dem_DcmGetDTCOfOBDFreezeFrame(uint8 FrameNumber, uint32* DTC, Dem_DTCFormatType DTCFormat);


/**
 * @ingroup DEM_H
 *
 * This API is used to check if Full Clear using OBD Service is possible at the time this API is called.
 *
 * @return 	E_OK is returned if Full Clear is possible. E_NOT_OK is returned if Full Clear is not possible.
 */
Std_ReturnType Dem_IsOBDFullClearPossible(void);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif
