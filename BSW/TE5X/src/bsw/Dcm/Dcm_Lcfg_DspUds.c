

#include "Dcm_Cfg_Prot.h"
#include "Dcm.h"
#include "Rte_Dcm.h"
#include "Rte_Dcm.h"

#include "DcmDspUds_Uds_Prot.h"
#include "rba_BswSrv.h"
#include "SchM_Dcm.h"


#include "ComM_Dcm.h"

#include "DcmDspUds_Rc_Prot.h"


#include "DcmDspUds_Rdtc_Priv.h"

#include "DcmDspUds_Er_Prot.h"


#include "DcmDspUds_Rmba_Prot.h"

#include "DcmDspUds_Cdtcs_Prot.h"



#include "DcmAppl.h"

#include "DcmCore_DslDsd_Prot.h"




/**
 ***************************************************************************************************
            Session Control (DSC) Service
 ***************************************************************************************************
*/
/* Initialization of the parameters for the supported sessions */
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_Dsp_Session_t Dcm_Dsp_Session[DCM_CFG_DSP_NUMSESSIONS] =
{

   /* session configuration for DEFAULT_SESSION*/
   {
		50000,				/* P2 Max time in us */
		5000000,				/* P2* Max time in us */
		0x1,				/* Session ID */
		RTE_MODE_DcmDiagnosticSessionControl_DEFAULT_SESSION, /* DcmDiagnosticSessionControl Mode  for the Session Level */
		DCM_NO_BOOT			/* Diagnostic session used for jump to Bootloader */
	},

   /* session configuration for PROGRAMMING_SESSION*/
   {
		50000,				/* P2 Max time in us */
		5000000,				/* P2* Max time in us */
		0x2,				/* Session ID */
		RTE_MODE_DcmDiagnosticSessionControl_PROGRAMMING_SESSION, /* DcmDiagnosticSessionControl Mode  for the Session Level */
		DCM_OEM_BOOT			/* Diagnostic session used for jump to Bootloader */
	},

   /* session configuration for EXTENDED_DIAGNOSTIC_SESSION*/
   {
		50000,				/* P2 Max time in us */
		5000000,				/* P2* Max time in us */
		0x3,				/* Session ID */
		RTE_MODE_DcmDiagnosticSessionControl_EXTENDED_DIAGNOSTIC_SESSION, /* DcmDiagnosticSessionControl Mode  for the Session Level */
		DCM_NO_BOOT			/* Diagnostic session used for jump to Bootloader */
	}
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



/**
 ***************************************************************************************************
            Security Access (SECA) Service
 ***************************************************************************************************
*/
/* Initialization of the parameters for the supported security */
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_Dsp_Security_t Dcm_Dsp_Security[DCM_CFG_DSP_NUMSECURITY] =
{
   /* security configuration for DSP_SEC_LEV_L1*/
   {
   
        0x00u,          /* Delay timer on Power On in DcmTaskTime Counts*/   

		10000,			/* Delay time after failed security access in DcmTaskTime Counts */

		{.Dcm_GetSeed_ptr4 = &GetSeed_L1}, /* Function for the GetSeed Function */
		{.Dcm_CompareKey_ptr3 = &CompareKey_L1}, /* Function for the Compare Key Function */
		{.Dcm_GetSecurityAttemptCounter_pfct = &Dcm_GetAttemptCounter_L1}, /* Function for the GetAttemptCounter Function */
		{.Dcm_SetSecurityAttemptCounter_pfct = &Dcm_SetAttemptCounter_L1}, /* Function for the SetAttemptCounter Function */
		0x1, 		/* Security Level */
		4,			/* Security Seed size */
		4,			/* Security Key size */
		3,			/* Number of failed security access after which delay time is active */
		0,			/* Number of failed security access after which security is locked */
		0,			/* Size of the Access Data Record in Seed Request */
		USE_ASYNCH_FNC,				  		  FALSE /* Flexible length handling is not needed for this security level */
	}

};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"















#if (DCM_CFG_DSP_ROUTINECONTROL_ENABLED != DCM_CFG_OFF)
/**
 ***************************************************************************************************
            Routine control (RC) service - start
 ***************************************************************************************************
 */




#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
sint16 Dcm_RCSigOutN_as16[1];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"




#define DCM_START_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
sint32 Dcm_RCSigOutN_as32[1];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
sint8 Dcm_RCSigOutN_as8[1];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"




#define DCM_START_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint32 Dcm_RCSigOutN_au32[1];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint16 Dcm_RCSigOutN_au16[1];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


typedef enum
{
    DcmDspRoutine_0203_DcmDspStartRoutineOutSignal_StrtOut,
    DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,
    DcmDspRoutine_GCUZeroPositionLearn_A207_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,
    DcmDspRoutine_TCUPositionLearnin_A206_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,
    DcmDspRoutine_ZeroPositionLearn_A205_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,
    DCM_RC_SIGOUTUINT8MAX
} Dcm_DspRoutineSigOutUInt8Idx_ten;

#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
static uint8 Dcm_RCSigOut_au8[5];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint8 Dcm_RCSigOutN_au8[1];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"






#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
sint16 Dcm_RCSigInN_as16[1];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



#define DCM_START_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
sint32 Dcm_RCSigInN_as32[1];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
sint8 Dcm_RCSigInN_as8[1];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_VAR_CLEARED_32/*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint32 Dcm_RCSigInN_au32[1];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint16 Dcm_RCSigInN_au16[1];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint8 Dcm_RCSigInN_au8[1];
#define DCM_STOP_SEC_VAR_CLEARED_8/*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

uint32 Dcm_RCGetSigVal_u32 ( uint8 dataSigType_en, uint16 idxSignalIndex_u16 )
{
    uint32 dataSigVal_u32;
   
 if(dataSigType_en == DCM_UINT8)
    {
        dataSigVal_u32 = (uint32)Dcm_RCSigOut_au8[idxSignalIndex_u16];
    }
	else	
	{
        dataSigVal_u32 = 0u;
	}

    return (dataSigVal_u32);
}


void Dcm_RCSetSigVal ( uint8 dataSigType_en, uint16 idxSignalIndex_u16, uint32 dataSigVal_u32)
{

	
    {
        (void)dataSigVal_u32;
        (void)idxSignalIndex_u16;
    }
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"





static const Dcm_DspRoutineSignalInfo_tst DcmDspRc_DcmDspRoutine_0203_StrtOutSig[]=
{
   {
        0,             /* Start bit position of the signal */
        8,               /* length of the signal */
	/*MR12 RULE 10.3 VIOLATION:This is required for implememtaion as expression of essentially enum type is being converted to unsigned type on assignment.*/
	    DcmDspRoutine_0203_DcmDspStartRoutineOutSignal_StrtOut,           /* Index of the signal */
	    DCM_LITTLE_ENDIAN,       /* Signal Endianness is LITTLE_ENDIAN*/
	   DCM_UINT8  /* Data Type is UINT8 */      
    }
};



static const Dcm_DspRoutineSignalInfo_tst DcmDspRc_DcmDspRoutine_0203_ReqRsltOutSig[]=
{
    {
        0,             /* Start bit position of the signal */
        8,               /* length of the signal */
    /*MR12 RULE 10.3 VIOLATION:This is required for implememtaion as expression of essentially enum type is being converted to unsigned type on assignment.*/
        DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,            /* Index of the signal */
        DCM_LITTLE_ENDIAN,       /* Signal Endianness is LITTLE_ENDIAN*/
        DCM_UINT8  /* Data Type is UINT8 */    
    }
};









static const Dcm_DspRoutineSignalInfo_tst DcmDspRc_DcmDspRoutine_GCUZeroPositionLearn_A207_ReqRsltOutSig[]=
{
    {
        0,             /* Start bit position of the signal */
        8,               /* length of the signal */
    /*MR12 RULE 10.3 VIOLATION:This is required for implememtaion as expression of essentially enum type is being converted to unsigned type on assignment.*/
        DcmDspRoutine_GCUZeroPositionLearn_A207_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,            /* Index of the signal */
        DCM_BIG_ENDIAN,       /* Signal Endianness is BIG_ENDIAN*/
        DCM_UINT8  /* Data Type is UINT8 */    
    }
};












