
/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#include "rba_DemObdBasic_Prv.h"

#if DEM_CFG_OBD_DTR


#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"

const rba_DemObdBasic_DtrConfigType rba_DemObdBasic_DtrConfig[DEM_CFG_NUM_ALL_DTRS] =
{

    {   /* Mid01 */
        1L,    /* Denominator0 */
        0L,    /* Numerator0 */
        1L,    /* Numerator1 */
        1u,    /* OBDMID */
        5u,    /* TID */
        47u,    /* UaSID */
        
        DEM_OBDDTR_UPDATEKIND_UPDATE_ALWAYS,    /* DtrUpdateKind */
        DEM_EVENTID_INVALID    /* EventId Reference */
    }
};

const uint32 rba_DemObdBasic_ObdmidMask[8] = 
{
    0x80000000uL, /* 01 - 1F, OBDMIDs list: [1]*/
    0x00000000uL, /* 21 - 3F, OBDMIDs list: []*/
    0x00000000uL, /* 41 - 5F, OBDMIDs list: []*/
    0x00000000uL, /* 61 - 7F, OBDMIDs list: []*/
    0x00000000uL, /* 81 - 9F, OBDMIDs list: []*/
    0x00000000uL, /* C1 - DF, OBDMIDs list: []*/
    0x00000000uL, /* C1 - DF, OBDMIDs list: []*/
    0x00000000uL  /* E1 - FF, OBDMIDs list: []*/
};

const Dem_DtrIdType rba_DemObdBasic_ObdmId2DtrId[DEM_CFG_NUM_ALL_DTRS] = 
{
   /* OBDMID: 1*/
    0u
};

const rba_DemObdBasic_DtrOffsetType rba_DemObdBasic_DtrOffset[DEM_CFG_NUM_OF_OBDMIDS+1] = 
{
    {
        1u,    /* ObdMid_u8 */
        0u    /* Offset_u16 */
    },
    {
        0u,    /* Last Element denotes the invalid Obdmid */
        1u,    /* Offset_u16 */
    }
};

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"


#endif

