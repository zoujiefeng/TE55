

#ifndef RBA_DEMOBDBASIC_PDTCMEMTYPES_H
#define RBA_DEMOBDBASIC_PDTCMEMTYPES_H

#include "Dem_Types.h"
#include "Dem_Cfg.h"

/* PDTC state */
#define OBD_PDTC_LOCID_STATE_EMPTY                 0x00u
#define OBD_PDTC_LOCID_STATE_MILON                 0x01u
#define OBD_PDTC_LOCID_STATE_MILON_VISIBLE_0A      0x02u
#define OBD_PDTC_LOCID_STATE_MILOFF_VISIBLE_0A     0x03u
#define OBD_PDTC_LOCID_STATE_MASK                  0x0Fu

/* PDTC test status this driving cycle */
#define OBD_PDTC_LOCID_TESTFAILED_BITMASK          0x10u
#define OBD_PDTC_LOCID_TESTCOMPLETE_BITMASK        0x20u

/* PDTC healing conditions */
#define OBD_PDTC_LOCID_PFC_CYCLE_BITMASK           0x40u
#define OBD_PDTC_LOCID_OK_CYCLE_BITMASK            0x80u
#define OBD_PDTC_LOCID_HEALING_MASK                0xC0u

/* storage priorities */
#define OBD_PDTC_STORAGE_PRIO_UNDEF                0x00u
#define OBD_PDTC_STORAGE_PRIO_EMPTY                0x01u
#define OBD_PDTC_STORAGE_PRIO_STORED               0x02u

#define OBD_PDTC_LOC_INVALID                       DEM_CFG_PERMANENT_MEMORY_SIZE

typedef struct
{
    uint8 state;
    Dem_EventIdType EventId;
} rba_DemObdBasic_PdtcMemType;

typedef uint16_least rba_DemObdBasic_PdtcMemIterator;

#endif