static const Dcm_DspRoutineSignalInfo_tst DcmDspRc_DcmDspRoutine_StayInBoot_F518_StrtInSig[]=
{
     {
        0,            /* Start bit position of the signal */
        24,               /* length of the signal */
        DCM_RC_INVLDSIGINDEX,       /* Fictious idxSignalIndex_u16 as VARIABLE_LENGTH Type signals will be handled directly with Diagnostic Buffer */
        DCM_BIG_ENDIAN,       /* Signal Endianness is BIG_ENDIAN*/
        DCM_VARIABLE_LENGTH  /* Data Type is VARIABLE_LENGTH */             
    }
};















static const Dcm_DspRoutineSignalInfo_tst DcmDspRc_DcmDspRoutine_TCUPositionLearnin_A206_ReqRsltOutSig[]=
{
    {
        0,             /* Start bit position of the signal */
        8,               /* length of the signal */
    /*MR12 RULE 10.3 VIOLATION:This is required for implememtaion as expression of essentially enum type is being converted to unsigned type on assignment.*/
        DcmDspRoutine_TCUPositionLearnin_A206_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,            /* Index of the signal */
        DCM_BIG_ENDIAN,       /* Signal Endianness is BIG_ENDIAN*/
        DCM_UINT8  /* Data Type is UINT8 */    
    }
};









static const Dcm_DspRoutineSignalInfo_tst DcmDspRc_DcmDspRoutine_ZeroPositionLearn_A205_ReqRsltOutSig[]=
{
    {
        0,             /* Start bit position of the signal */
        8,               /* length of the signal */
    /*MR12 RULE 10.3 VIOLATION:This is required for implememtaion as expression of essentially enum type is being converted to unsigned type on assignment.*/
        DcmDspRoutine_ZeroPositionLearn_A205_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut,            /* Index of the signal */
        DCM_BIG_ENDIAN,       /* Signal Endianness is BIG_ENDIAN*/
        DCM_UINT8  /* Data Type is UINT8 */    
    }
};





static const Dcm_DspRoutineInfoType_tst DcmDspRc_DcmDspRoutine_0203=
{
    /* Allowed Security Row Bit Mask for Routine*/
  0xFFFFFFFFuL,

    /* Allowed Session Row Bit Mask for Routine */
     0x4uL,
     NULL_PTR,       /*  No User defined Mode rule Function configured  */
    /* Reference to In Signal from StartRoutine */
    NULL_PTR,
    /* Reference to In Signal from StopRoutine */
    NULL_PTR,
/* Reference to In Signal from RequestResultRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StartRoutine */
    DcmDspRc_DcmDspRoutine_0203_StrtOutSig,
    /* Reference to Out Signal from StopRoutine */
    NULL_PTR,
    /* Reference to Out Signal from RequestResultsRoutine */
    DcmDspRc_DcmDspRoutine_0203_ReqRsltOutSig,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for RequestResults Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    1,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for RequestResults Routine */
    1,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */

    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for RequestResult Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    1,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request RequestResults Routine */
    1,
    /* Number of In Signals configured for StartRoutine */
    0,
    /* Number of In Signals configured for StopRoutine */
    0,
/* Number of In Signals configured for ReqResultsRoutine */
    0,
    /* Number of Out Signals configured for StartRoutine */
    1,
    /* Number of Out Signals configured for StopRoutine */
    0,
    /* Number of Out Signals configured for RequestResultsRoutine */
    1
};


static const Dcm_DspRoutineInfoType_tst DcmDspRc_DcmDspRoutine_GCUZeroPositionLearn_A207=
{
    /* Allowed Security Row Bit Mask for Routine*/
  0xFFFFFFFFuL,

    /* Allowed Session Row Bit Mask for Routine */
     0x4uL,
     NULL_PTR,       /*  No User defined Mode rule Function configured  */
    /* Reference to In Signal from StartRoutine */
    NULL_PTR,
    /* Reference to In Signal from StopRoutine */
    NULL_PTR,
/* Reference to In Signal from RequestResultRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StartRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StopRoutine */
    NULL_PTR,
    /* Reference to Out Signal from RequestResultsRoutine */
    DcmDspRc_DcmDspRoutine_GCUZeroPositionLearn_A207_ReqRsltOutSig,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for RequestResults Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for RequestResults Routine */
    1,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */

    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for RequestResult Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request RequestResults Routine */
    1,
    /* Number of In Signals configured for StartRoutine */
    0,
    /* Number of In Signals configured for StopRoutine */
    0,
/* Number of In Signals configured for ReqResultsRoutine */
    0,
    /* Number of Out Signals configured for StartRoutine */
    0,
    /* Number of Out Signals configured for StopRoutine */
    0,
    /* Number of Out Signals configured for RequestResultsRoutine */
    1
};


static const Dcm_DspRoutineInfoType_tst DcmDspRc_DcmDspRoutine_StartSwap_815F=
{
    /* Allowed Security Row Bit Mask for Routine*/
  0xFFFFFFFFuL,

    /* Allowed Session Row Bit Mask for Routine */
     0x4uL,
     NULL_PTR,       /*  No User defined Mode rule Function configured  */
    /* Reference to In Signal from StartRoutine */
    NULL_PTR,
    /* Reference to In Signal from StopRoutine */
    NULL_PTR,
/* Reference to In Signal from RequestResultRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StartRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StopRoutine */
    NULL_PTR,
    /* Reference to Out Signal from RequestResultsRoutine */
    NULL_PTR,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for RequestResults Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for RequestResults Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */

    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for RequestResult Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request RequestResults Routine */
    0,
    /* Number of In Signals configured for StartRoutine */
    0,
    /* Number of In Signals configured for StopRoutine */
    0,
/* Number of In Signals configured for ReqResultsRoutine */
    0,
    /* Number of Out Signals configured for StartRoutine */
    0,
    /* Number of Out Signals configured for StopRoutine */
    0,
    /* Number of Out Signals configured for RequestResultsRoutine */
    0
};


static const Dcm_DspRoutineInfoType_tst DcmDspRc_DcmDspRoutine_StayInBoot_F518=
{
    /* Allowed Security Row Bit Mask for Routine*/
  0xFFFFFFFFuL,

    /* Allowed Session Row Bit Mask for Routine */
     0xffffffffuL,
     NULL_PTR,       /*  No User defined Mode rule Function configured  */
    /* Reference to In Signal from StartRoutine */
    DcmDspRc_DcmDspRoutine_StayInBoot_F518_StrtInSig,
    /* Reference to In Signal from StopRoutine */
    NULL_PTR,
/* Reference to In Signal from RequestResultRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StartRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StopRoutine */
    NULL_PTR,
    /* Reference to Out Signal from RequestResultsRoutine */
    NULL_PTR,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    3,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for RequestResults Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for RequestResults Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    0,

    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for RequestResult Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request RequestResults Routine */
    0,
    /* Number of In Signals configured for StartRoutine */
    1,
    /* Number of In Signals configured for StopRoutine */
    0,
/* Number of In Signals configured for ReqResultsRoutine */
    0,
    /* Number of Out Signals configured for StartRoutine */
    0,
    /* Number of Out Signals configured for StopRoutine */
    0,
    /* Number of Out Signals configured for RequestResultsRoutine */
    0
};


