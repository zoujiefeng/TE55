/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_DEM
 * Description: Testcode for ASW_DEM
 * Version         Author:       Date               Update information
 * 1.0             HAD1HC        7-Nov-2018         Create software
 * 1.1             AGT1HC        19-Nov-2021        Update the Banner
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/

#ifndef AES128_H_
#define AES128_H_

#include "Std_Types.h"
#include "rte_Type.h"

extern void UDS27_CalcUnlockKey(const uint8 *seed, const uint8 *key, uint8 *result);
extern uint8 UDS27_CheckKey(const uint8 *calc_key, const uint8 *tester_key);

#endif /* AES128_H_ */
