/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : Project specific part of the CCP                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_Typ.h                                                                                    */
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

#ifndef CCPUSR_TYP_H
#define CCPUSR_TYP_H

#include "Std_Types.h"
#include "CCP_Typ.h"
#include "CCPUSR_Co.h"

/**********************************************************************************************************************/
/* Check that Conditional Compilation options are defined                                                             */
/**********************************************************************************************************************/
#ifndef CCP_coACVD
   #error CCP_coACVD not defined
#endif
#ifndef CCP_coDAQ_RESU_ADDL_INFOS
   #error CCP_coDAQ_RESU_ADDL_INFOS not defined
#endif

/**********************************************************************************************************************/
/* TYPEDEF                                                                                                            */
/**********************************************************************************************************************/
#if (CCP_coDAQ_RESU_ADDL_INFOS == CCP_coACVD)
typedef struct
{
   boolean bSenderIsDevaid;
}
CCPUSR_tstrResuAddlInfos;
#endif

#endif /* CCPUSR_TYP_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