static const Dcm_DspRoutineInfoType_tst DcmDspRc_DcmDspRoutine_TCUPositionLearnin_A206=
{
    /* Allowed Security Row Bit Mask for Routine*/
  0xFFFFFFFFuL,

    /* Allowed Session Row Bit Mask for Routine */
     0x4uL,
     NULL_PTR,       /*  No User defined Mode rule Function configured  */
    /* Reference to In Signal from StartRoutine */
    NULL_PTR,
    /* Reference to In Signal from StopRoutine */
    NULL_PTR,
/* Reference to In Signal from RequestResultRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StartRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StopRoutine */
    NULL_PTR,
    /* Reference to Out Signal from RequestResultsRoutine */
    DcmDspRc_DcmDspRoutine_TCUPositionLearnin_A206_ReqRsltOutSig,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for RequestResults Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for RequestResults Routine */
    1,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */

    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for RequestResult Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request RequestResults Routine */
    1,
    /* Number of In Signals configured for StartRoutine */
    0,
    /* Number of In Signals configured for StopRoutine */
    0,
/* Number of In Signals configured for ReqResultsRoutine */
    0,
    /* Number of Out Signals configured for StartRoutine */
    0,
    /* Number of Out Signals configured for StopRoutine */
    0,
    /* Number of Out Signals configured for RequestResultsRoutine */
    1
};


static const Dcm_DspRoutineInfoType_tst DcmDspRc_DcmDspRoutine_ZeroPositionLearn_A205=
{
    /* Allowed Security Row Bit Mask for Routine*/
  0xFFFFFFFFuL,

    /* Allowed Session Row Bit Mask for Routine */
     0x4uL,
     NULL_PTR,       /*  No User defined Mode rule Function configured  */
    /* Reference to In Signal from StartRoutine */
    NULL_PTR,
    /* Reference to In Signal from StopRoutine */
    NULL_PTR,
/* Reference to In Signal from RequestResultRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StartRoutine */
    NULL_PTR,
    /* Reference to Out Signal from StopRoutine */
    NULL_PTR,
    /* Reference to Out Signal from RequestResultsRoutine */
    DcmDspRc_DcmDspRoutine_ZeroPositionLearn_A205_ReqRsltOutSig,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* (Maximum) Size of Control Option Record i.e. Optional Bytes in Request for RequestResults Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* (Maximum) Size of Status Option Record i.e. Optional Bytes in Response for RequestResults Routine */
    1,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Start Routine */

    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for Stop Routine */
    0,
    /* Minimum Size of Control Option Record i.e. Optional Bytes in Request for RequestResult Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Start Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request Stop Routine */
    0,
    /* Minimum Size of Status Option Record i.e. Optional Bytes in Response for Request RequestResults Routine */
    1,
    /* Number of In Signals configured for StartRoutine */
    0,
    /* Number of In Signals configured for StopRoutine */
    0,
/* Number of In Signals configured for ReqResultsRoutine */
    0,
    /* Number of Out Signals configured for StartRoutine */
    0,
    /* Number of Out Signals configured for StopRoutine */
    0,
    /* Number of Out Signals configured for RequestResultsRoutine */
    1
};






#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

static Std_ReturnType Dcm_Dsp_RC_DcmDspRoutine_0203_Func ( uint8 dataSubFunc_u8 )
{
    Std_ReturnType dataRetVal_u8;
    dataRetVal_u8 = E_NOT_OK;

    switch (dataSubFunc_u8)
    {
    case 1u:
        dataRetVal_u8 = Rte_Call_RoutineServices_DcmDspRoutine_0203_Start
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCSigOut_au8[DcmDspRoutine_0203_DcmDspStartRoutineOutSignal_StrtOut]),
                    &(Dcm_RCNegResCode_u8)
                  );

        break;


    case 3u:
        dataRetVal_u8 = Rte_Call_RoutineServices_DcmDspRoutine_0203_RequestResults
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCSigOut_au8[DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut]),
                    &(Dcm_RCNegResCode_u8)
                );
        break;

    default:
        Dcm_RCNegResCode_u8 = DCM_E_SUBFUNCTIONNOTSUPPORTED;
        break;
    }

    return (dataRetVal_u8);
}


static Std_ReturnType Dcm_Dsp_RC_DcmDspRoutine_GCUZeroPositionLearn_A207_Func ( uint8 dataSubFunc_u8 )
{
    Std_ReturnType dataRetVal_u8;
    dataRetVal_u8 = E_NOT_OK;

    switch (dataSubFunc_u8)
    {
    case 1u:
        dataRetVal_u8 = DcmDspStartRoutine_GcuPosSelfLearning
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCNegResCode_u8)
                  );

        break;


    case 3u:
        dataRetVal_u8 = DcmDspRequestRoutine_GcuPosSelfLearning
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCSigOut_au8[DcmDspRoutine_GCUZeroPositionLearn_A207_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut]),
                    &(Dcm_RCNegResCode_u8)
                );
        break;

    default:
        Dcm_RCNegResCode_u8 = DCM_E_SUBFUNCTIONNOTSUPPORTED;
        break;
    }

    return (dataRetVal_u8);
}


static Std_ReturnType Dcm_Dsp_RC_DcmDspRoutine_StartSwap_815F_Func ( uint8 dataSubFunc_u8 )
{
    Std_ReturnType dataRetVal_u8;
    dataRetVal_u8 = E_NOT_OK;

    switch (dataSubFunc_u8)
    {
    case 1u:
        dataRetVal_u8 = DcmDspStartRoutine_StartSwapCallback
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCNegResCode_u8)
                  );

        break;



    default:
        Dcm_RCNegResCode_u8 = DCM_E_SUBFUNCTIONNOTSUPPORTED;
        break;
    }

    return (dataRetVal_u8);
}


static Std_ReturnType Dcm_Dsp_RC_DcmDspRoutine_StayInBoot_F518_Func ( uint8 dataSubFunc_u8 )
{
    Std_ReturnType dataRetVal_u8;
    dataRetVal_u8 = E_NOT_OK;

    switch (dataSubFunc_u8)
    {
    case 1u:
        dataRetVal_u8 = DcmDspStartRoutine_StayInBootCallback
                (
                      &(Dcm_InParameterBuf_au8[0]),

                    Dcm_RCOpStatus_u8,
                    Dcm_RCCurrDataLength_u16,
                    &(Dcm_RCNegResCode_u8)
                  );

        break;



    default:
        Dcm_RCNegResCode_u8 = DCM_E_SUBFUNCTIONNOTSUPPORTED;
        break;
    }

    return (dataRetVal_u8);
}


static Std_ReturnType Dcm_Dsp_RC_DcmDspRoutine_TCUPositionLearnin_A206_Func ( uint8 dataSubFunc_u8 )
{
    Std_ReturnType dataRetVal_u8;
    dataRetVal_u8 = E_NOT_OK;

    switch (dataSubFunc_u8)
    {
    case 1u:
        dataRetVal_u8 = DcmDspStartRoutine_TcuPosLearning
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCNegResCode_u8)
                  );

        break;


    case 3u:
        dataRetVal_u8 = DcmDspRequestRoutine_TcuPosLearning
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCSigOut_au8[DcmDspRoutine_TCUPositionLearnin_A206_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut]),
                    &(Dcm_RCNegResCode_u8)
                );
        break;

    default:
        Dcm_RCNegResCode_u8 = DCM_E_SUBFUNCTIONNOTSUPPORTED;
        break;
    }

    return (dataRetVal_u8);
}


static Std_ReturnType Dcm_Dsp_RC_DcmDspRoutine_ZeroPositionLearn_A205_Func ( uint8 dataSubFunc_u8 )
{
    Std_ReturnType dataRetVal_u8;
    dataRetVal_u8 = E_NOT_OK;

    switch (dataSubFunc_u8)
    {
    case 1u:
        dataRetVal_u8 = DcmDspStartRoutine_ZeroPosSelfLearning
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCNegResCode_u8)
                  );

        break;


    case 3u:
        dataRetVal_u8 = DcmDspRequestRoutine_ZeroPosSelfLearning
                (
                    Dcm_RCOpStatus_u8,
                    &(Dcm_RCSigOut_au8[DcmDspRoutine_ZeroPositionLearn_A205_DcmDspRequestRoutineResultsOutSignal_0_ReqRsltOut]),
                    &(Dcm_RCNegResCode_u8)
                );
        break;

    default:
        Dcm_RCNegResCode_u8 = DCM_E_SUBFUNCTIONNOTSUPPORTED;
        break;
    }

    return (dataRetVal_u8);
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

