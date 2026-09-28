
/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef RBA_DEMOBDBASIC_CFG_IUMPR_H
#define RBA_DEMOBDBASIC_CFG_IUMPR_H

#define DEM_CFG_OBD_IUMPR                 FALSE

#if DEM_CFG_OBD_IUMPR

#define DEM_CFG_IUMPR_FIM                 FALSE
#define DEM_CFG_IUMPR_GRAPH               FALSE

/* Total number of IUMPR records to be processed */
#define DEM_CFG_NUM_ALL_IUMPR_RATIOS      0u

/* ID assigned to the invalid ratio */
#define DEM_CFG_RATIOID_INVALID           0u

/***************************************** OBD IUMPR general configurations *******************************************/
/* Total number of IUMPR groups (incl. Private) */
#define DEM_CFG_NUM_ALL_IUMPR_GROUPS      9u

/* Total number of FIDs assigned to all the IUMPR records */
#define DEM_CFG_NUM_ALL_IUMPR_RATIO_FIDS   0u

/* Number of ratios configured to use the different denominator conditions */
#define DEM_CFG_NUM_IUMPR_RATIOS_NONE   0u
#define DEM_CFG_NUM_IUMPR_RATIOS_500MILL   0u
#define DEM_CFG_NUM_IUMPR_RATIOS_COLDSTART   0u
#define DEM_CFG_NUM_IUMPR_RATIOS_EVAP   0u
#define DEM_CFG_NUM_IUMPR_RATIOS_PHYS_API   0u


/* Defines for each of the supported IUMPR groups */
#define DEM_OBDIUMPR_GRP_NMHCCAT         0u
#define DEM_OBDIUMPR_GRP_NOXCAT         1u
#define DEM_OBDIUMPR_GRP_NOXADSORB         2u
#define DEM_OBDIUMPR_GRP_PMFILTER         3u
#define DEM_OBDIUMPR_GRP_EGSENSOR         4u
#define DEM_OBDIUMPR_GRP_EGR         5u
#define DEM_OBDIUMPR_GRP_BOOSTPRS         6u
#define DEM_OBDIUMPR_GRP_FLSYS         7u
#define DEM_OBDIUMPR_GRP_PRIVATE         8u


/* Defines for the various ratio specific denominator conditions (in addition to the General denominator condition) */
#define DEM_OBDIUMPR_DENCOND_NONE      0u
#define DEM_OBDIUMPR_DENCOND_500MILL      1u
#define DEM_OBDIUMPR_DENCOND_COLDSTART      2u
#define DEM_OBDIUMPR_DENCOND_EVAP      3u
#define DEM_OBDIUMPR_DENCOND_PHYS_API      4u

/* Defines for each of the supported IUMPR ratio types */
#define DEM_OBDIUMPR_RATIOTYPE_API   0u
#define DEM_OBDIUMPR_RATIOTYPE_OBSERVER   1u


#endif

#endif
