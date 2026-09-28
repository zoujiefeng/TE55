# 1 "Integration\\ecu\\SchM.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Integration\\ecu\\SchM.c"
# 36 "Integration\\ecu\\SchM.c"
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
# 37 "Integration\\ecu\\SchM.c" 2
# 1 ".\\output\\inc/McalOsConfig.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalOsConfig.h" 1
# 2 ".\\output\\inc/McalOsConfig.h" 2
# 38 "Integration\\ecu\\SchM.c" 2
# 1 ".\\output\\inc/Os.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os.h" 1
# 39 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 40 ".\\output\\inc/..\\..\\os\\Os.h" 2
# 94 ".\\output\\inc/..\\..\\os\\Os.h"
 extern int __builtin_clz(unsigned int reg);






typedef struct {
  uint8 Class;
  uint8 TIN;
  uint32 ReturnAddress;
} OsTrapInfoType;
typedef OsTrapInfoType * OsTrapInfoRefType;




typedef uint32 uint32_aligned __attribute__ ((aligned (4)));
# 131 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern StatusType Os_Cbk_StartCore(uint16 CoreID);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 137 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 142 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern void Os_InitializeInterruptTable(void);
extern void Os_InitializeTrapTable(void);
extern void Os_InitializeServiceRequests(void);
extern void Os_StartCoreGate(void);
extern StatusType Os_GetTrapInfo(OsTrapInfoRefType Info);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 151 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 156 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper0(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 165 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 170 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper2(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 184 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper3(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\os\\Os.h" 2






typedef struct {
  uint32 store[17U];
} Os_JumpBufType[1];
extern sint32 Os_setjmp(Os_JumpBufType j);
extern void Os_longjmp(Os_JumpBufType j);
extern void Os_longjmp_ext(Os_JumpBufType j);
extern void Os_ECClongjmp(Os_JumpBufType j);
# 218 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned char Os_ResourceCountType;
typedef unsigned Os_StackTraceType;
typedef struct {Os_StackTraceType sp; Os_StackTraceType ctx;} Os_StackValueType;
typedef Os_StackValueType Os_StackSizeType;


typedef void (*Os_VoidVoidFunctionType)(void);
typedef Os_VoidVoidFunctionType Os_TaskEntryFunctionType;
typedef Os_VoidVoidFunctionType Os_IsrEntryFunctionType;
typedef Std_VersionInfoType * Std_VersionInfoRefType;

typedef enum {OS_BUDGET = 0U, OS_ECC_START, OS_ECC_RESUME, OS_ECC_WAIT} Os_StackOverrunType;
# 238 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned char ApplicationType;


typedef void (*Os_AppErrorHookFunctionType)(StatusType Error);
typedef uint32 Os_tmaskType;
typedef struct Os_ApplicationConfigurationType_s {
  ApplicationType app_id;
  Os_AppErrorHookFunctionType errorhook;
  uint8 access;
} Os_ApplicationConfigurationType;

typedef uint32 Os_CoreStateType;
typedef uint16 AreaIdType;
typedef const uint8 * const Os_ucharConstRefType;
typedef const uint8 * const Os_uint8ConstRefType;
typedef uint8 * const Os_uint8RefType;
typedef const uint16 * const Os_uint16ConstRefType;
typedef uint16 * const Os_uint16RefType;
typedef const uint32 * const Os_uint32ConstRefType;
typedef uint32 * const Os_uint32RefType;
typedef unsigned int Os_PeripheralAddressType;
typedef struct {
  AreaIdType id;
  uint8 access;
  Os_PeripheralAddressType start;
  Os_PeripheralAddressType end;
} Os_PeripheralAreaType;


typedef unsigned int TickType;
typedef signed int SignedTickType;
typedef TickType * TickRefType;
typedef uint32 PhysicalTimeType;
typedef unsigned int Os_StopwatchTickType;
typedef Os_StopwatchTickType * Os_StopwatchTickRefType;
typedef signed int Os_TimeLimitType;

typedef enum {PRO_IGNORE = 0U, PRO_SHUTDOWN} ProtectionReturnType;
typedef Os_JumpBufType * Os_TerminatorType;

typedef uint32 IdleModeType;


typedef uint32_aligned Os_Lockable;
typedef const void * Os_LockerRefType;
typedef uint16 CoreIdType;
typedef uint16 SpinlockIdType;

typedef enum {TRYTOGETSPINLOCK_SUCCESS = 0U, TRYTOGETSPINLOCK_NOSUCCESS} TryToGetSpinlockType;
typedef TryToGetSpinlockType * Os_TryToGetSpinlockRefType;
struct Os_ControlledCoreType_s;
typedef struct Os_SpinlockDynType_s {
  volatile Os_Lockable lock;
  SpinlockIdType predecessor;
} Os_SpinlockDynType;
typedef struct Os_SpinlockType_s {
  uint8 access;
  SpinlockIdType successor;
} Os_SpinlockType;
# 330 ".\\output\\inc/..\\..\\os\\Os.h"
typedef StatusType * Os_StatusRefType;


typedef unsigned char AppModeType;



typedef unsigned int AccessType;
# 347 ".\\output\\inc/..\\..\\os\\Os.h"
typedef const uint8 * MemoryStartAddressType;
typedef unsigned int MemorySizeType;

typedef enum {RESTART = 1U, NO_RESTART} RestartType;
typedef enum {APPLICATION_ACCESSIBLE = 0U, APPLICATION_RESTARTING, APPLICATION_TERMINATED} ApplicationStateType;
typedef ApplicationStateType * ApplicationStateRefType;
typedef enum {ACCESS = 0U, NO_ACCESS} ObjectAccessType;
typedef enum {OBJECT_TASK = 0U, OBJECT_ISR, OBJECT_ALARM, OBJECT_RESOURCE, OBJECT_COUNTER, OBJECT_SCHEDULETABLE} ObjectTypeType;
typedef const void * const Os_AnyType;

typedef unsigned char TrustedFunctionIndexType;
typedef void * TrustedFunctionParameterRefType;

typedef void (*Os_FunctionEntryType)(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams);
typedef struct Os_TrustedFunctionType_s {
  Os_FunctionEntryType function;
  CoreIdType core_id;
  const Os_ApplicationConfigurationType * const application;
} Os_TrustedFunctionType;

typedef uint16 Os_IdleType;


typedef struct Os_MeterInfoType_s {
  Os_StopwatchTickType elapsed;
  Os_StopwatchTickType previous;
  Os_StopwatchTickType max;
   Os_StopwatchTickType cumulative;
  Os_StackValueType stackbase;
  Os_StackSizeType stackusage;
  Os_StackSizeType stackmax;
  Os_StackSizeType stackbudget;
} Os_MeterInfoType;
typedef Os_MeterInfoType * Os_MeterInfoRefType;


typedef uint8 EventMaskType;
typedef EventMaskType * EventMaskRefType;



typedef uint32 Os_imaskType;

typedef struct Os_ISRDynType_s {
  boolean terminating;
  Os_MeterInfoType meter;
} Os_ISRDynType;
typedef void (*Os_IsrTerminatedFunctionType)(void);
typedef struct Os_ISRType_s {
  Os_VoidVoidFunctionType entry_function;
  Os_IsrTerminatedFunctionType terminated_function;
  Os_ISRDynType * const dynamic;
  Os_imaskType imask;
  uint32 index;
  Os_StackSizeType stackbudget;
  uint8 access;
  ApplicationType application;
} Os_ISRType;
typedef const Os_ISRType * ISRType;






typedef ISRType * ISRRefType;
# 423 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned int Os_bitmask;
typedef Os_bitmask Os_pset0Type;
typedef Os_bitmask Os_pset1Type;
typedef Os_bitmask Os_pset2Type;
typedef Os_bitmask Os_pset3Type;
typedef union {
  Os_pset0Type p0;
  Os_pset1Type p1;
  Os_pset2Type p2;
  Os_pset3Type p3;
} Os_psetType;

typedef union {
  Os_bitmask t0;
  Os_bitmask t1;
  Os_bitmask t2;
  Os_bitmask t3;
} Os_tpmaskType;

typedef struct Os_TaskDynType_s {
  Os_JumpBufType terminate_jump_buf;
  Os_MeterInfoType meter;
  uint32 termination_state;
} Os_TaskDynType;

typedef struct Os_TaskType_s {
  Os_TaskDynType * const dynamic;
  Os_VoidVoidFunctionType entry_function;
  Os_psetType pset;
  Os_tpmaskType base_tpmask;
  Os_tpmaskType tpmask;
  CoreIdType core_id;
  uint32 index;
  Os_StackSizeType stackbudget;
  uint8 access;
  ApplicationType application;
} Os_TaskType;
typedef const Os_TaskType * TaskType;






typedef TaskType * TaskRefType;
enum Os_TaskStateType {SUSPENDED = 0U, READY, WAITING, RUNNING};
typedef enum Os_TaskStateType TaskStateType;
typedef TaskStateType * TaskStateRefType;
# 481 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_ResourceDynType_s {
  TaskType locker;
  union {
    Os_tpmaskType tpmask;
  } saved_priority;
} Os_ResourceDynType;
typedef struct Os_ResourceType_s {
  Os_ResourceDynType * const dynamic;
  Os_tpmaskType tpmask;
  uint8 access;
} Os_ResourceType;
typedef const Os_ResourceType * ResourceType;




typedef struct {
  TickType maxallowedvalue;
  TickType ticksperbase;
  TickType mincycle;
} AlarmBaseType;
typedef AlarmBaseType * AlarmBaseRefType;
typedef struct Os_AlarmDynType_s {
  boolean running;
  TickType match;
  TickType period;
} Os_AlarmDynType;
typedef struct Os_AlarmType_s {
  uint8 config;
  uint8 access;
  ApplicationType application;
} Os_AlarmType;
typedef unsigned char AlarmType;



typedef void (*Os_AlarmCallbackType)(void);




typedef struct {
  boolean Running;
  boolean Pending;
  TickType Delay;
} Os_CounterStatusType;
typedef Os_CounterStatusType * Os_CounterStatusRefType;

typedef TickType (*Os_HwCounterNowType)(void);
typedef void (*Os_HwCounterSetType)(TickType Value);
typedef void (*Os_HwCounterStateType)(Os_CounterStatusRefType State);
typedef void (*Os_HwCounterCancelType)(void);
typedef StatusType (*Os_CounterIncrAdvType)(void);
typedef void (*Os_CounterStartType)(Os_AnyType ctr, TickType requested, TickType relative, TickRefType match_value);

typedef struct Os_CounterDynType_s {
  union {
    struct s_swd {
      TickType count;
    } sw;
  } type_dependent;
} Os_CounterDynType;
typedef struct Os_CounterType_s {
  Os_CounterDynType * const dynamic;
  Os_CounterIncrAdvType advincr;
  AlarmBaseType base;
  const void *core;
  uint8 access;
  ApplicationType application;
} Os_CounterType;
typedef const Os_CounterType * CounterType;




enum Os_ScheduleTableStatusType {SCHEDULETABLE_STOPPED = 0U, SCHEDULETABLE_NEXT, SCHEDULETABLE_WAITING, SCHEDULETABLE_RUNNING, SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS};
typedef enum Os_ScheduleTableStatusType ScheduleTableStatusType;
typedef ScheduleTableStatusType * ScheduleTableStatusRefType;
typedef enum {OS_SYNC_NONE, OS_SYNC_IMPLICIT, OS_SYNC_EXPLICIT} Os_ScheduleTableSyncType;
typedef enum {OS_SYNC_ASYNC, OS_SYNC_ADVANCING, OS_SYNC_RETARDING, OS_SYNC_INSYNC} Os_ScheduleTableSyncStateType;

struct Os_ScheduleTableDynType_s;
typedef struct Os_ScheduleTableType_s {
  struct Os_ScheduleTableDynType_s * const dynamic;
  CounterType counter;
  TickType sync_precision;
  TickType maxallowedvalue;
  boolean repeat;
  uint32 config;
  uint8 initial;
  uint8 access;
  Os_ScheduleTableSyncType sync_type;
  ApplicationType application;
} Os_ScheduleTableType;
typedef const Os_ScheduleTableType * ScheduleTableType;
typedef ScheduleTableType * ScheduleTableRefType;
typedef struct Os_ScheduleTableDynType_s {
  TickType match;
  TickType drift;
  ScheduleTableType next;
  ScheduleTableStatusType state;
  uint32 config;
  TickType sync_count_tracker;
  Os_ScheduleTableSyncStateType sync_state;
} Os_ScheduleTableDynType;





typedef unsigned char OSServiceIdType;
# 687 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned int Os_BiggestType;
typedef unsigned int Os_BiggestCommonType;
# 798 ".\\output\\inc/..\\..\\os\\Os.h"
typedef StatusType Os_TraceStatusType;
typedef uint8 Os_TraceDataType;
# 905 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 906 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern Os_TraceStatusType Os_Cbk_TraceCommInitTarget(void) ;
extern void Os_Cbk_TraceCommDataReady(void) ;
extern void Os_Cbk_TraceCommTxStart(void) ;
extern void Os_Cbk_TraceCommTxByte(Os_TraceDataType val) ;
extern void Os_Cbk_TraceCommTxEnd(void) ;
extern boolean Os_Cbk_TraceCommTxReady(void) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 916 ".\\output\\inc/..\\..\\os\\Os.h" 2



typedef struct Os_ControlledCoreType_s {
  OsTrapInfoType TrapInfo;
  volatile Os_Lockable lock_taskaccess;
  volatile Os_psetType ReadyTasks ;
  volatile ISRType RunningISR;
  volatile TaskType RunningTask;
  volatile Os_tpmaskType RunningTPMask ;
  volatile Os_psetType TerminatingTasks;
  volatile Os_TerminatorType CurrentTerminator;
  Os_MeterInfoRefType CurrentMeteredObject;
  Os_MeterInfoType IdleMeter;
  uint8 AppAccess;
  volatile ApplicationType AppOverride;
  Os_StackSizeType GetStackValueAdjust;
  boolean InErrorHook;
  volatile TaskType ChainTaskRef;
  Os_StackSizeType GetStackUsageAdjust;
  boolean InProtectionHook;
  boolean CoreIsActive;
  boolean InShutdownHook;
} Os_ControlledCoreType;
# 951 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_AnyCoreType_s {
  volatile Os_imaskType DisableAllImask;
  volatile Os_imaskType SuspendAllImask;
  volatile Os_imaskType SuspendOSImask;
  volatile uint32 DisableAllCount;
  volatile uint32 SuspendAllCount;
  volatile uint32 SuspendOSCount;
  Os_JumpBufType RestartJumpBuf;
  boolean Restartable;
  StatusType LastProtectionFault;
} Os_AnyCoreType;
# 970 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_CoreConfiguration_s {
  Os_ControlledCoreType * const controlled;
  Os_AnyCoreType * const any;
  volatile Os_CoreStateType * const state;
  Os_VoidVoidFunctionType dispatch;
  ResourceType Os_Res_Scheduler;
  CoreIdType core_id;
} Os_CoreConfiguration;




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 983 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern void ErrorHook(StatusType Error) ;
extern void PreTaskHook(void) ;
extern void PostTaskHook(void) ;
extern ProtectionReturnType ProtectionHook(StatusType FatalError) ;
extern void StartupHook(void) ;
extern void ShutdownHook(StatusType Error) ;
extern void Os_Cbk_StackOverrunHook(Os_StackSizeType Overrun, Os_StackOverrunType Reason);
extern AccessType Os_Cbk_CheckMemoryAccess(ApplicationType Application, TaskType TaskID, ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size);
extern boolean Os_Cbk_Idle(void) ;
extern void Os_Cbk_InShutdown(void) ;
extern void Os_Cbk_CheckStackDepth(CoreIdType Core_id, Os_StackSizeType Depth, Os_StackSizeType CurrentPos);

 extern Os_StopwatchTickType Os_Cbk_GetStopwatch(void) ;