/* Array with function pointers configured for RIDs to check if they are supported in the current variant */

const Dcm_DspRoutineType_tst Dcm_DspRoutine_cast[DCM_CFG_RC_NUMRIDS]=
{

    /* DcmDspRoutine_0203 */
    {
        0x203,        /* Routine Identifier */
        TRUE,      /* Fixed length */
        TRUE,       /* UsePort is set to TRUE, call will be to RTE ports */
        &DcmDspRc_DcmDspRoutine_0203,      /* Reference to Routine Info */
        &Dcm_Dsp_RC_DcmDspRoutine_0203_Func,        /* Reference to Call-out function */

        TRUE,       /* Is Start Routine supported ? */

        FALSE,      /* Is Stop Routine supported ? */
        TRUE,       /* Stop this routine if active on Session change */
        TRUE,       /* Is RequestSequnceError supported for RequestResults subfunction for Routine which is not started ? */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),      /*Configuration mask indicating the availability of routine in different DCMConfigsets*/
#endif
        TRUE,       /* Is Request Results Routine supported ? */
    }
,
    /* DcmDspRoutine_StartSwap_815F */
    {
        0x815f,        /* Routine Identifier */
        TRUE,      /* Fixed length */
        FALSE,      /* UsePort is set to FALSE, call will be to Configured call-back */
        &DcmDspRc_DcmDspRoutine_StartSwap_815F,      /* Reference to Routine Info */
        &Dcm_Dsp_RC_DcmDspRoutine_StartSwap_815F_Func,        /* Reference to Call-out function */

        TRUE,       /* Is Start Routine supported ? */

        FALSE,      /* Is Stop Routine supported ? */
        FALSE,       /* Stop this routine if active on Session change */
        TRUE,       /* Is RequestSequnceError supported for RequestResults subfunction for Routine which is not started ? */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),      /*Configuration mask indicating the availability of routine in different DCMConfigsets*/
#endif
        FALSE,      /* Is Request Results Routine supported ? */
    }
,
    /* DcmDspRoutine_ZeroPositionLearn_A205 */
    {
        0xa205,        /* Routine Identifier */
        TRUE,      /* Fixed length */
        FALSE,      /* UsePort is set to FALSE, call will be to Configured call-back */
        &DcmDspRc_DcmDspRoutine_ZeroPositionLearn_A205,      /* Reference to Routine Info */
        &Dcm_Dsp_RC_DcmDspRoutine_ZeroPositionLearn_A205_Func,        /* Reference to Call-out function */

        TRUE,       /* Is Start Routine supported ? */

        FALSE,      /* Is Stop Routine supported ? */
        FALSE,       /* Stop this routine if active on Session change */
        TRUE,       /* Is RequestSequnceError supported for RequestResults subfunction for Routine which is not started ? */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),      /*Configuration mask indicating the availability of routine in different DCMConfigsets*/
#endif
        TRUE,       /* Is Request Results Routine supported ? */
    }
,
    /* DcmDspRoutine_TCUPositionLearnin_A206 */
    {
        0xa206,        /* Routine Identifier */
        TRUE,      /* Fixed length */
        FALSE,      /* UsePort is set to FALSE, call will be to Configured call-back */
        &DcmDspRc_DcmDspRoutine_TCUPositionLearnin_A206,      /* Reference to Routine Info */
        &Dcm_Dsp_RC_DcmDspRoutine_TCUPositionLearnin_A206_Func,        /* Reference to Call-out function */

        TRUE,       /* Is Start Routine supported ? */

        FALSE,      /* Is Stop Routine supported ? */
        FALSE,       /* Stop this routine if active on Session change */
        TRUE,       /* Is RequestSequnceError supported for RequestResults subfunction for Routine which is not started ? */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),      /*Configuration mask indicating the availability of routine in different DCMConfigsets*/
#endif
        TRUE,       /* Is Request Results Routine supported ? */
    }
,
    /* DcmDspRoutine_GCUZeroPositionLearn_A207 */
    {
        0xa207,        /* Routine Identifier */
        TRUE,      /* Fixed length */
        FALSE,      /* UsePort is set to FALSE, call will be to Configured call-back */
        &DcmDspRc_DcmDspRoutine_GCUZeroPositionLearn_A207,      /* Reference to Routine Info */
        &Dcm_Dsp_RC_DcmDspRoutine_GCUZeroPositionLearn_A207_Func,        /* Reference to Call-out function */

        TRUE,       /* Is Start Routine supported ? */

        FALSE,      /* Is Stop Routine supported ? */
        FALSE,       /* Stop this routine if active on Session change */
        TRUE,       /* Is RequestSequnceError supported for RequestResults subfunction for Routine which is not started ? */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),      /*Configuration mask indicating the availability of routine in different DCMConfigsets*/
#endif
        TRUE,       /* Is Request Results Routine supported ? */
    }
,
    /* DcmDspRoutine_StayInBoot_F518 */
    {
        0xf518,        /* Routine Identifier */
        FALSE,       /* Fixed length */
        FALSE,      /* UsePort is set to FALSE, call will be to Configured call-back */
        &DcmDspRc_DcmDspRoutine_StayInBoot_F518,      /* Reference to Routine Info */
        &Dcm_Dsp_RC_DcmDspRoutine_StayInBoot_F518_Func,        /* Reference to Call-out function */

        TRUE,       /* Is Start Routine supported ? */

        FALSE,      /* Is Stop Routine supported ? */
        FALSE,       /* Stop this routine if active on Session change */
        TRUE,       /* Is RequestSequnceError supported for RequestResults subfunction for Routine which is not started ? */
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),      /*Configuration mask indicating the availability of routine in different DCMConfigsets*/
#endif
        FALSE,      /* Is Request Results Routine supported ? */
    }
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/* Array for storing current status of each RID*/
Dcm_DspRoutineStatusType_ten Dcm_RoutineStatus_aen[DCM_CFG_RC_NUMRIDS];
#define DCM_STOP_SEC_VAR_CLEARED_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"




/**
 ***************************************************************************************************
            Routine control (RC) service - end
 ***************************************************************************************************
 */
 
#endif












 



    


 



    


/*Handling of  Sender receiver supported IOCBI DIDs*/
 


/*Handling of  Sender receiver supported IOCBI DIDs*/
 








/**
 **********************************************************************************************************************
           DID Signal Substructure Configuration for IOCBI
 **********************************************************************************************************************
**/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_SignalDIDIocbiConfig_tst Dcm_DspIOControlInfo[2]=
{
    {
            {NULL_PTR},
            {NULL_PTR},
            {NULL_PTR},
            {NULL_PTR},
            {NULL_PTR}    
    },
    {
            {NULL_PTR},           /* IOControlRequest Function*/
            {.ReturnControlEcu1_pfct = &Dcm_DataServices_ReturnControlToECU},            /* Return Control To Ecu Function */   
            {.ResetToDefault1_pfct = &Dcm_DataServices_ResetToDefault},      /* Reset To Default Function */   
            {.FreezeCurrentState1_pfct = &Dcm_DataServices_FreezeCurrentState},            /* Freeze Current State Function */
            {.ShortTermAdjustment1_pfct = &Dcm_DataServices_ShortTermAdjustment}            /* Short Term Adjustment Function */
        
    }
};
  
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 **********************************************************************************************************************
           DID Signal Substructure Configuration for condition check for read and write and read datalength function
 **********************************************************************************************************************
