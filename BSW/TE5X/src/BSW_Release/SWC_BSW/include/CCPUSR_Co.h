/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : Project specific part of the CCP                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_Co.h                                                                                     */
/* !Description     : CCPUSR types                                                                                    */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/

#ifndef CCPUSR_CO_H
#define CCPUSR_CO_H

#include "CCP_Typ.h"

/**********************************************************************************************************************/
/* Check that Conditional Compilation options are defined                                                             */
/**********************************************************************************************************************/
#ifndef CCP_coACVD
   #error CCP_coACVD not defined
#endif
#ifndef CCP_coDEACVD
   #error CCP_coDEACVD not defined
#endif

/**********************************************************************************************************************/
/* CONDITIONAL COMPILATION OPTIONS                                                                                    */
/**********************************************************************************************************************/
#define CCP_coDAQ_RESU_ADDL_INFOS CCP_coDEACVD
#define CCPUSR_coDAQ_SPY          CCP_coACVD

#endif /* CCPUSR_CO_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
