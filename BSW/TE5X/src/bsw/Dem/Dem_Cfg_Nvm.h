/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef DEM_CFG_NVM_H
#define DEM_CFG_NVM_H

#define  DEM_NVM_ID_DEM_GENERIC_NV_DATA           0u
#define  DEM_NVM_ID_EVMEM_LOC_0                   1u
#define  DEM_NVM_ID_EVMEM_LOC_1                   2u
#define  DEM_NVM_ID_EVMEM_LOC_10                  3u
#define  DEM_NVM_ID_EVMEM_LOC_11                  4u
#define  DEM_NVM_ID_EVMEM_LOC_12                  5u
#define  DEM_NVM_ID_EVMEM_LOC_13                  6u
#define  DEM_NVM_ID_EVMEM_LOC_14                  7u
#define  DEM_NVM_ID_EVMEM_LOC_15                  8u
#define  DEM_NVM_ID_EVMEM_LOC_2                   9u
#define  DEM_NVM_ID_EVMEM_LOC_3                   10u
#define  DEM_NVM_ID_EVMEM_LOC_4                   11u
#define  DEM_NVM_ID_EVMEM_LOC_5                   12u
#define  DEM_NVM_ID_EVMEM_LOC_6                   13u
#define  DEM_NVM_ID_EVMEM_LOC_7                   14u
#define  DEM_NVM_ID_EVMEM_LOC_8                   15u
#define  DEM_NVM_ID_EVMEM_LOC_9                   16u
#define  DEM_NVM_ID_OBD_PERMANENT_MEMORY          17u
#define  DEM_NVM_ID_OBD_DTR_DATA                  18u
#define  DEM_NVM_ID_EVT_STATUSBYTE                19u
#define  DEM_NVM_ID_INDICATOR_ATTRIBUTES          20u

#define  DEM_NVM_CFG_BLOCKID_TYPE                 uint8
#define  DEM_NVM_CFG_NUM_BLOCKS_TOTAL             21
#define  DEM_NVM_CFG_NUM_BLOCKS_EXTENDED          18

#define  DEM_NVM_CFG_NVM_BLOCK_IDS                \
{\
    NvMConf_NvMBlockDescriptor_NVM_ID_DEM_GENERIC_NV_DATA,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_0,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_1,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_10,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_11,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_12,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_13,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_14,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_15,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_2,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_3,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_4,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_5,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_6,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_7,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_8,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_9,\
    NvMConf_NvMBlockDescriptor_NVM_ID_OBD_PERMANENT_MEMORY,\
    NvMConf_NvMBlockDescriptor_NVM_ID_OBD_DTR_DATA,\
    NvMConf_NvMBlockDescriptor_NVM_ID_EVT_STATUSBYTE,\
    NvMConf_NvMBlockDescriptor_NVM_ID_INDICATOR_ATTRIBUTES\
}

#define  DEM_NVM_CFG_BLOCKS_EXTENDED              \
{\
    {&Dem_GenericNvData, DEM_SIZEOF_VAR(Dem_GenericNvData), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[0], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[1], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[10], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[11], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[12], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[13], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[14], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[15], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[2], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[3], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[4], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[5], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[6], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[7], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[8], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&Dem_EvMemEventMemory[9], DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType), DEM_CFG_COPY_FCT_ID_MEMCOPY},\
    {&rba_DemObdBasic_PdtcMem[0], DEM_SIZEOF_VAR(rba_DemObdBasic_PdtcMem), DEM_CFG_COPY_FCT_ID_MEMCOPY}\
}

#define  DEM_NVM_CFG_NUM_STORAGEBUFFER            2

/* 2 block types supported: normal Dem and Bfm Record */
#define DEM_CFG_COPY_FCT_ID_MEMCOPY           0   /* normal mem copy*/

#define DEM_NVM_CFG_COPYFCT_NUM  1 

#define DEM_NVM_CFG_COPYFCT_INIT  { (&Dem_NvMNormalMemCopy)   }

#endif