**/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_SignalDIDSubStructConfig_tst Dcm_DspDid_ControlInfo_st[4]=
{
    {
        {NULL_PTR},
        {NULL_PTR}
,
        {NULL_PTR},         
        NULL_PTR,
        NULL_PTR
,
        0
    },



    {

            {.CondChkReadFunc1_pfct = NULL_PTR},          /* Condition Check Read Function */
            {.ReadDataLengthFnc1_pf = NULL_PTR},          /* Read Data Length Function */
            {NULL_PTR},           /* Write Data Function */
            NULL_PTR,          /* Write Data type variable */
            NULL_PTR,          /* Get Signal function to copy data */

                1    /*Index to DcmDspControlInfoStructure*/   /*IOCBI Sub structure address*/
    }
, 
    {

            {.CondChkReadFunc2_pfct = NULL_PTR},          /* Condition Check Read Function */
            {.ReadDataLengthFnc4_pf = NULL_PTR},          /* Read Data Length Function */
            {.WdbiFnc4_pfct = &DataServices_RW_0E00_WriteData},         /* Write Data Function */ 
            NULL_PTR,          /* Write Data type variable */
            NULL_PTR,          /* Get Signal function to copy data */

            0                                                /*IOCBI Sub structure address*/
    }
, 
    {

            {.CondChkReadFunc2_pfct = NULL_PTR},          /* Condition Check Read Function */
            {.ReadDataLengthFnc4_pf = NULL_PTR},          /* Read Data Length Function */
            {.WdbiFnc4_pfct = &DataServices_RW_1E00_WriteData},         /* Write Data Function */ 
            NULL_PTR,          /* Write Data type variable */
            NULL_PTR,          /* Get Signal function to copy data */

            0                                                /*IOCBI Sub structure address*/
    }

};


#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

/**
 ***************************************************************************************************
           DID Signal Configuration
 ***************************************************************************************************
**/

#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_DataInfoConfig_tst Dcm_DspDataInfo_st [313]=
{
    
     {   
            {.ReadFunc1_pfct = &Dcm_DataServices_ReadData},           /* Read Data Function */
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           1,    /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_SYNCH_FNC,      /*DataUsePort is USE_DATA_SYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_RW_0E00_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           2,    /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_RW_1E00_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           3,    /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0B20_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0B21_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0B22_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0B23_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0D2B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E01_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           16,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E0B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_0E0F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D00_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D01_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D0B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D0F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D10_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D11_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D12_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D13_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D14_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D15_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D16_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D17_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D18_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D19_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D1A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D1B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D1C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D1D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D1E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D1F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D20_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D21_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D22_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D23_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D24_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D25_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D26_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D27_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D28_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D29_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D2A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           10,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1D2B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E01_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           16,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E0B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_1E0F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D11_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D12_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D13_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D14_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D15_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D1C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D1D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D1E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D1F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D20_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D21_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D22_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D23_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D24_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D25_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D26_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D27_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2D28_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           16,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E0B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_2E0F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D11_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D12_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D13_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D14_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D15_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D1C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D1D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D1E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D1F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D20_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D21_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D22_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D23_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D24_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D25_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D26_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D27_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3D28_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           16,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E0B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_3E0F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D00_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D01_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D02_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D03_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D04_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D05_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D06_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D07_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D08_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D09_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D0A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D0B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D0C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D0D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D0E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D0F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D10_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D11_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D12_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D13_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D14_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D15_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D16_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D17_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D18_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D19_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D1A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D1B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D1C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D1D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D1E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D1F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D20_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D21_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D22_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D23_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D24_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D25_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D26_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D27_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D28_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D29_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D2A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D2B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D2C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D2D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D2E_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D2F_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D30_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D31_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D32_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D33_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D34_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D35_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D36_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D37_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D38_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D39_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D3A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D3B_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D3C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_4D3D_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_B303_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           20,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D000_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D001_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D002_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D003_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D004_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D005_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D007_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D008_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D009_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D010_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D011_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D012_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D013_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D014_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D015_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D016_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D017_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D018_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D019_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D020_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D021_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D022_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D023_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D024_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D025_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D026_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D027_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D028_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D029_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D030_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D031_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D032_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D033_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D034_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D035_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D036_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D037_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D038_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D039_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D040_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D041_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D042_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D043_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D044_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D045_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D046_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D047_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D048_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_D049_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_DFEA_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           64,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_DFEB_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           64,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_DFEC_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           64,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_DFED_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           64,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F187_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           14,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F188_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           14,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F189_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           10,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F18A_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           5,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F18C_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           8,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F190_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           17,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F191_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           14,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F193_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           10,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F197_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_F1E0_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           48,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_ResetLog_0420_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           200,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DcmDspData_ActiveBank_ReadFunc},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           1,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DcmDspData_AppReqCanId_ReadFunc},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DcmDspData_AppRspCanId_ReadFunc},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DcmDspData_BootTime_ReadFunc},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DcmDspData_BootReqCanId_ReadFunc},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DcmDspData_BootRspCanId_ReadFunc},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntAddlInfo_0419_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           8,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntBootSvnRev_0415_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntBswLibDate_0410_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           6,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntBswSvnRev_0414_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntCpldSvnRev_0417_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntFpgaSvnRev_0416_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntHwSvnRev_0418_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           2,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntOfflineDate_0411_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntProductionLineId_0412_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           4,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
,    
     {   
            {.ReadFunc2_ptr = &DataServices_R_IntProjectId_0413_ReadData},            /* Read Data Function */ 
            NULL_PTR,                                               /* Read Data type variable */
    
            NULL_PTR,                                                   /* API to store and assemble all signals data */
    
    
           8,                                                 /*Signal Data Byte Size */
           
           0,                         /*Index to DcmDspControlInfoStructure*/
           DCM_UINT8,                                          /* Data Type is UINT8 */
	       USE_DATA_ASYNCH_FNC,     /*DataUsePort is USE_DATA_ASYNCH_FNC*/
      
     
     
    }
    
    
};






#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



/**
 ***************************************************************************************************
           DID Signal Configuration
 ***************************************************************************************************
**/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


