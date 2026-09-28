/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : TLE9180                                                 */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : TLE9180                                                 */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : TLE9180.H                                               */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* PVCS Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* !VnrOff  : Names imposed by the customer                                   */
/* !CompReq :                                                                 */
/******************************************************************************/

#ifndef __TLE9180_REG_H_
#define __TLE9180_REG_H_

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/* !Comment: Configuration reg which need CRC signature. */
#define TLE9180_REG_CONF_SIG     0x00
#define TLE9180_REG_CONF_GEN1    0x01
#define TLE9180_REG_CONF_GEN2    0x02
#define TLE9180_REG_CONF_GEN3    0x03
#define TLE9180_REG_CONF_WWD     0x04
#define TLE9180_REG_TL_VS        0x05
#define TLE9180_REG_TL_VDH       0x06
#define TLE9180_REG_TL_CBVCC     0x07
#define TLE9180_REG_FM1          0x08
#define TLE9180_REG_FM2          0x09
#define TLE9180_REG_FM3          0x0A
#define TLE9180_REG_FM4          0x0B
#define TLE9180_REG_FM5          0x0C
#define TLE9180_REG_DT_HS        0x0D
#define TLE9180_REG_DT_LS        0x0E
#define TLE9180_REG_FT1          0x0F
#define TLE9180_REG_FT2          0x10
#define TLE9180_REG_FT3          0x11
#define TLE9180_REG_FT4          0x12
#define TLE9180_REG_FM6          0x13

/* !Comment: Other reg not need CRC signature.*/
#define TLE9180_REG_OP_GAIN1     0x20
#define TLE9180_REG_OP_GAIN2     0x21
#define TLE9180_REG_OP_GAIN3     0x22
#define TLE9180_REG_OP_0CL       0x23
#define TLE9180_REG_OP_CON       0x24
#define TLE9180_REG_SC_LS1       0x25
#define TLE9180_REG_SC_LS2       0x26
#define TLE9180_REG_SC_LS3       0x27
#define TLE9180_REG_SC_HS1       0x28
#define TLE9180_REG_SC_HS2       0x29
#define TLE9180_REG_SC_HS3       0x2A
#define TLE9180_REG_LI_CTR       0x2B
#define TLE9180_REG_MISC_CTR     0x2C
#define TLE9180_REG_ART_TLP      0x2D
#define TLE9180_REG_ART_TLA      0x2E
#define TLE9180_REG_ART_FI       0x2F
#define TLE9180_REG_ART_ACC      0x30
#define TLE9180_REG_ART_ENTRY    0x31
#define TLE9180_REG_NOP          0x32
#define TLE9180_REG_DREV_MARK    0x33
#define TLE9180_REG_DS_MARK      0x34
#define TLE9180_REG_SEL_ST1      0x35
#define TLE9180_REG_SEL_ST2      0x36
#define TLE9180_REG_EN_ST        0x37
#define TLE9180_REG_OM_OVER      0x40
#define TLE9180_REG_ERR_OVER     0x41
#define TLE9180_REG_SER          0x42
#define TLE9180_REG_ERR_I1       0x43
#define TLE9180_REG_ERR_I2       0x44
#define TLE9180_REG_ERR_E        0x45
#define TLE9180_REG_ERR_SD       0x46
#define TLE9180_REG_ERR_SCD      0x47
#define TLE9180_REG_ERR_INDIAG   0x48
#define TLE9180_REG_ERR_OSF      0x49
#define TLE9180_REG_ERR_SPICFG   0x4A
#define TLE9180_REG_ERR_OP12     0x4B
#define TLE9180_REG_ERR_OP3      0x4C
#define TLE9180_REG_ERR_OUTP     0x4D
#define TLE9180_REG_DSM_LS1      0x4E
#define TLE9180_REG_DSM_LS2      0x4F
#define TLE9180_REG_DSM_LS3      0x50
#define TLE9180_REG_DSM_HS1      0x51
#define TLE9180_REG_DSM_HS2      0x52
#define TLE9180_REG_DSM_HS3      0x53
#define TLE9180_REG_RDM_LS1      0x54
#define TLE9180_REG_RDM_LS2      0x55
#define TLE9180_REG_RDM_LS3      0x56
#define TLE9180_REG_RDM_HS1      0x57
#define TLE9180_REG_RDM_HS2      0x58
#define TLE9180_REG_RDM_HS3      0x59
#define TLE9180_REG_TEMP_LS1     0x5A
#define TLE9180_REG_TEMP_LS2     0x5B
#define TLE9180_REG_TEMP_LS3     0x5C
#define TLE9180_REG_TEMP_HS1     0x5D
#define TLE9180_REG_TEMP_HS2     0x5E
#define TLE9180_REG_TEMP_HS3     0x5F
#define TLE9180_REG_WWLC         0x60
#define TLE9180_REG_RES_CC1      0x61
#define TLE9180_REG_RES_CC2      0x62
#define TLE9180_REG_RES_CC3      0x63
#define TLE9180_REG_RES_VCC      0x64
#define TLE9180_REG_RES_CB       0x65
#define TLE9180_REG_RES_VS       0x66
#define TLE9180_REG_RES_VDH      0x67

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* __TLE9180_REG_H_ */

/*-------------------------------- end of file -------------------------------*/
