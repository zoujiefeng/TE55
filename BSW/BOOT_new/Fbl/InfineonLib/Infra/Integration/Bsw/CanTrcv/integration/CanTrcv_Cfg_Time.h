#ifndef CANTRCV_TIME_H_
# define CANTRCV_TIME_H_

#include "ComStack_Types.h"
// if os-timers are used, include os.h. Otherwise it is not used
/* BSW-17387 */
#include "os.h"

// Typedef of time-variable of type CanTrcv_Cfg_Tick_to inside of the CanTrcv component.
// This type is used as return value of function CANTRCV_GETTIME(p) and is used to compare and store time.
// Currently only uint32 is tested. Timings of 1us to 1000us are needed in component
// Usage of uint32 is recommended as the time of a Trcv-statechange is stored internally. Before new statechange is
// called a minimum state-change time is waited. At 16-Bit time a wrap around could lead to unneccessary wait times
// possible interrupts should also be considered
//typedef TickType  CanTrcv_Cfg_Tick_to;
typedef uint32  CanTrcv_Cfg_Tick_to;


// Value to calculate from tick time to micro seconds to adjusted timer-ticks
// To reduce rounding jitter a smaller hardware ticktime than 1us can be adjusted in hardware-timer-ticks and this
// factor can be used to have micro seconds again.   (E.g. a HW-timer of 100ns needs a CANTRCV_CFG_TIME_FACTOR = 10)
#define CANTRCV_CFG_TIME_FACTOR 40u

// Additonal Timeoutvalue. It is a loop-counter how often the result of CANTRCV_GETTIME can be same until the loop is left and a DET is called.
// This define is used in function CanTrcv_WaitUs.
// The intention of this value is to have a DET call and an exit of the loop inside of CanTrcv_WaitUs if timer does not work (e.g. if not configured correctly at integration time)
// This value is not used to measure a time. No exact value can be suggested.
// The given value (1000) in this template is based on previous experiences in projects.
// The Timeoutvalue depends on the processor speed, the execution time of CanTrcv_GetTime, compiler options, ....
// The value can be evaluated by calling the function CanTrcv_WaitUs with a huge value of TimePeriod_o. If so, timeout
// will expire and the time until the return of function can be measured.
#define CANTRCV_TIMEMEASUREMENT_TIMEOUT 10uL

// The integrator should add a function to get time value (from a free running counter).
// !!! The counter shall be a freerunning counter which shall not be stoppt at any time !!!
// Some Timings of trcv needs a resolution of 1micro seconds.
// !!! Please be sure, that at this timer no timing for FlexRay Snychron OS is derived which manipulates its timer !!!
// Resolution see hints to CanTrcv_Cfg_Tick_to and  CANTRCV_CFG_TIME_FACTOR
// The value is used to store some timeout times and some long-value times as state-change times
// The returned value is used in function CanTrcv_TimeElapsedUs to evaluate micro second timer values
// Possible other implementations could be:
/*
#define CANTRCV_GETTIME(p)  \
do{ \
    CanTrcv_Cfg_Tick_to retVal; \
    retVal = MCU_RB_TIM0TICKS_TO_US(Mcu_Rb_GetSysTimePart(TIM0)); \
    *(p) = retVal; \
}while(0)
*/
#define CANTRCV_GETTIME(p) do{((void)GetCounterValue((CounterType)&(Os_const_counters[1]),(TickRefType)(p)));}while(0)
#endif //CANTRCV_TIME_H_