/* DID DcmDspDid_ReadBootCompileTime_0400 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_400_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        300,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadActiveBank_0401 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_401_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        297,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadBootReqCanId_0402 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_402_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        301,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadBootRspCanId_0403 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_403_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        302,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadAppReqCanId_0404 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_404_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        298,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadAppRspCanId_0405 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_405_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        299,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntBswLibDate_0410 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_410_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        305,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntOfflineDate_0411 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_411_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        310,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntProductionLineId_0412 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_412_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        311,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntProjectId_0413 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_413_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        312,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntBswSvnRev_0414 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_414_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        306,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntBootSvnRev_0415 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_415_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        304,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntFpgaSvnRev_0416 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_416_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        308,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntCpldSvnRev_0417 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_417_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        307,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntHwSvnRev_0418 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_418_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        309,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ReadIntAddlInfo_0419 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_419_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        303,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_ResetLog_0420 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_420_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        296,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D000 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D000_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        233,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D001 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D001_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        234,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D002 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D002_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        235,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D003 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D003_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        236,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D004 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D004_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        237,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D005 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D005_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        238,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D007 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D007_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        239,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D008 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D008_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        240,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D009 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D009_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        241,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D010 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D010_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        242,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D011 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D011_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        243,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D012 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D012_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        244,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D013 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D013_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        245,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D014 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D014_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        246,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D015 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D015_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        247,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D016 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D016_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        248,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D017 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D017_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        249,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D018 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D018_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        250,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D019 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D019_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        251,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D020 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D020_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        252,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D021 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D021_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        253,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D022 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D022_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        254,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D023 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D023_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        255,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D024 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D024_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        256,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D025 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D025_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        257,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D026 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D026_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        258,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D027 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D027_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        259,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D028 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D028_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        260,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D029 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D029_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        261,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D030 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D030_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        262,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D031 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D031_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        263,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D032 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D032_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        264,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D033 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D033_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        265,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D034 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D034_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        266,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D035 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D035_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        267,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D036 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D036_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        268,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_037 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D037_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        269,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D038 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D038_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        270,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D039 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D039_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        271,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D040 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D040_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        272,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D041 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D041_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        273,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D042 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D042_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        274,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D043 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D043_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        275,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D044 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D044_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        276,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D045 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D045_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        277,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D046 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D046_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        278,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D047 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D047_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        279,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D048 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D048_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        280,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_D049 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D049_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        281,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0D2B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_D2B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        7,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_RW_0E00 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E00_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        1,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E01 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E01_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        8,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        9,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        10,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        11,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        12,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        13,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        14,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        15,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        16,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        17,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E0B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E0B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        18,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        19,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        20,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        21,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0E0F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_E0F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        22,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D00 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D00_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        23,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D01 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D01_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        24,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        25,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        26,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        27,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        28,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        29,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        30,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        31,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        32,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        33,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D0B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D0B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        34,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        35,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        36,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        37,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D0F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D0F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        38,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D10 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D10_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        39,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D11 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D11_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        40,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D12 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D12_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        41,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D13 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D13_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        42,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D14 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D14_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        43,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D15 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D15_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        44,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D16 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D16_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        45,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D17 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D17_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        46,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D18 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D18_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        47,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D19 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D19_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        48,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D1A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D1A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        49,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D1B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D1B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        50,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D1C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D1C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        51,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D1D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D1D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        52,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D1E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D1E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        53,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D1F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D1F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        54,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D20 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D20_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        55,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D21 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D21_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        56,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D22 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D22_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        57,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D23 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D23_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        58,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D24 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D24_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        59,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D25 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D25_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        60,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D26 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D26_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        61,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D27 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D27_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        62,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D28 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D28_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        63,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D29 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D29_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        64,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D2A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D2A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        65,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1D2B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1D2B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        66,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_RW_1E00 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E00_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        2,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E01 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E01_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        67,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        68,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        69,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        70,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        71,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        72,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        73,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        74,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        75,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        76,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E0B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E0B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        77,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        78,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        79,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        80,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_1E0F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_1E0F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        81,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        82,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        83,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        84,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        85,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        86,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        87,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        88,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        89,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        90,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        91,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        92,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        93,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D11 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D11_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        94,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D12 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D12_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        95,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D13 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D13_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        96,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D14 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D14_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        97,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D15 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D15_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        98,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D1C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D1C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        99,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D1D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D1D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        100,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D1E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D1E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        101,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D1F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D1F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        102,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D20 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D20_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        103,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D21 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D21_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        104,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D22 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D22_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        105,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D23 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D23_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        106,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D24 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D24_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        107,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D25 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D25_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        108,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D26 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D26_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        109,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D27 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D27_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        110,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2D28 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2D28_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        111,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        112,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        113,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        114,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        115,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        116,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        117,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        118,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        119,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        120,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E0B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E0B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        121,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        122,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        123,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        124,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_2E0F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_2E0F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        125,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        126,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        127,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        128,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        129,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        130,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        131,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        132,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        133,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        134,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        135,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        136,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        137,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D11 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D11_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        138,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D12 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D12_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        139,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D13 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D13_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        140,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D14 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D14_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        141,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D15 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D15_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        142,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D1C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D1C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        143,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D1D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D1D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        144,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D1E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D1E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        145,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D1F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D1F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        146,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D20 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D20_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        147,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D21 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D21_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        148,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D22 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D22_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        149,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D23 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D23_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        150,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D24 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D24_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        151,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D25 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D25_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        152,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D26 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D26_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        153,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D27 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D27_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        154,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3D28 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3D28_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        155,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        156,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        157,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        158,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        159,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        160,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        161,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        162,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        163,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        164,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E0B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E0B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        165,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        166,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        167,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        168,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_3E0F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_3E0F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        169,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D00 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D00_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        170,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D01 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D01_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        171,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D02 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D02_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        172,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D03 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D03_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        173,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D04 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D04_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        174,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D05 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D05_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        175,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D06 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D06_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        176,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D07 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D07_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        177,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D08 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D08_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        178,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D09 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D09_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        179,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D0A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D0A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        180,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D0B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D0B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        181,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D0C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D0C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        182,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D0D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D0D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        183,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D0E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D0E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        184,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D0F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D0F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        185,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D10 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D10_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        186,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D11 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D11_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        187,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D12 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D12_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        188,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D13 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D13_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        189,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D14 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D14_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        190,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D15 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D15_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        191,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D16 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D16_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        192,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D17 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D17_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        193,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D18 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D18_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        194,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D19 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D19_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        195,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D1A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D1A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        196,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D1B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D1B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        197,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D1C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D1C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        198,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D1D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D1D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        199,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D1E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D1E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        200,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D1F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D1F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        201,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D20 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D20_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        202,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D21 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D21_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        203,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D22 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D22_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        204,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D23 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D23_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        205,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D24 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D24_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        206,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D25 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D25_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        207,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D26 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D26_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        208,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D27 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D27_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        209,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D28 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D28_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        210,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D29 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D29_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        211,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D2A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D2A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        212,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D2B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D2B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        213,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D2C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D2C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        214,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D2D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D2D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        215,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D2E signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D2E_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        216,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D2F signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D2F_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        217,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D30 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D30_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        218,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D31 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D31_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        219,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D32 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D32_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        220,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D33 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D33_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        221,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D34 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D34_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        222,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D35 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D35_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        223,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D36 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D36_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        224,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D37 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D37_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        225,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D38 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D38_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        226,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D39 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D39_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        227,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D3A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D3A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        228,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D3B signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D3B_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        229,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D3C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D3C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        230,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_4D3D signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_4D3D_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        231,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_DFEA signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_DFEA_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        282,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_DFEB signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_DFEB_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        283,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_DFEC signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_DFEC_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        284,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_DFED signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_DFED_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        285,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F18A signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F18A_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        289,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F197 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F197_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        294,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F187 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F187_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        286,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F188 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F188_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        287,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F191 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F191_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        292,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F193 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F193_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        293,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F189 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F189_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        288,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F190 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F190_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        291,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_B303 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_B303_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        232,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F18C signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F18C_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        290,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_F1E0 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_F1E0_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        295,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0B20 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_B20_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        3,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0B21 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_B21_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        4,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0B22 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_B22_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        5,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid_R_0B23 signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_B23_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        6,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};

/* DID DcmDspDid signal configuration */
static const Dcm_SignalDIDConfig_tst DcmDspDid_10_SigConf[1]=
{
 /* Signal DcmDspDidSignal */
    {
        0,    /* Signal Byte Position */
        0,
        NULL_PTR,
        NULL_PTR           /* Write Data Function */
    }
};


#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


/**
 ***************************************************************************************************
           DID Extended Configuration
 ***************************************************************************************************
*/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
static const Dcm_ExtendedDIDConfig_tst Did_extendedConfig_DidInfo_Ext_R=
{
    
    0x5uL, /* Allowed Read Session levels */
    0xFFFFFFFFuL, /* Allowed Read Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        0x0uL,          /* Allowed Write Session levels */
        0x0uL,           /* Allowed Write Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        0x0uL,          /* Allowed IO control Session levels */
        0x0uL,          /* Allowed IO control Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        DCM_CONTROLMASK_INTERNAL,                                         /*Default value of Control mask*/
        0x0,                                         /*Control mask size in bytes*/
        FALSE,          /* If disabled does not the IOcontrol(IOCBI DIDS) to be reset on session/security change */
        0x00u
};
static const Dcm_ExtendedDIDConfig_tst Did_extendedConfig_DidInfo_R_DefExt=
{
    
    0x5uL, /* Allowed Read Session levels */
    0xFFFFFFFFuL, /* Allowed Read Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        0x0uL,          /* Allowed Write Session levels */
        0x0uL,           /* Allowed Write Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        0x0uL,          /* Allowed IO control Session levels */
        0x0uL,          /* Allowed IO control Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        DCM_CONTROLMASK_INTERNAL,                                         /*Default value of Control mask*/
        0x0,                                         /*Control mask size in bytes*/
        FALSE,          /* If disabled does not the IOcontrol(IOCBI DIDS) to be reset on session/security change */
        0x00u
};
static const Dcm_ExtendedDIDConfig_tst Did_extendedConfig_DidInfo_R_DefExt_W_Ext_L1=
{
    
    0x5uL, /* Allowed Read Session levels */
    0xFFFFFFFFuL, /* Allowed Read Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
    0x4uL, /* Allowed Write Session levels */
    0x2uL, /* Allowed Write Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        0x0uL,          /* Allowed IO control Session levels */
        0x0uL,          /* Allowed IO control Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        DCM_CONTROLMASK_INTERNAL,                                         /*Default value of Control mask*/
        0x0,                                         /*Control mask size in bytes*/
        FALSE,          /* If disabled does not the IOcontrol(IOCBI DIDS) to be reset on session/security change */
        0x00u
};
static const Dcm_ExtendedDIDConfig_tst Did_extendedConfig_DcmDspDidInfo_C_DEMO_0010=
{
    
    0x5uL, /* Allowed Read Session levels */
    0xFFFFFFFFuL, /* Allowed Read Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        0x0uL,          /* Allowed Write Session levels */
        0x0uL,           /* Allowed Write Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
    0x4uL, /* Allowed IO control Session levels */
    0x2uL, /* Allowed IO control Security levels */
        NULL_PTR,       /*  No User defined Mode rule Function configured  */
        DCM_CONTROLMASK_NO,                                         /*Control mask is not relvant*/
        0x0,                                         /*Control mask size in bytes*/
        TRUE,            /* If Enabled allows the IOcontrol(IOCBI DIDS) to be reset on session/security change */
    
        0xF
};

