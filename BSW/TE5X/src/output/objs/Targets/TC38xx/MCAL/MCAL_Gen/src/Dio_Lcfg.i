# 1 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c"
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c"
# 1 ".\\output\\inc/Dio.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2


# 1 ".\\output\\inc/Dio_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 1
# 2081 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 159 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 2082 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 2

extern const struct Dio_ConfigType Dio_Config;



# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 172 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 2088 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 2
# 2 ".\\output\\inc/Dio_Cfg.h" 2
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 117 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
typedef uint16 Dio_ChannelType;





typedef uint8 Dio_LevelType;




typedef uint8 Dio_PortType;




typedef uint16 Dio_PortLevelType;




typedef struct
{

  Dio_PortLevelType mask;


  uint8 offset;


  Dio_PortType port;
} Dio_ChannelGroupType;




typedef struct
{

  uint8 Dio_PortIdConfig;


  uint16 Dio_ChannelConfig;

} Dio_PortChannelIdType;




typedef struct Dio_ConfigType
{

  const Dio_PortChannelIdType* Dio_PortChannelIdConfigPtr;


  const Dio_ChannelGroupType* Dio_ChannelGroupConfigPtr;


  uint32 Dio_ChannelGroupConfigSize;
} Dio_ConfigType;
# 193 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 194 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 194 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_LevelType Dio_ReadChannel
(
  const Dio_ChannelType ChannelId
);
# 261 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WriteChannel
(
  const Dio_ChannelType ChannelId,
  const Dio_LevelType Level
);
# 293 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_PortLevelType Dio_ReadPort
(
  const Dio_PortType PortId
);
# 325 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WritePort
(
  const Dio_PortType PortId,
  const Dio_PortLevelType Level
);
# 358 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_PortLevelType Dio_ReadChannelGroup
(
  const Dio_ChannelGroupType * const ChannelGroupIdPtr
);
# 394 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WriteChannelGroup
(
  const Dio_ChannelGroupType * const ChannelGroupIdPtr,
  const Dio_PortLevelType Level
);
# 431 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_LevelType Dio_FlipChannel
(
  const Dio_ChannelType ChannelId
);
# 487 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 206 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 488 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 2 ".\\output\\inc/Dio.h" 2
# 48 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c" 2
# 61 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 159 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 62 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c" 2
# 70 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c"
  static const Dio_PortChannelIdType Dio_kPortChannelConfig[] =
  {
    {

      ((uint8)1U),
      (0x1ac1U)
    },
    {

      ((uint8)1U),
      (0x00f8U)
    },
    {

      ((uint8)1U),
      (0x0fc3U)
    },
    {

      ((uint8)1U),
      (0x0070U)
    },
    {

      ((uint8)1U),
      (0xe1b7U)
    },
    {

      ((uint8)1U),
      (0x0003U)
    },
    {

      ((uint8)1U),
      (0x000fU)
    },
    {

      ((uint8)1U),
      (0x05fcU)
    },
    {

      ((uint8)1U),
      (0x018fU)
    },
    {

      ((uint8)1U),
      (0x5e0bU)
    },
    {

      ((uint8)1U),
      (0x0020U)
    },
    {

      ((uint8)1U),
      (0x011fU)
    },
    {

      ((uint8)1U),
      (0x0087U)
    },
    {

      ((uint8)1U),
      (0x00bcU)
    },
    {

      ((uint8)1U),
      (0xc040U)
    },
    {

      ((uint8)1U),
      (0x0012U)
    },
    {

      ((uint8)1U),
      (0x0000U)
    }
  };
    const Dio_ConfigType Dio_Config =
    {


            &Dio_kPortChannelConfig[0],


      ((void *)0),

      (0U)
    };





# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 172 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 175 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Dio_Lcfg.c" 2
