
#include "Clk_Cfg.h"

/* Clock default configuration based on XTAL 20MHz! Note, different XTAL needs modification! */
const Clk_PllStepConfigType Clk_defaultSysPllConfigSteps[CLK_NUMBEROFK2STEPS] =
{
    {
        /* Step 0 Config: 100MHz */
        (CLK_SYSPLLCON1_K2DIV_K6), /* K2 divider value for this step. uint8 k2Step; (6-1) K2-Divider 6 */
        CLK_CFG_PLL_WAITTIME,      /* Wait time for for this step. float32 waitTime;*/
    },
    {
        /* Step 1 Config: 150MHz */
        (CLK_SYSPLLCON1_K2DIV_K4), /* K2 divider value for this step. uint8 k2Step; (4-1) K2-Divider 4 */
        CLK_CFG_PLL_WAITTIME,      /* Wait time for for this step. float32 waitTime;*/
    },
    {
        /* Step 2 Config: 200MHz */
        (CLK_SYSPLLCON1_K2DIV_K3), /* K2 divider value for this step. uint8 k2Step; (3-1) K2-Divider 3 */
        CLK_CFG_PLL_WAITTIME,      /* Wait time for for this step. float32 waitTime;*/
    },
    {
        /* Step 3 Config: 300MHz = max. speed */
        (CLK_SYSPLLCON1_K2DIV_K2), /* K2 divider value for this step. uint8 k2Step; (2-1) K2-Divider 2 */
        CLK_CFG_PLL_WAITTIME,      /* Wait time for for this step. float32 waitTime;*/
    }
};

