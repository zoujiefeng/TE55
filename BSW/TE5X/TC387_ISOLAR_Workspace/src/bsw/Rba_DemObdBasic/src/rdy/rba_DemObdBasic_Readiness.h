

#ifndef RBA_DEMOBDBASIC_READINESS_H
#define RBA_DEMOBDBASIC_READINESS_H

/* BSW-12320 */
/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */
 /* END BSW-12320 */
#include "rba_DemObdBasic_Types.h"

/* BSW-12320 */
#if DEM_CFG_OBD_RDY
/*
 **********************************************************************************************************************
 * Variables
 **********************************************************************************************************************
 */
#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"

extern const rba_DemObdBasic_RdyOffsetType rba_DemObdBasic_RdyOffset[DEM_CFG_NUM_OF_RDYS+1u];
extern const Dem_DtcIdType rba_DemObdBasic_RdyId2DtcId[DEM_RDY_DTCID_COUNT+1u];

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

/*
 **********************************************************************************************************************
 * Extern declarations
 **********************************************************************************************************************
 */
/* END BSW-12320 */
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/* BSW-12320 */
#define rba_DemObdBasic_Rdy_StartDrivingCycle rba_DemObdBasic_Rdy_Clear
#define rba_DemObdBasic_Rdy_Init              rba_DemObdBasic_Rdy_Clear
/* END BSW-12320 */

uint32 rba_DemObdBasic_Rdy_GetPid01ByteBCD(void);
uint32 rba_DemObdBasic_Rdy_GetPid41ByteBCD(void);
/* BSW-12320 */
void   rba_DemObdBasic_Rdy_Clear(void);
/* END BSW-12320 */

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

/* BSW-12320 */
#else

#define rba_DemObdBasic_Rdy_GetPid01ByteBCD()  (0x00040000u)
#define rba_DemObdBasic_Rdy_GetPid41ByteBCD()  (0x00040000u)


#define rba_DemObdBasic_Rdy_Clear()
#define rba_DemObdBasic_Rdy_StartDrivingCycle()
#define rba_DemObdBasic_Rdy_Init()

#endif /*DEM_CFG_OBD_RDY*/

#endif /*RBA_DEMOBDBASIC_READINESS_H*/
/* END BSW-12320 */