#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



/**
 ***************************************************************************************************
           DID Configuration Structure
 ***************************************************************************************************
*/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



const Dcm_DIDConfig_tst Dcm_DIDConfig []=
{

    {
        0x10,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_10_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DcmDspDidInfo_C_DEMO_0010   /*ExtendedConfiguration*/
    }


,
    {
        0x400,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_400_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x401,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_401_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x402,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_402_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x403,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_403_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x404,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_404_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x405,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_405_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x410,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_410_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x411,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_411_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x412,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_412_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x413,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        8,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_413_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x414,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_414_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x415,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_415_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x416,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_416_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x417,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_417_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x418,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_418_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x419,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        8,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_419_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0x420,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        200,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_420_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_Ext_R   /*ExtendedConfiguration*/
    }


,
    {
        0xB20,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_B20_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xB21,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_B21_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xB22,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_B22_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xB23,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_B23_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD2B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D2B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE00,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E00_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt_W_Ext_L1   /*ExtendedConfiguration*/
    }


,
    {
        0xE01,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E01_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        16,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE0B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E0B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xE0F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_E0F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D00,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D00_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D01,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D01_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D0B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D0B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D0F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D0F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D10,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D10_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D11,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D11_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D12,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D12_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D13,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D13_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D14,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D14_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D15,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D15_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D16,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D16_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D17,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D17_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D18,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D18_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D19,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D19_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D1A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D1A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D1B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D1B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D1C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D1C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D1D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D1D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D1E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D1E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D1F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D1F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D20,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D20_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D21,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D21_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D22,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D22_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D23,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D23_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D24,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D24_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D25,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D25_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D26,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D26_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D27,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D27_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D28,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D28_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D29,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D29_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D2A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        10,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D2A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1D2B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1D2B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E00,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E00_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt_W_Ext_L1   /*ExtendedConfiguration*/
    }


,
    {
        0x1E01,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E01_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        16,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E0B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E0B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x1E0F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_1E0F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D11,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D11_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D12,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D12_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D13,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D13_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D14,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D14_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D15,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D15_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D1C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D1C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D1D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D1D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D1E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D1E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D1F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D1F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D20,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D20_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D21,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D21_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D22,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D22_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D23,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D23_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D24,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D24_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D25,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D25_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D26,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D26_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D27,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D27_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2D28,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2D28_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        16,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E0B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E0B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x2E0F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_2E0F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D11,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D11_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D12,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D12_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D13,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D13_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D14,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D14_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D15,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D15_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D1C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D1C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D1D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D1D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D1E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D1E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D1F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D1F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D20,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D20_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D21,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D21_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D22,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D22_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D23,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D23_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D24,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D24_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D25,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D25_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D26,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D26_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D27,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D27_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3D28,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3D28_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        16,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E0B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E0B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x3E0F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        4,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_3E0F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D00,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D00_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D01,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D01_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D02,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D02_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D03,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D03_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D04,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D04_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D05,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D05_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D06,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D06_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D07,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D07_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D08,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D08_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D09,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D09_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D0A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D0A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D0B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D0B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D0C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D0C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D0D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D0D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D0E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D0E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D0F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D0F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D10,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D10_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D11,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D11_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D12,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D12_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D13,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D13_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D14,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D14_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D15,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D15_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D16,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D16_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D17,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D17_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D18,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D18_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D19,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D19_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D1A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D1A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D1B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D1B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D1C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D1C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D1D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D1D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D1E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D1E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D1F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D1F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D20,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D20_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D21,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D21_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D22,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D22_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D23,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D23_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D24,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D24_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D25,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D25_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D26,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D26_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D27,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D27_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D28,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D28_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D29,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D29_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D2A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D2A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D2B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D2B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D2C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D2C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D2D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D2D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D2E,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D2E_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D2F,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D2F_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D30,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D30_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D31,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D31_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D32,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D32_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D33,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D33_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D34,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D34_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D35,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D35_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D36,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D36_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D37,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D37_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D38,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D38_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D39,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D39_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D3A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D3A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D3B,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D3B_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D3C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D3C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0x4D3D,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_4D3D_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xB303,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        20,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_B303_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD000,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D000_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD001,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D001_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD002,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D002_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD003,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D003_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD004,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D004_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD005,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D005_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD007,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D007_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD008,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D008_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD009,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D009_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD010,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D010_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD011,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D011_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD012,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D012_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD013,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D013_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD014,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D014_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD015,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D015_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD016,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D016_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD017,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D017_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD018,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D018_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD019,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D019_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD020,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D020_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD021,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D021_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD022,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D022_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD023,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D023_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD024,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D024_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD025,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D025_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD026,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D026_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD027,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D027_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD028,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D028_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD029,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D029_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD030,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D030_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD031,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D031_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD032,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D032_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD033,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D033_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD034,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D034_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD035,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D035_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD036,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D036_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD037,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D037_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD038,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D038_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD039,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D039_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD040,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D040_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD041,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D041_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD042,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D042_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD043,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D043_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD044,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D044_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD045,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D045_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD046,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        1,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D046_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD047,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D047_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD048,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D048_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xD049,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        2,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_D049_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xDFEA,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        64,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_DFEA_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xDFEB,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        64,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_DFEB_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xDFEC,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        64,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_DFEC_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xDFED,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        64,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_DFED_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF187,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        14,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F187_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF188,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        14,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F188_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF189,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        10,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F189_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF18A,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        5,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F18A_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF18C,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        8,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F18C_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF190,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        17,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F190_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF191,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        14,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F191_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF193,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        10,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F193_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF197,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        6,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F197_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }


,
    {
        0xF1E0,                        /*DID*/
        USE_DATA_ELEMENT_SPECIFIC_INTERFACES,      /*DidUsePort*/
        FALSE,       /* Flag to indicate Atomic/new SenderReceiver communication as per SWS 4.4.0 or SenderReceiver communication communication as per SWS 4.2.0 */
        1,                          /*No of Signals*/
        48,                                /*TotalByteSize*/
        TRUE,                      /*FixedLength*/
        FALSE,                      /*DynamicallyDefined*/
        DcmDspDid_F1E0_SigConf,        /*DidSignalRef*/
#if (DCM_CFG_POSTBUILD_SUPPORT != DCM_CFG_OFF)
        ((DCM_CFG_CONFIGSET1)|(DCM_CFG_CONFIGSET2)|(DCM_CFG_CONFIGSET3)|(DCM_CFG_CONFIGSET4)|
         (DCM_CFG_CONFIGSET5)|(DCM_CFG_CONFIGSET6)|(DCM_CFG_CONFIGSET7)|(DCM_CFG_CONFIGSET8)),                          /*DidConfigurationMask indicating availability of DID in different configuration sets*/
#endif

        {NULL_PTR},        /* IOControlRequest Function*/


        &Did_extendedConfig_DidInfo_R_DefExt   /*ExtendedConfiguration*/
    }



};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint16 Dcm_DIDcalculateTableSize_u16(void)
{
  return ((uint16)(sizeof(Dcm_DIDConfig))/(uint16)(sizeof(Dcm_DIDConfig_tst)));
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"







#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
boolean Dcm_ControlDtcSettingModecheck_b(
/* MR12 RULE 8.13 VIOLATION: The object addressed by NegRespCode_u8 will be modified depending on different configurations */
Dcm_NegativeResponseCodeType * NegRespCode_u8)
{
    Std_ReturnType retVal_u8;
    boolean retVal_b;

    /* Call the DcmAppl API to check if the DTC Setting needs to be re-enabled */
    retVal_u8 =DcmAppl_UserDTCSettingEnableModeRuleService();

    if(retVal_u8!=E_OK)
    {
        (void)NegRespCode_u8;
        retVal_b = FALSE;
    }
    else
    {
        (void)NegRespCode_u8;
        retVal_b = TRUE;
    }
    return (retVal_b);

}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"




/**
 ***************************************************************************************************
            Ecu Reset (ER) Service
 ***************************************************************************************************
*/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/* Initialization of the parameters for the supported Reset Types */
const Dcm_DspEcuReset_tst Dcm_DspEcuResetType_cast[DCM_CFG_DSP_NUMRESETTYPE] =
{

    {
        RTE_MODE_DcmEcuReset_HARD,         /* DcmEcuReset Mode  for the ResetType */
        0x1,                              /* ResetType */
        DCM_RESET_NO_BOOT

    },

    {
        RTE_MODE_DcmEcuReset_KEYONOFF,         /* DcmEcuReset Mode  for the ResetType */
        0x2,                              /* ResetType */
        DCM_RESET_NO_BOOT

    },

    {
        RTE_MODE_DcmEcuReset_SOFT,         /* DcmEcuReset Mode  for the ResetType */
        0x3,                              /* ResetType */
        DCM_RESET_NO_BOOT

    }
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"





/**
 ***************************************************************************************************
        Communication Control Service
 ***************************************************************************************************
*/

#define DCM_START_SEC_VAR_INIT_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
Std_ReturnType (*Dcm_ComMUserReEnableModeRuleRef) (void) = &DcmAppl_UserCommCtrlReEnableModeRuleService;
#define DCM_STOP_SEC_VAR_INIT_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

static boolean Dcm_Can_Network_CanNodeNum_01_IsModeDefault ( void )
{
	boolean dataRetValue_b;

	if ( SchM_Mode_Dcm_R_DcmCommunicationControl_Can_Network_CanNodeNum_01() != RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_TX_NORM_NM )
	{
		dataRetValue_b = FALSE;
	}
	else
	{
		dataRetValue_b = TRUE;
	}
	return (dataRetValue_b);
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

/* Function to map Dcm_CommunicationModeType to Rte_Communication Mode type for Can_Network_CanNodeNum_01 */
static Std_ReturnType Dcm_Can_Network_CanNodeNum_01_SwitchIndication ( Dcm_CommunicationModeType Mode )
{
	Std_ReturnType dataRetValue_u8;
	switch (Mode)
	{
		case DCM_ENABLE_RX_TX_NORM: dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01( RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_TX_NORM);
			break;
		case DCM_ENABLE_RX_DISABLE_TX_NORM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_DISABLE_TX_NORM);
			break;
		case DCM_DISABLE_RX_ENABLE_TX_NORM: dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_DISABLE_RX_ENABLE_TX_NORM);
			break;
		case DCM_DISABLE_RX_TX_NORMAL:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_DISABLE_RX_TX_NORM);
			break;
		case DCM_ENABLE_RX_TX_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_TX_NM);
			break;
		case DCM_ENABLE_RX_DISABLE_TX_NM: dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01( RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_DISABLE_TX_NM);
			break;
		case DCM_DISABLE_RX_ENABLE_TX_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_DISABLE_RX_ENABLE_TX_NM);
			break;
		case DCM_DISABLE_RX_TX_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_DISABLE_RX_TX_NM);
			break;
		case DCM_ENABLE_RX_TX_NORM_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_TX_NORM_NM);
			break;
		case DCM_ENABLE_RX_DISABLE_TX_NORM_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_DISABLE_TX_NORM_NM);
			break;
		case DCM_DISABLE_RX_ENABLE_TX_NORM_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_DISABLE_RX_ENABLE_TX_NORM_NM);
			break;
		case DCM_DISABLE_RX_TX_NORM_NM:  dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_DISABLE_RX_TX_NORM_NM);
			break;
		default: dataRetValue_u8 = SchM_Switch_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01(RTE_MODE_DcmCommunicationControl_Can_Network_CanNodeNum_01_DCM_ENABLE_RX_TX_NORM);
			break;
	}
	return (dataRetValue_u8);
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/*Array  stores the channelID info which is to be informed about the communication mode change if the subnet ID is 0  */
const Dcm_Dsld_AllChannelsInfoType Dcm_AllChannels_ForModeInfo[DCM_CFG_NUM_ALLCHANNELS_MODE_INFO]=
{
	{
		&Dcm_Can_Network_CanNodeNum_01_SwitchIndication,  	/* Auto generated Dcm function to be called for invoking SchM Switch Indication */
		&Dcm_Can_Network_CanNodeNum_01_IsModeDefault,		/* Auto generated Dcm function to be called for checking if Active Mode is Default */
 		ComMConf_ComMChannel_Can_Network_CanNodeNum_01
	}
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/* Array for storing sub nodes supported and their corresponding Node ID and ComM channels */
const Dcm_Dsld_SubNodeInfo Dcm_SubNode_table[DCM_CFG_NUM_SUB_NODES]=
{
    {
        &Dcm_Can_Network_CanNodeNum_01_SwitchIndication,      /* Auto generated Dcm function to be called for invoking SchM Switch Indication */
        &Dcm_Can_Network_CanNodeNum_01_IsModeDefault,     /* Auto generated Dcm function to be called for checking if Active Mode is Default */
        1,              /* Sub node Id */
        TRUE,                /* Sub node used */
        ComMConf_ComMChannel_Can_Network_CanNodeNum_01             /* ComM Channel Id of the Sub node */
    }

};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"




/**
 ***************************************************************************************************
        Clear Diagnostic Information Service (0x14)
 ***************************************************************************************************
*/






/*
****************************************************************************************************
          RMBA Configuration Structure
****************************************************************************************************
*/
#define DCM_START_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
const Dcm_RMBAConfig_tst Dcm_RMBAConfig_cast []=
{
    {
	
                0xAF000000uL,   /*Lower memory address range allowed for reading*/

        0xAF03FFFFuL,  /*High memory address range allowed for reading*/
        0xFFFFFFFFuL,   /* Allowed Read Security levels */
        0x4uL,     /* Allowed Read Session levels */
        NULL_PTR,                                              /* No User specific Mode Rule function configured */
        0        /*Value of Memory Identifier to select the desired memory device*/
    }
,
    {
        0xAF000000,   /*Lower memory address range allowed for reading*/
        0xAF03FFFF,  /*High memory address range allowed for reading*/
        0xFFFFFFFFuL,   /* Allowed Read Security levels */
        0x4uL,     /* Allowed Read Session levels */
        NULL_PTR,                                              /* No User specific Mode Rule function configured */
        0     /*Value of Memory Identifier to select the desired memory device*/
    }
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
uint16 Dcm_RmbacalculateTableSize_u16(void)
{
  return ((uint16)(sizeof(Dcm_RMBAConfig_cast))/(uint16)(sizeof(Dcm_RMBAConfig_tst)));
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

















