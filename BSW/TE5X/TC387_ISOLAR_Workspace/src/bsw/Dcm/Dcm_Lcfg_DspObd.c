


#include "Dcm_Cfg_Prot.h"
#include "Dcm.h"
#include "Rte_Dcm.h"
#include "Rte_Dcm.h"



#include    "Dem.h"


/*Mode01 Configration */
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_Dsp_Mode1BitMask_Type Dcm_Dsp_Mode1Bitmask_acs[8]=
{
    {0x98180001uL,   0,  5    },  /* 01 - 1F range, Starting index in PID array, Number of element */

    {0x80018001uL,   5,   3 },  /* 21 - 3F range, Starting index in PID array, Number of element */

    {0xC0800000uL,   8,   3 },  /* 41 - 5F range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,   0 },  /* 61 - 7F range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,  0 },  /* 81 - 9F range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,  0 },  /* A1 - BF range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,  0 },  /* C1 - DF range, Starting index in PID array, Number of element */

    {0x00000000uL,    0,   0   }   /* E1 - FF range, Starting index in PID array, Number of element */
};

const Dcm_Dsp_Mode1Pid_Type Dcm_Dsp_Mode1PidArray_acs[DCM_CFG_DSP_NUMPIDSUPP_MODE1]=
{        
    {
        0x1,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x0,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x4     /* Size of the PID in bytes */
    },
    {
        0x4,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x1,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x1     /* Size of the PID in bytes */
    },
    {
        0x5,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x2,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x1     /* Size of the PID in bytes */
    },
    {
        0xc,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x3,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x2     /* Size of the PID in bytes */
    },
    {
        0xd,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x4,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x1     /* Size of the PID in bytes */
    },
    {
        0x21,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x5,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x2     /* Size of the PID in bytes */
    },
    {
        0x30,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x6,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x1     /* Size of the PID in bytes */
    },
    {
        0x31,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x7,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x2     /* Size of the PID in bytes */
    },
    {
        0x41,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x8,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x4     /* Size of the PID in bytes */
    },
    {
        0x42,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x9,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x2     /* Size of the PID in bytes */
    },
    {
        0x49,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0xA,    /* Index to the Data source structure */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),  /* Configuration Mask indicating availability of PID in different configsets*/
#endif
        0x1     /* Size of the PID in bytes */
    }
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_Dsp_Mode1DataSourcePid_Type Dcm_Dsp_Mode1DataSourcePid_acs[DCM_CFG_DSP_NUMPIDDATA_MODE1]=
{            
     {
        
            {.GetPIDvalue1_pf = &Dem_DcmReadDataOfPID01},	/*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_FNC,         /* UsePort type */        
            32,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_04_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            8,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_05_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            8,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_0C_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            16,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_0D_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            8,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_21_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            16,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_30_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            8,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_31_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            16,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_41_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            32,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_42_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            16,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
    ,    
     {
            {.GetPIDvalue1_pf = &Rte_Call_DataServices_DcmDspPidData_49_ReadData},     /*Function to get the PID data */
            NULL_PTR,                                                         /* Reference to support info array structure */
            OBD_USE_DATA_SYNCH_CLIENT_SERVER,         /* UsePort type */        
            8,                                  /* Length of data in bits   */         
            0,                                   /* Position of data in bits */          
            DCM_UINT8,                                /* Data Type is UINT8*/                            
            DCM_LITTLE_ENDIAN,                                /*Signal endianness is LITTLE_ENDIAN*/
            0                                    /* SupportInfoBit */                                                             
    }
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


/* Mode01 Configuration Ends */
 



/*Mode02 Configration */
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_Dsp_Mode2BitMask_Type Dcm_Dsp_Mode2Bitmask_acs[8]=
{
    {0x58180001uL,   0,  5    },  /* 01 - 1F range, Starting index in PID array, Number of element */

    {0x00000001,   0,    0 },  /* 21 - 3F range, Starting index in PID array, Number of element */

    {0x40800000uL,   5,   2 },  /* 41 - 5F range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,   0 },  /* 61 - 7F range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,  0 },  /* 81 - 9F range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,  0 },  /* A1 - BF range, Starting index in PID array, Number of element */

    {0x00000000uL,   0,  0 },  /* C1 - DF range, Starting index in PID array, Number of element */

    {0x00000000uL,    0,    0   }   /* E1 - FF range, Starting index in PID array, Number of element */
};

const Dcm_Dsp_Mode2Pid_Type Dcm_Dsp_Mode2PidArray_acs[DCM_CFG_DSP_NUMPIDSUPP_MODE2]=
{        
    {
        0x2,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x0,    /* Index to the Data source structure */
        0x2     /* Size of the PID in bytes */
    },
    {
        0x4,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x1,    /* Index to the Data source structure */
        0x1     /* Size of the PID in bytes */
    },
    {
        0x5,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x2,    /* Index to the Data source structure */
        0x1     /* Size of the PID in bytes */
    },
    {
        0xc,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x3,    /* Index to the Data source structure */
        0x2     /* Size of the PID in bytes */
    },
    {
        0xd,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x4,    /* Index to the Data source structure */
        0x1     /* Size of the PID in bytes */
    },
    {
        0x42,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x5,    /* Index to the Data source structure */
        0x2     /* Size of the PID in bytes */
    },
    {
        0x49,    /* PID ID number */
        0x1,    /* Number of Data Source it has */
        0x6,    /* Index to the Data source structure */
        0x1     /* Size of the PID in bytes */
    }
};

const Dcm_Dsp_Mode2DataSourcePid_Type Dcm_Dsp_Mode2DataSourcePid_acs[DCM_CFG_DSP_NUMPIDDATA_MODE2]=
{            
    {
        2,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
    ,    
    {
        1,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
    ,    
    {
        1,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
    ,    
    {
        2,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
    ,    
    {
        1,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
    ,    
    {
        2,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
    ,    
    {
        1,     /* Length of data in bytes */
        0     /* Position of data in bytes */
    }
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/* Mode02 Configuration Ends */

 

 


/* Mode09 Configuration */
#define DCM_START_SEC_VAR_INIT_UNSPECIFIED  /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

const Dcm_Dsp_Mode9BitMask_t Dcm_Dsp_Mode9Bitmask_acs[8]=

{

    {0x14400000uL,   0,  3   },  /* 01 - 1F range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,   0, 0    },  /* 21 - 3F range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,   0,   0    },  /* 41 - 5F range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,   0,   0    },  /* 61 - 7F range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,   0,  0    },  /* 81 - 9F range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,   0,  0    },  /* A1 - BF range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,   0,  0    },  /* C1 - DF range, Starting index in Veh Info array, Number of element */

    {0x00000000uL,    0,    0  }   /* E1 - FF range, Starting index in Veh Info array, Number of element */

};

#define DCM_STOP_SEC_VAR_INIT_UNSPECIFIED 
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_Dsp_VehInfo_t Dcm_Dsp_VehInfoArray_acs[DCM_CFG_DSP_NUMINFOTYPESUPP] =
{

    {

        0x4,      /* Infotype Number*/
        0x1,     /* Number of data elements for the VehInfoType */
        0x0,  /* Index to the Data source structure */
        FALSE,                
    },
    {

        0x6,      /* Infotype Number*/
        0x1,     /* Number of data elements for the VehInfoType */
        0x1,  /* Index to the Data source structure */
        FALSE,                
    },
    {

        0xa,      /* Infotype Number*/
        0x1,     /* Number of data elements for the VehInfoType */
        0x2,  /* Index to the Data source structure */
        FALSE,                
    }
};


const Dcm_Dsp_VehInfoData_t Dcm_Dsp_VehInfoData_acs[DCM_CFG_DSP_NUMOFINFOTYPEDATA]=
{
    
    {
        {.GetInfotypeValueData_pf1 = &Rte_Call_InfotypeServices_DcmDspVehInfoData_04_GetInfotypeValueData},     /*Function to get the Vehinfo data */
        16,         /* Size of the data*/
        OBD_MODE9_RTE_FNC   /* API configured is RTE API */
        
    }
    
    ,    
    {
        {.GetInfotypeValueData_pf1 = &Rte_Call_InfotypeServices_VIT_06_0_GetInfotypeValueData},     /*Function to get the Vehinfo data */
        4,         /* Size of the data*/
        OBD_MODE9_RTE_FNC   /* API configured is RTE API */
        
    }
    
    ,    
    {
        {.GetInfotypeValueData_pf1 = &Rte_Call_InfotypeServices_DcmDspVehInfoData_0A_GetInfotypeValueData},     /*Function to get the Vehinfo data */
        20,         /* Size of the data*/
        OBD_MODE9_RTE_FNC   /* API configured is RTE API */
        
    }
    

};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/* Mode09 Configuration Ends */





