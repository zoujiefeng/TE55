/* BSW-12320 */
#ifndef RBA_DEMOBDBASIC_RDYTYPES_H
#define RBA_DEMOBDBASIC_RDYTYPES_H

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "Dem_Types.h"
#include "Dem_Cfg.h"


#if DEM_CFG_OBD_RDY

/***********************************************************************************************************************
 *                                  Readiness Group Type Index Macro definitions
 **********************************************************************************************************************/
/* None */
#define DEM_OBD_RDY_NONE              255u

/* Comprehensive component */
#define DEM_OBD_RDY_CMPRCMPT          10u
/* Fuel system */
#define DEM_OBD_RDY_FLSYS             9u
/* Non Contious Fuel system, for usage of EventIds that are non-continuous */
#define DEM_OBD_RDY_FLSYS_NONCONT     9u
/* Misfire */
#define DEM_OBD_RDY_MISF              8u


#if (DEM_CFG_OBD_ENGINE_TYPE == DEM_CFG_OBD_ENGINE_TYPE_SPARK)
/* EGR system */
#define DEM_OBD_RDY_ERG               7u
/* Oxygen sensor heater */
#define DEM_OBD_RDY_O2SENSHT          6u
/* Oxygen sensor */
#define DEM_OBD_RDY_O2SENS            5u
/* A/C system component */
#define DEM_OBD_RDY_AC                4u
/* Secondary air system */
#define DEM_OBD_RDY_SECAIR            3u
/* Evaporative system */
#define DEM_OBD_RDY_EVAP              2u
/* Heated catalyst */
#define DEM_OBD_RDY_HTCAT             1u
/* Catalyst */
#define DEM_OBD_RDY_CAT               0u

#elif (DEM_CFG_OBD_ENGINE_TYPE == DEM_CFG_OBD_ENGINE_TYPE_COMPRESSION)
/* EGR and/or VVT System */
#define DEM_OBD_RDY_ERG               7u
/* Particle Matters Filter */
#define DEM_OBD_RDY_PMFLT             6u
/* Exhaust Gas Sensor */
#define DEM_OBD_RDY_EGSENS            5u
/* 4th group is reserved */

/* Boost Pressure System */
#define DEM_OBD_RDY_BOOSTPR           3u
/* 2nd group is reserved */

/* NOx/SCR Monitor */
#define DEM_OBD_RDY_NOXCAT            1u
/* Non-Methan HC Catalyst */
#define DEM_OBD_RDY_HCCAT             0u

#endif

#define DEM_OBD_RDY_ZERO              0u
#define DEM_OBD_RDY_ONE               1u

/* Pid values */
#define DEM_OBD_RDY_PID01             0x01u
#define DEM_OBD_RDY_PID41             0x41u

/* Completion and Enable Status default value */
#define DEM_OBD_RDY_UNSUPPORTED       (boolean)0u

/* Completion Status values */
#define DEM_OBD_RDY_COMPLETED         (boolean)0u

#define DEM_OBD_RDY_INCOMPLETED       (boolean)1u

/* Enable Status values */
#define DEM_OBD_RDY_DISABLED          (boolean)0u

#define DEM_OBD_RDY_ENABLED           (boolean)1u

/* Offset definitions for the status bits in the BCD bytes */
#define DEM_OBD_RDY_ENGINE_BIT_OFFSET                19u

#define DEM_OBD_RDY_BYTE_C_OFFSET                    8u

#define DEM_OBD_RDY_BYTE_D_OFFSET                    0u

#define DEM_OBD_RDY_ENABLESTATUS_BYTE_B_OFFSET       8u

#define DEM_OBD_RDY_COMPLETIONSTATUS_BYTE_B_OFFSET   12u


/*
 **********************************************************************************************************************
 * Type definitions
 **********************************************************************************************************************
 */
typedef uint8 rba_DemObdBasic_RdyId_Type;

/* [$DD_BSWCODE 29783] */
typedef struct
{
    rba_DemObdBasic_RdyId_Type RdyId_u8;
    Dem_DtcIdType Offset_u16;

}rba_DemObdBasic_RdyOffsetType;

/* [$DD_BSWCODE 29784] */
typedef struct
{
    boolean EnableStatus;
    boolean CompletionStatus;
}rba_DemObdBasic_RdyStatusType;

#endif /* DEM_CFG_OBD_RDY */

#endif /* RBA_DEMOBDBASIC_RDYTYPES_H */
/* END BSW-12320 */