extern void Os_Cbk_TimeOverrunHook(Os_StopwatchTickType Overrun) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1002 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1007 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern Os_StackValueType Os_GetSP(void);
extern void Os_GetVersionInfo(Std_VersionInfoType *versioninfo) ;
extern Os_StopwatchTickType Os_GetExecutionTime(void) ;
extern Os_StopwatchTickType Os_GetTaskMaxExecutionTime(TaskType TaskID) ;
extern Os_StopwatchTickType Os_GetISRMaxExecutionTime(ISRType ISRID) ;
extern StatusType Os_ResetTaskMaxExecutionTime(TaskType TaskID) ;
extern StatusType Os_ResetISRMaxExecutionTime(ISRType ISRID) ;
extern Os_StopwatchTickType Os_GetElapsedTime(void) ;
extern Os_StopwatchTickType Os_GetTaskElapsedTime(TaskType TaskID) ;
extern Os_StopwatchTickType Os_GetISRElapsedTime(ISRType ISRID) ;
extern Os_StopwatchTickType Os_GetIdleElapsedTime(Os_IdleType IdleID) ;
extern StatusType Os_ResetTaskElapsedTime(TaskType TaskID) ;
extern StatusType Os_ResetISRElapsedTime(ISRType ISRID) ;
extern StatusType Os_ResetIdleElapsedTime(Os_IdleType IdleID) ;
extern Os_StackSizeType Os_GetStackUsage(void) ;
extern Os_StackSizeType Os_GetTaskMaxStackUsage(TaskType TaskID) ;
extern Os_StackSizeType Os_GetISRMaxStackUsage(ISRType ISRID) ;
extern StatusType Os_ResetTaskMaxStackUsage(TaskType TaskID) ;
extern StatusType Os_ResetISRMaxStackUsage(ISRType ISRID) ;
extern Os_StackValueType Os_GetStackValue(void) ;
extern Os_StackSizeType Os_GetStackSize(Os_StackValueType Base, Os_StackValueType Sample) ;
extern StatusType Os_ActivateTask(TaskType TaskID) ;
extern StatusType Os_GetTaskID(TaskRefType TaskID) ;
extern StatusType Os_GetTaskState(TaskType TaskID, TaskStateRefType State) ;
extern StatusType Os_Schedule(void) ;
extern StatusType Os_SetEvent(TaskType TaskID, EventMaskType Mask) ;
extern StatusType Os_ClearEvent(EventMaskType Mask) ;
extern StatusType Os_GetEvent(TaskType TaskID, EventMaskRefType Mask) ;
extern StatusType Os_WaitEvent(EventMaskType Mask) ;
extern StatusType Os_GetResource(ResourceType ResID) ;
extern StatusType Os_ReleaseResource(ResourceType ResID) ;
extern void Os_DisableAllInterrupts(void) ;
extern void Os_EnableAllInterrupts(void) ;
extern void Os_SuspendAllInterrupts(void) ;
extern void Os_ResumeAllInterrupts(void) ;
extern void Os_SuspendOSInterrupts(void) ;
extern void Os_ResumeOSInterrupts(void) ;
extern ISRType Os_GetISRID(void) ;
extern AppModeType Os_GetActiveApplicationMode(void) ;
extern ApplicationType Os_CheckObjectOwnership(ObjectTypeType ObjectType, Os_AnyType Object) ;
extern ObjectAccessType Os_CheckObjectAccess(ApplicationType ApplID, ObjectTypeType ObjectType, Os_AnyType Object) ;
extern ApplicationType Os_GetApplicationID(void) ;
extern ApplicationType Os_GetCurrentApplicationID(void) ;
extern StatusType Os_TerminateTask(void) ;
extern AccessType Os_CheckTaskMemoryAccess(TaskType TaskID, MemoryStartAddressType Address, MemorySizeType Size) ;
extern AccessType Os_CheckISRMemoryAccess(ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size) ;
extern StatusType Os_GetCounterValue(CounterType CounterID, TickRefType Value) ;
extern StatusType Os_GetElapsedCounterValue(CounterType CounterID, TickRefType Value, TickRefType ElapsedValue) ;
extern StatusType Os_IncrementCounter(CounterType CounterID) ;
extern StatusType Os_AdvanceCounter(CounterType CounterID) ;
extern StatusType Os_GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info) ;
extern StatusType Os_CancelAlarm(AlarmType AlarmID) ;
extern StatusType Os_GetAlarm(AlarmType AlarmID, TickRefType Tick) ;
extern StatusType Os_SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle) ;
extern StatusType Os_SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle) ;
extern StatusType Os_StopScheduleTable(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_StartScheduleTableRel(ScheduleTableType ScheduleTableID, TickType Offset) ;
extern StatusType Os_StartScheduleTableAbs(ScheduleTableType ScheduleTableID, TickType Start) ;
extern StatusType Os_StartScheduleTableSynchron(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_SyncScheduleTable(ScheduleTableType ScheduleTableID, TickType Value) ;
extern StatusType Os_SyncScheduleTableRel(ScheduleTableType ScheduleTableID, SignedTickType RelativeValue) ;
extern StatusType Os_SetScheduleTableAsync(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_GetScheduleTableStatus(ScheduleTableType ScheduleTableID, ScheduleTableStatusRefType ScheduleStatus) ;
extern StatusType Os_NextScheduleTable(ScheduleTableType ScheduleTableID_From, ScheduleTableType ScheduleTableID_To) ;
extern boolean Os_StartOS(AppModeType Mode) ;
extern void Os_ShutdownOS(StatusType Error) ;
extern void Os_ProtectionLog(StatusType os_status);
extern StatusType Os_ControlIdle(CoreIdType CoreID, IdleModeType IdleMode) ;
extern IdleModeType Os_CurrentIdleMode(void);
extern uint32 Os_GetCurrentTPL(void) ;
extern Os_imaskType Os_GetCurrentIMask(void) ;
extern StatusType Os_EnableInterruptSource(ISRType ISRID, boolean ClearPending) ;
extern StatusType Os_DisableInterruptSource(ISRType ISRID) ;
extern StatusType Os_ClearPendingInterrupt(ISRType ISRID) ;
extern uint32 Os_GetNumberOfActivatedCores(void) ;
extern void Os_ShutdownAllCores(StatusType Error) ;
extern void Os_StartCore(CoreIdType CoreID, Os_StatusRefType Status) ;
extern StatusType Os_GetSpinlock(SpinlockIdType SpinlockId) ;
extern StatusType Os_TryToGetSpinlock(SpinlockIdType SpinlockId, TryToGetSpinlockType* Success) ;
extern StatusType Os_ReleaseSpinlock(SpinlockIdType SpinlockId) ;
extern void Os_CrossCoreCheck(Os_ControlledCoreType *os_current_controlled_core, const Os_CoreConfiguration *os_current_core_const);
extern StatusType Os_Restart(void) ;
extern StatusType Os_ChainTask(TaskType TaskID) ;
extern StatusType Os_TerminateApplication(ApplicationType Application, RestartType RestartOption) ;
extern StatusType Os_GetApplicationState(ApplicationType Application, ApplicationStateRefType Value) ;
extern StatusType Os_AllowAccess(void) ;
extern StatusType Os_CallTrustedFunction(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) ;
extern StatusType Os_ReadPeripheral8(AreaIdType Area, Os_uint8ConstRefType Address, Os_uint8RefType ReadValue) ;
extern StatusType Os_WritePeripheral8(AreaIdType Area, Os_uint8RefType Address, uint8 WriteValue) ;
extern StatusType Os_ModifyPeripheral8(AreaIdType Area, Os_uint8RefType Address, uint8 Clearmask, uint8 Setmask) ;
extern StatusType Os_ReadPeripheral16(AreaIdType Area, Os_uint16ConstRefType Address, Os_uint16RefType ReadValue) ;
extern StatusType Os_WritePeripheral16(AreaIdType Area, Os_uint16RefType Address, uint16 WriteValue) ;
extern StatusType Os_ModifyPeripheral16(AreaIdType Area, Os_uint16RefType Address, uint16 Clearmask, uint16 Setmask) ;
extern StatusType Os_ReadPeripheral32(AreaIdType Area, Os_uint32ConstRefType Address, Os_uint32RefType ReadValue) ;
extern StatusType Os_WritePeripheral32(AreaIdType Area, Os_uint32RefType Address, uint32 WriteValue) ;
extern StatusType Os_ModifyPeripheral32(AreaIdType Area, Os_uint32RefType Address, uint32 Clearmask, uint32 Setmask) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1107 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 347 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 372 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.DEFAULT_CONST_UNSPECIFIED" a
# 2 ".\\output\\inc/MemMap.h" 2
# 348 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1112 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern const CoreIdType Os_TotalNumberOfCores;
extern const Os_CoreConfiguration Os_const_coreconfiguration[];
extern const Os_ApplicationConfigurationType Os_const_applications[];
extern const Os_ISRType Os_const_isrs[];
extern const TaskType Os_const_tasks[];
extern const Os_ResourceType Os_const_resources[];
extern const Os_CounterType Os_const_counters[];
extern const Os_ScheduleTableType Os_const_scheduletables[];
extern const Os_TaskType Os_const_tasks0[];
extern const Os_TaskType Os_const_tasks1[];
extern const Os_TaskType Os_const_tasks2[];
extern const Os_TaskType Os_const_tasks3[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 351 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 382 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 352 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1128 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 104 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 427 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".bss.DEFAULT_VAR_CLEARED_UNSPECIFIED"
# 2 ".\\output\\inc/MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1133 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern volatile AppModeType Os_CurrentAppMode;
extern Os_AnyCoreType Os_AnyCoreInfo[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 109 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 435 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1139 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 227 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".bss.DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED"
# 2 ".\\output\\inc/MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1144 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern StatusType Os_ShutdownAllCores_Indicator;
extern Os_StackValueType Os_StackBase[];
extern volatile Os_Lockable Os_lock_alarmaccess;
extern ApplicationStateType Os_dyn_appstate[];
extern Os_TaskDynType Os_dyn_tasks[];
extern Os_ISRDynType Os_dyn_isrs[];
extern Os_ControlledCoreType Os_ControlledCoreInfo[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 66 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 236 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1155 ".\\output\\inc/..\\..\\os\\Os.h" 2



# 1 ".\\output\\inc/Os_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 1
# 171 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"
extern void Os_CrossCoreISR0(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR1(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR2(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR3(void) __attribute__((interrupt_handler));

extern void ADC8SR0_ISR(void) __attribute__((interrupt_handler));
extern void GTMTIM2SR4_ISR(void) __attribute__((interrupt_handler));
extern void GTMTIM3SR6_ISR(void) __attribute__((interrupt_handler));
extern void ADC0SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC2SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC3SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC1SR0_ISR(void) __attribute__((interrupt_handler));
extern void CCU61SR2_ISR(void) __attribute__((interrupt_handler));
extern void CCU60SR2_ISR(void) __attribute__((interrupt_handler));
extern void DefaultInterruptHandler(void) __attribute__((interrupt_handler));
# 249 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 250 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2

extern void ErrorHook_OsApplication_Core0(StatusType Error) ;
extern void ErrorHook_OsApplication_Core1(StatusType Error) ;
extern void ErrorHook_OsApplication_Core2(StatusType Error) ;
extern void ErrorHook_OsApplication_Core3(StatusType Error) ;
extern void Os_Cbk_Terminated_CAN1SR11_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR10_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR9_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR8_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR11_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR10_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR9_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR8_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR0_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR7_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR6_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR5_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR4_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR3_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR2_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR1_ISR(void) ;
extern void Os_Cbk_Terminated_ADC4SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC11SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC10SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC9SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC8SR1_ISR(void) ;
extern void Os_Cbk_Terminated_ADC3SR1_ISR(void) ;
extern void Os_Cbk_Terminated_STM0SR1_ISR(void) ;
extern void Os_Cbk_Terminated_Millisecond(void) ;
extern void Os_Cbk_Disable_CAN1SR11_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR10_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR9_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR8_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR11_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR10_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR9_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR8_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR0_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR7_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR6_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR5_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR4_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR3_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR2_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR1_ISR(void) ;
extern void Os_Cbk_Disable_ADC4SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC11SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC10SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC9SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC8SR1_ISR(void) ;
extern void Os_Cbk_Disable_ADC3SR1_ISR(void) ;
extern void Os_Cbk_Disable_STM0SR1_ISR(void) ;
extern void Os_Cbk_Disable_Millisecond(void) ;
extern void Os_Cbk_Disable_ADC8SR0_ISR(void) ;
extern void Os_Cbk_Disable_GTMTIM2SR4_ISR(void) ;
extern void Os_Cbk_Disable_GTMTIM3SR6_ISR(void) ;
extern void Os_Cbk_Disable_ADC0SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC2SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC3SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC1SR0_ISR(void) ;
extern void Os_Cbk_Disable_CCU61SR2_ISR(void) ;
extern void Os_Cbk_Disable_CCU60SR2_ISR(void) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 315 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 320 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2

extern StatusType Os_IncrementCounter_Rte_TickCounter(void);
extern void Os_Entry_Core0_OsTask_Background_1ms(void);
extern void Os_Entry_Core3_OsTask_ASW_5ms(void);
extern void Os_Entry_Core3_OsTask_ASW_1ms(void);
extern void Os_Entry_Core3_OsTask_BSW_10ms(void);
extern void Os_Entry_Core2_OsTask_ASW_100ms(void);
extern void Os_Entry_Core2_OsTask_ASW_10ms(void);
extern void Os_Entry_Core2_OsTask_ASW_5ms(void);
extern void Os_Entry_Core2_OsTask_ASW_1ms(void);
extern void Os_Entry_Core2_OsTask_BSW_10ms(void);
extern void Os_Entry_Core1_OsTask_ASW_100ms(void);
extern void Os_Entry_Core0_OsTask_ASW_100ms(void);
extern void Os_Entry_Core1_OsTask_ASW_10ms(void);
extern void Os_Entry_Core0_BSW_OsTask_SwcRequest(void);
extern void Os_Entry_Core1_OsTask_BSW_10ms(void);
extern void Os_Entry_Core1_OsTask_ASW_1ms(void);
extern void Os_Entry_Core0_OsTask_BSW_100ms(void);
extern void Os_Entry_Core0_OsTask_BSW_50ms(void);
extern void Os_Entry_Core0_OsTask_ASW_10ms(void);
extern void Os_Entry_Core0_OsTask_BSW_10ms(void);
extern void Os_Entry_Core0_OsTask_ASW_1ms(void);
extern void Os_Entry_Core0_OsTask_BSW_1ms(void);
extern void Os_Entry_Core0_ECU_StartupTask(void);
extern void Os_Entry_CAN1SR11_ISR(void);
extern void Os_Entry_CAN1SR10_ISR(void);
extern void Os_Entry_CAN1SR9_ISR(void);
extern void Os_Entry_CAN1SR8_ISR(void);
extern void Os_Entry_CAN0SR11_ISR(void);
extern void Os_Entry_CAN0SR10_ISR(void);
extern void Os_Entry_CAN0SR9_ISR(void);
extern void Os_Entry_CAN0SR8_ISR(void);
extern void Os_Entry_CAN0SR0_ISR(void);
extern void Os_Entry_CAN0SR7_ISR(void);
extern void Os_Entry_CAN0SR6_ISR(void);
extern void Os_Entry_CAN0SR5_ISR(void);
extern void Os_Entry_CAN0SR4_ISR(void);
extern void Os_Entry_CAN0SR3_ISR(void);
extern void Os_Entry_CAN0SR2_ISR(void);
extern void Os_Entry_CAN0SR1_ISR(void);
extern void Os_Entry_ADC4SR0_ISR(void);
extern void Os_Entry_ADC11SR0_ISR(void);
extern void Os_Entry_ADC10SR0_ISR(void);
extern void Os_Entry_ADC9SR0_ISR(void);
extern void Os_Entry_ADC8SR1_ISR(void);
extern void Os_Entry_ADC3SR1_ISR(void);
extern void Os_Entry_STM0SR1_ISR(void);
extern void Os_Entry_Millisecond(void);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 371 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2
# 403 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"































































































































# 543 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"




















































































































# 668 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"



























# 2 ".\\output\\inc/Os_Cfg.h" 2
# 1159 ".\\output\\inc/..\\..\\os\\Os.h" 2
# 2 ".\\output\\inc/Os.h" 2
# 39 "Integration\\ecu\\SchM.c" 2
# 86 "Integration\\ecu\\SchM.c"
void SchM_Enter_Adc_StartGroup(void);
void SchM_Enter_Adc_StopGroup(void);
void SchM_Enter_Adc_ReadGroup(void);
void SchM_Enter_Adc_EnableHwTrig(void);
void SchM_Enter_Adc_DisableHwTrig(void);
void SchM_Enter_Adc_GetGrpStatus(void);
void SchM_Enter_Adc_GetStreamLastPtr(void);
void SchM_Enter_Adc_ScheduleStart(void);
void SchM_Enter_Adc_ScheduleStop(void);
void SchM_Enter_Adc_ScheduleNext(void);
void SchM_Enter_Adc_PushQueue(void);
void SchM_Enter_Adc_PopQueue(void);
void SchM_Exit_Adc_StartGroup(void);
void SchM_Exit_Adc_StopGroup(void);
void SchM_Exit_Adc_ReadGroup(void);
void SchM_Exit_Adc_EnableHwTrig(void);
void SchM_Exit_Adc_DisableHwTrig(void);
void SchM_Exit_Adc_GetGrpStatus(void);
void SchM_Exit_Adc_GetStreamLastPtr(void);
void SchM_Exit_Adc_ScheduleStart(void);
void SchM_Exit_Adc_ScheduleStop(void);
void SchM_Exit_Adc_ScheduleNext(void);
void SchM_Exit_Adc_PushQueue(void);
void SchM_Exit_Adc_PopQueue(void);


void SchM_Enter_Icu_17_GtmCcu6_EnableWakeup(void);
void SchM_Exit_Icu_17_GtmCcu6_EnableWakeup(void);
void SchM_Enter_Icu_17_GtmCcu6_EnableNotification(void);
void SchM_Exit_Icu_17_GtmCcu6_EnableNotification(void);
void SchM_Enter_Icu_17_GtmCcu6_ResetEdgeCount(void);
void SchM_Exit_Icu_17_GtmCcu6_ResetEdgeCount(void);
void SchM_Enter_Icu_17_GtmCcu6_Ccu6IenUpdate(void);
void SchM_Exit_Icu_17_GtmCcu6_Ccu6IenUpdate(void);
void SchM_Enter_Icu_17_GtmCcu6_CcuInterruptHandle(void);
void SchM_Exit_Icu_17_GtmCcu6_CcuInterruptHandle(void);
void SchM_Enter_Icu_17_GtmCcu6_CcuVariableupdate(void);
void SchM_Exit_Icu_17_GtmCcu6_CcuVariableupdate(void);


void SchM_Enter_Can_17_McmCan_CanDisInt(void);
void SchM_Exit_Can_17_McmCan_CanDisInt(void);
void SchM_Enter_Can_17_McmCan_CanEnInt(void);
void SchM_Exit_Can_17_McmCan_CanEnInt(void);



void SchM_Enter_Fr_17_Eray_ControllerInit(void);
void SchM_Exit_Fr_17_Eray_ControllerInit(void);
void SchM_Enter_Fr_17_Eray_SetWakeupChannel(void);
void SchM_Exit_Fr_17_Eray_SetWakeupChannel(void);


void SchM_Enter_Spi_WriteIB(void);
void SchM_Exit_Spi_WriteIB(void);
void SchM_Enter_Spi_AsyncTransmit(void);
void SchM_Exit_Spi_AsyncTransmit(void);
void SchM_Enter_Spi_GetSequenceResult(void);
void SchM_Exit_Spi_GetSequenceResult(void);
void SchM_Enter_Spi_Cancel(void);
void SchM_Exit_Spi_Cancel(void);
void SchM_Enter_Spi_Init(void);
void SchM_Exit_Spi_Init(void);
void SchM_Enter_Spi_DeInit(void);
void SchM_Exit_Spi_DeInit(void);
void SchM_Enter_Spi_SyncTransmit(void);
void SchM_Exit_Spi_SyncTransmit(void);


void SchM_Enter_Wdg_17_Scu_Trigger(void);
void SchM_Enter_Wdg_17_Scu_SafetyInit(void);
void SchM_Enter_Wdg_17_Scu_SafetyTrigger(void);
void SchM_Enter_Wdg_17_Scu_SafetyOffMode(void);
void SchM_Exit_Wdg_17_Scu_Trigger(void);
void SchM_Exit_Wdg_17_Scu_SafetyInit(void);
void SchM_Exit_Wdg_17_Scu_SafetyTrigger(void);
void SchM_Exit_Wdg_17_Scu_SafetyOffMode(void);


void SchM_Enter_Fls_17_Dmu_Init(void);
void SchM_Exit_Fls_17_Dmu_Init(void);
void SchM_Enter_Fls_17_Dmu_Erase(void);
void SchM_Exit_Fls_17_Dmu_Erase(void);
void SchM_Enter_Fls_17_Dmu_Write(void);
void SchM_Exit_Fls_17_Dmu_Write(void);
void SchM_Enter_Fls_17_Dmu_Main(void);
void SchM_Exit_Fls_17_Dmu_Main(void);
void SchM_Enter_Fls_17_Dmu_ResumeErase(void);
void SchM_Exit_Fls_17_Dmu_ResumeErase(void);


void SchM_Enter_FlsLoader_Erase(void);
void SchM_Enter_FlsLoader_Write(void);
void SchM_Enter_FlsLoader_lLock(void);
void SchM_Exit_FlsLoader_lLock(void);
void SchM_Exit_FlsLoader_Write(void);
void SchM_Exit_FlsLoader_Erase(void);


void SchM_Enter_Eth_17_EthMac_Transmit(void);
void SchM_Exit_Eth_17_EthMac_Transmit(void);
void SchM_Enter_Eth_17_EthMac_ProvideTxBuffer(void);
void SchM_Exit_Eth_17_EthMac_ProvideTxBuffer(void);
void SchM_Enter_Eth_17_EthMac_SetControllerMode(void);
void SchM_Exit_Eth_17_EthMac_SetControllerMode(void);
void SchM_Enter_Eth_17_EthMac_TxRxIrqHandler(void);
void SchM_Exit_Eth_17_EthMac_TxRxIrqHandler(void);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 197 "Integration\\ecu\\SchM.c" 2
void SchM_Enter_Adc_StartGroup(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_StopGroup(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_ReadGroup(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_EnableHwTrig(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_DisableHwTrig(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_GetGrpStatus(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_GetStreamLastPtr(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_ScheduleStart(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_ScheduleStop(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_ScheduleNext(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_PushQueue(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Adc_PopQueue(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Adc_StartGroup(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_StopGroup(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_ReadGroup(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_EnableHwTrig(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_DisableHwTrig(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_GetGrpStatus(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_GetStreamLastPtr(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_ScheduleStart(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_ScheduleStop(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_ScheduleNext(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_PushQueue(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_Adc_PopQueue(void)
{
  Os_ResumeAllInterrupts();
}


void SchM_Enter_Icu_17_GtmCcu6_EnableWakeup(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Icu_17_GtmCcu6_EnableWakeup(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Icu_17_GtmCcu6_EnableNotification(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Icu_17_GtmCcu6_EnableNotification(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Icu_17_GtmCcu6_ResetEdgeCount(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Icu_17_GtmCcu6_ResetEdgeCount(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Icu_17_GtmCcu6_Ccu6IenUpdate(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Icu_17_GtmCcu6_Ccu6IenUpdate(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Icu_17_GtmCcu6_CcuInterruptHandle(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Icu_17_GtmCcu6_CcuInterruptHandle(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Icu_17_GtmCcu6_CcuVariableupdate(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Icu_17_GtmCcu6_CcuVariableupdate(void)
{
  Os_ResumeAllInterrupts();
}



void SchM_Enter_Can_17_McmCan_CanDisInt(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Can_17_McmCan_CanDisInt(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Can_17_McmCan_CanEnInt(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Can_17_McmCan_CanEnInt(void)
{
  Os_ResumeAllInterrupts();
}




void SchM_Enter_Fr_17_Eray_ControllerInit(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fr_17_Eray_ControllerInit(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Fr_17_Eray_SetWakeupChannel(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fr_17_Eray_SetWakeupChannel(void)
{
  Os_ResumeAllInterrupts();
}



void SchM_Enter_Spi_WriteIB(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_WriteIB(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Spi_AsyncTransmit(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_AsyncTransmit(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Spi_GetSequenceResult(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_GetSequenceResult(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Enter_Spi_Cancel(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_Cancel(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Enter_Spi_Init(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_Init(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Enter_Spi_DeInit(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_DeInit(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Enter_Spi_SyncTransmit(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Spi_SyncTransmit(void)
{
  Os_ResumeAllInterrupts();
}






void SchM_Enter_Wdg_17_Scu_Trigger(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_Wdg_17_Scu_SafetyInit(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Enter_Wdg_17_Scu_SafetyTrigger(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Enter_Wdg_17_Scu_SafetyOffMode(void)
{
  Os_SuspendAllInterrupts();
}
void SchM_Exit_Wdg_17_Scu_Trigger(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Exit_Wdg_17_Scu_SafetyInit(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Exit_Wdg_17_Scu_SafetyTrigger(void)
{
  Os_ResumeAllInterrupts();
}
void SchM_Exit_Wdg_17_Scu_SafetyOffMode(void)
{
  Os_ResumeAllInterrupts();
}




void SchM_Enter_Fls_17_Dmu_Init(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fls_17_Dmu_Init(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Fls_17_Dmu_Erase(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fls_17_Dmu_Erase(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Fls_17_Dmu_Write(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fls_17_Dmu_Write(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Fls_17_Dmu_Main(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fls_17_Dmu_Main(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Fls_17_Dmu_ResumeErase(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Fls_17_Dmu_ResumeErase(void)
{
  Os_ResumeAllInterrupts();
}




void SchM_Enter_FlsLoader_Erase(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_FlsLoader_Write(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Enter_FlsLoader_lLock(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_FlsLoader_lLock(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_FlsLoader_Write(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Exit_FlsLoader_Erase(void)
{
  Os_ResumeAllInterrupts();
}




void SchM_Enter_Eth_17_EthMac_Transmit(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Eth_17_EthMac_Transmit(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Eth_17_EthMac_ProvideTxBuffer(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Eth_17_EthMac_ProvideTxBuffer(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Eth_17_EthMac_SetControllerMode(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Eth_17_EthMac_SetControllerMode(void)
{
  Os_ResumeAllInterrupts();
}

void SchM_Enter_Eth_17_EthMac_TxRxIrqHandler(void)
{
  Os_SuspendAllInterrupts();
}

void SchM_Exit_Eth_17_EthMac_TxRxIrqHandler(void)
{
  Os_ResumeAllInterrupts();
}

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 653 "Integration\\ecu\\SchM.c" 2
