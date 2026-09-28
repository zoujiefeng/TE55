

#ifndef DCM_CFG_DSPOBD_H
#define DCM_CFG_DSPOBD_H

/*
 ***************************************************************************************************
 *    DCM Defines generated from configuration
 ***************************************************************************************************
*/
/* Mode01 Configuration */

#define DCM_CFG_DSP_OBDMODE1_ENABLED    DCM_CFG_ON  /* Mode1 Service is Enabled */

#define DCM_CFG_DSP_NUMPIDSUPP_MODE1        11  /* Number of PID configured for Mode $01 */

#define DCM_CFG_DSP_NUMPIDDATA_MODE1        11 /* Number of data elements configured for the PIDs for MODE $01*/

#define DCM_CFG_DSP_NUMSUPPINFO_MODE1       0 /* Number of support information for the PIDs for MODE $01 */

#define DCM_CFG_DSP_OBDMODE1_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port is configured or not */
#define DCM_CFG_DSP_OBDMODE1_BOOL_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with boolean data type is configured or not */
#define DCM_CFG_DSP_OBDMODE1_UINT8_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with uint8 is configured or not */
#define DCM_CFG_DSP_OBDMODE1_UINT16_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with uint16 is configured or not */
#define DCM_CFG_DSP_OBDMODE1_UINT32_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with uint32 is configured or not */
#define DCM_CFG_DSP_OBDMODE1_SINT8_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with sint8 is configured or not */
#define DCM_CFG_DSP_OBDMODE1_SINT16_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with sint16 is configured or not */
#define DCM_CFG_DSP_OBDMODE1_SINT32_SR_ENABLED    DCM_CFG_OFF  /* OBDMode1 with SENDER_RECEIVER port with sint32 is configured or not */


/* Mode01 configuration Ends */

/* Mode02 Configuration */

#define DCM_CFG_DSP_OBDMODE2_ENABLED    DCM_CFG_ON  /* Mode2 Service is Enabled */

#define DCM_CFG_DSP_NUMPIDSUPP_MODE2        7 /* Number of PID configured for Mode $02 */

#define DCM_CFG_DSP_NUMPIDDATA_MODE2        7 /* Number of data elements configured for the PIDs for MODE $02 */


/* Mode02 configuration Ends */

/* Mode37a Configuration */

#define DCM_CFG_DSP_OBDMODE37A_ENABLED  DCM_CFG_ON  /* Mode37a Service is Enabled */

/* Mode37a configuration Ends */

/* Mode04 Configuration */

#define DCM_CFG_DSP_OBDMODE4_ENABLED    DCM_CFG_ON  /* Mode2 Service is Enabled */

/* Mode04 configuration Ends */

/* Mode06 Configuration */


#define DCM_CFG_DSP_OBDMODE6_ENABLED    DCM_CFG_OFF /* Mode6 Service is Disabled */

/* Mode06 Configuration Ends */

/* Mode08 configuration */

#define DCM_CFG_DSP_OBDMODE8_ENABLED    DCM_CFG_OFF /* Mode 8 Service is Disabled */

/* Mode08 configuration Ends */

/* Mode09 configuration */

#define DCM_CFG_DSP_OBDMODE9_ENABLED    DCM_CFG_ON  /* Mode9 Service is Enabled */

#define DCM_CFG_DSP_NUMINFOTYPESUPP     3            /* Number of VehInfoType configured */

#define DCM_CFG_DSP_NUMOFINFOTYPEDATA   3

#define DCM_CFG_NUMOF_INFOTYPE          3u  /* Number of VehInfoType configured */


#define DCM_CFG_INFOTYPE_SUPPORT  DCM_CFG_OFF

#define DCM_CFG_DSP_OBDMODE9_DEM_SUPP    DCM_CFG_OFF




/* Mode09 configuration Ends */

/* Mapping old macros to coding guideline compliant macros to ensure backward compatibility */
            /* Obsolete */
#ifndef     DCM_DSP_OBDMODE1_ENABLED
#define     DCM_DSP_OBDMODE1_ENABLED        DCM_CFG_DSP_OBDMODE1_ENABLED
#endif
#ifndef     DCM_DSP_NUMPIDSUPP_MODE1
#define     DCM_DSP_NUMPIDSUPP_MODE1        DCM_CFG_DSP_NUMPIDSUPP_MODE1
#endif
#ifndef     DCM_DSP_NUMPIDDATA_MODE1
#define     DCM_DSP_NUMPIDDATA_MODE1        DCM_CFG_DSP_NUMPIDDATA_MODE1
#endif
#ifndef     DCM_DSP_NUMSUPPINFO_MODE1
#define     DCM_DSP_NUMSUPPINFO_MODE1       DCM_CFG_DSP_NUMSUPPINFO_MODE1
#endif
#ifndef     DCM_DSP_OBDMODE2_ENABLED
#define     DCM_DSP_OBDMODE2_ENABLED        DCM_CFG_DSP_OBDMODE2_ENABLED
#endif
#ifndef     DCM_DSP_NUMPIDSUPP_MODE2
#define     DCM_DSP_NUMPIDSUPP_MODE2        DCM_CFG_DSP_NUMPIDSUPP_MODE2
#endif
#ifndef     DCM_DSP_NUMPIDDATA_MODE2
#define     DCM_DSP_NUMPIDDATA_MODE2        DCM_CFG_DSP_NUMPIDDATA_MODE2
#endif
#ifndef     DCM_DSP_OBDMODE37A_ENABLED
#define     DCM_DSP_OBDMODE37A_ENABLED      DCM_CFG_DSP_OBDMODE37A_ENABLED
#endif
#ifndef     DCM_DSP_OBDMODE4_ENABLED
#define     DCM_DSP_OBDMODE4_ENABLED        DCM_CFG_DSP_OBDMODE4_ENABLED
#endif
#ifndef     DCM_DSP_OBDMODE6_ENABLED
#define     DCM_DSP_OBDMODE6_ENABLED        DCM_CFG_DSP_OBDMODE6_ENABLED
#endif
#ifndef     DCM_DSP_OBDMIDARRAYSIZE
#define     DCM_DSP_OBDMIDARRAYSIZE         DCM_CFG_DSP_OBDMIDARRAYSIZE
#endif
#ifndef     DCM_DSP_OBDMODE8_ENABLED
#define     DCM_DSP_OBDMODE8_ENABLED        DCM_CFG_DSP_OBDMODE8_ENABLED
#endif
#ifndef     DCM_DSP_MODE8NUMTIDSUPP
#define     DCM_DSP_MODE8NUMTIDSUPP         DCM_CFG_DSP_MODE8NUMTIDSUPP
#endif
#ifndef     DCM_DSP_OBDMODE9_ENABLED
#define     DCM_DSP_OBDMODE9_ENABLED        DCM_CFG_DSP_OBDMODE9_ENABLED
#endif
#ifndef     DCM_DSP_NUMINFOTYPESUPP
#define     DCM_DSP_NUMINFOTYPESUPP         DCM_CFG_DSP_NUMINFOTYPESUPP
#endif
#ifndef     DCM_DSP_NUMOFINFOTYPEDATA
#define     DCM_DSP_NUMOFINFOTYPEDATA       DCM_CFG_DSP_NUMOFINFOTYPEDATA
#endif
#ifndef     DCM_DSP_OBDMODE9_DEM_SUPP
#define     DCM_DSP_OBDMODE9_DEM_SUPP       DCM_CFG_DSP_OBDMODE9_DEM_SUPP
#endif

#endif /* DCM_CFG_DSPOBD_H */

