
#include "tc1v1_6_2.lsl"
#define GTM_BASE_ADDR           0xf0100000
#define GTM_MCS_COPYTABLE_SPACE vtc:linear
#define GTM_CPU_ENDIANNESS little

#ifdef    __REDEFINE_ON_CHIP_ITEMS
#define GTM_REDEFINE_ON_CHIP_ITEMS
#endif  // __REDEFINE_ON_CHIP_ITEMS




#define CSA0_SIZE                       4k
#define ISTACK0_SIZE                    4k
#define USTACK0_SIZE                    8k

#define CSA0_OFFSET                     (DSPR0_SIZE -  CSA0_SIZE)
#define ISTACK0_OFFSET                  (CSA0_OFFSET - ISTACK0_SIZE)
#define USTACK0_OFFSET                  (ISTACK0_OFFSET - USTACK0_SIZE)

#define INTVEC0_START                   0x80000200
#define TRAPVEC0_START                  0x80000600
#define INTTAB0                         (INTVEC0_START)
#define TRAPTAB0                        (TRAPVEC0_START)

#define BMHD_OFFSET                     0x00000000         /* Boot Mode Index Header*/
#define BMHD_SIZE                       32     

#define CPU0_CONST_OFFSET               0x000000A00
#define CPU0_CONST_SIZE                 20k

#define CPU0_CODE_OFFSET                0x000005A00
#define CPU0_CODE_SIZE                  132K

#define BSW_FIX_CONST_OFFSET            0x00026A00
#define BSW_FIX_CONST_SIZE              4k

#define CPU0_FLS_AC_WRITE_OFFSET        0x000027B00
#define CPU0_FLS_AC_WRITE_SIZE          0x300
#define CPU0_FLS_AC_ERASE_OFFSET        0x000027E00
#define CPU0_FLS_AC_ERASE_SIZE          0x200


#define CPU0_PRAM_START                 0x7001A000          /* PSRAM */
#define CPU0_PRAM_SIZE                  24k
#define FLASH_SBL_OFFSET                0x00000000          /* SBL start address */
#define FLASH_SBL_SIZE                  16k

#define CPU0_PRAM_APP_BT_OFFSET         0x00000C00
#define CPU0_PRAM_APP_BT_SIZE           1K

#define CPU0_DRAM_OFFSET                0x00000000
#define CPU0_DRAM_SIZE                  100k

#define FLASH_CALIB_START               0x80058000          /* Calibration start address @S26 */
#define FLASH_CALIB_SIZE                32K
#define FLASH_APP_START                 0x80060000          /* Application start address @S12 - @S25 */
#define FLASH_APP_SIZE                  2688K

#define RESET                           0x80000000

#define DSPR0_SIZE 100k
/***********************************/
/* Because ECLIPSE is generating Ax_START instead of Ax_START_ADDRESS */
/***********************************/
#ifndef A0_START_ADDRESS
#ifdef  A0_START
#define A0_START_ADDRESS A0_START
#endif
#endif
#ifndef A1_START_ADDRESS
#ifdef  A1_START
#define A1_START_ADDRESS A1_START
#endif
#endif
#ifndef A8_START_ADDRESS
#ifdef  A8_START
#define A8_START_ADDRESS A8_START
#endif
#endif
#ifndef A9_START_ADDRESS
#ifdef  A9_START
#define A9_START_ADDRESS A9_START
#endif
#endif
/***********************************/

#define DF_EEPROM_SIZE  384k
#define DF_UCB_SIZE     16k
#define DF_EEPROM_ADDR  0xaf000000
#define DF_UCB_ADDR     0xaf100000

processor mpe
{
    derivative = tc33x;
}

derivative tc33x
{
    core tc0
    {
        architecture = TC1V1.6.2;
        space_id_offset = 100;            // add 100 to all space IDs in the architecture definition
        copytable_space = vtc:linear;     // use the copy table in the virtual core for 'bss' and initialized data sections
    }
    
    core vtc
    {
        architecture = TC1V1.6.2;
        import tc0;                     // add all address spaces of core tc0 to core vtc for linking and locating
    }


    bus sri
    {
        mau = 8;
        width = 32;
        
        // map shared addresses one-to-one to real cores and virtual cores
        map (dest=bus:tc0:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
        map (dest=bus:vtc:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
    }

#ifndef    __REDEFINE_ON_CHIP_ITEMS
#ifndef __CPP_RUN_TIME_ENTRY_FLAG 
#define __CPP_RUN_TIME_ENTRY_FLAG mem:dspr0
#endif 

    section_layout :vtc:linear
    {
            group (ordered, run_addr=__CPP_RUN_TIME_ENTRY_FLAG)
            {
                    // C++ run-time variable "main_called" that ensures the global object constructors to execute exactly once.
                    // main_called is initialized so its name gets a data prefix: .sect '.data.__section_main_called' 
                    select ".data.__section_main_called"; 
                    // C++ run-time variables to make destructors concurrent
                    select ".data.__section_dtor_finalizer"; 
            }
    }
#endif  // __REDEFINE_ON_CHIP_ITEMS

#ifndef    __REDEFINE_ON_CHIP_ITEMS

    memory dspr0 // Data Scratch Pad Ram
    {
            mau = 8;
            size = 112k;
            type = ram;
            map (dest=bus:tc0:fpi_bus, dest_offset=0xd0000000, size=112k, priority=1, exec_priority=0);
            map (dest=bus:sri, dest_offset=0x70000000, size=100k);
    }

    memory pspr0 // Program Scratch Pad Ram
    {
            mau = 8;
            size = 64k;
            type = ram;
            map (dest=bus:tc0:fpi_bus, dest_offset=0xc0000000, size=64k, exec_priority=1);
            map (dest=bus:sri, dest_offset=0x70100000, size=64k);
    }

    memory pflash0
    {
            mau = 8;
            size = 160K;
            type = rom;
            fill = 0xFF;
            map     cached (dest=bus:sri, dest_offset=0x80000000,           size=160K);
            map not_cached (dest=bus:sri, dest_offset=0xa0000000, reserved, size=160K);
    }

    memory brom
    {
            mau = 8;
            size = 32k;
            type = reserved rom;
            map     cached (dest=bus:sri, dest_offset=0x8fff8000,           size=32k);
            map not_cached (dest=bus:sri, dest_offset=0xafff8000, reserved, size=32k);
    }

    memory dflash0
    {
            mau = 8;
            size = DF_EEPROM_SIZE + DF_UCB_SIZE;
            type = reserved nvram;
            map (dest=bus:sri, src_offset=0, dest_offset=DF_EEPROM_ADDR, size=DF_EEPROM_SIZE);
            map (dest=bus:sri, src_offset=DF_EEPROM_SIZE, dest_offset=DF_UCB_ADDR, size=DF_UCB_SIZE);
    }

    memory lmuram
    {
            mau = 8;
            size = 8k;
            type = ram;
            priority = 2;
            map     cached (dest=bus:sri, dest_offset=0x90000000,           size=8k);
            map not_cached (dest=bus:sri, dest_offset=0xb0000000, reserved, size=8k);
    }
    
    /*UCB*/
    memory ucb
    {
        mau = 8;
        size = 24k;
        type = rom;
        map (dest=bus:sri, dest_offset=0xaf400000, reserved, size=24k);
    }

#endif  // __REDEFINE_ON_CHIP_ITEMS
    section_setup :vtc:linear
    {
        start_address
        (
                run_addr = (RESET),
                symbol = "_START"
        );
    }

    section_setup :vtc:linear
    {
        stack "ustack_tc0" (min_size = 1k, fixed, align = 8);
        stack "istack_tc0" (min_size = 1k, fixed, align = 8);
    }

    /*Section setup for the copy table*/
    section_setup :vtc:linear
    {
        copytable
        (
            align = 4,
            dest = linear,
            table
            {
                symbol = "_lc_ub_table_tc0";
                space = :tc0:linear, :tc0:abs24, :tc0:abs18, :tc0:csa;
            }
        );
    }
            
    section_layout :vtc:linear
    {
    /*Fixed memory Allocations for stack memory and CSA*/
        group (ordered)
        {
            group ustack0(align = 8, run_addr = mem:dspr0[USTACK0_OFFSET])
            {
                stack "ustack_tc0" (size = USTACK0_SIZE);
            }
            "__USTACK0":= sizeof(group:ustack0) > 0  ? "_lc_ue_ustack_tc0" : 0;
            "__USTACK0_END":="_lc_ub_ustack_tc0";
                
            group istack0(align = 8, run_addr = mem:dspr0[ISTACK0_OFFSET])
            {
                stack "istack_tc0" (size = ISTACK0_SIZE);
            }
            "__ISTACK0":= sizeof(group:istack0) > 0  ? "_lc_ue_istack_tc0" : 0;
            "__ISTACK0_END":="_lc_ub_istack_tc0";
            
            group (align = 64, attributes=rw, run_addr=mem:dspr0[CSA0_OFFSET]) 
                reserved "csa_tc0" (size = CSA0_SIZE);
            "__CSA0":=    "_lc_ue_csa_tc0";
            "__CSA0_END":=  "_lc_ub_csa_tc0";
        }
               /*Fixed memory Allocations for BMHD*/
        group (ordered)
        {
            group  bmh_0_orig (run_addr=mem:ucb[0x0000])
            {
                select ".rodata.bmhd_0_orig";
            }
            group  bmh_1_orig (run_addr=mem:ucb[0x0200])
            {
                select ".rodata.bmhd_1_orig";
            }
            group  bmh_2_orig (run_addr=mem:ucb[0x0400])
            {
                select ".rodata.bmhd_2_orig";
            }
            group  bmh_3_orig (run_addr=mem:ucb[0x0600])
            {
                select ".rodata.bmhd_3_orig";
            }
            group  bmh_blank (run_addr=mem:ucb[0x0800])
            {
            }
            group  bmh_0_copy (run_addr=mem:ucb[0x1000])
            {
                select ".rodata.bmhd_0_copy";
            }
            group  bmh_1_copy (run_addr=mem:ucb[0x1200])
            {
                select ".rodata.bmhd_1_copy";
            }
            group  bmh_2_copy (run_addr=mem:ucb[0x1400])
            {
                select ".rodata.bmhd_2_copy";
            }
            group  bmh_3_copy (run_addr=mem:ucb[0x1600])
            {
                select ".rodata.bmhd_3_copy";
            }
        }    
    }

    section_layout :vtc:linear
    {
        /*Fixed memory Allocations for _START*/
        group startup (ordered,run_addr=RESET)
        {
            select ".text.libc.reset";
        }
        /*Fixed memory Allocations for Trap Vector Table*/
        group(ordered, align = 8, run_addr=TRAPVEC0_START)
        {
            section "trapvec_tc0" (size = 0x400, attributes=rx, fill = 0x00)
            {
                select ".text.CPU0_TRAP_HANDLER_CODE_ROM";
            }
        }

        "_lc_u_trap_tab_tc0" = (TRAPTAB0);
        "_lc_u_trap_tab_tc1" = 0;
        "_lc_u_trap_tab_tc2" = 0;
        "_lc_u_trap_tab" = "_lc_u_trap_tab_tc0"; 
        "__TRAPTAB_CPU0" := TRAPTAB0;

        /*Fixed memory Allocations for Interrupt Vector Table*/
        group (ordered)
        {
            group int_tab_tc0 (ordered)
            {
                    #include "inttab0.lsl"
            }

        "_lc_u_int_tab_tc0" = (INTTAB0);
        "_lc_u_int_tab_tc1" = 0;
        "_lc_u_int_tab_tc2" = 0;
        "_lc_u_int_tab" = "_lc_u_int_tab_tc0";
        "__INTTAB_CPU0" = (INTTAB0);
    

        } 
        #ifndef __REDEFINE_BASE_ADDRESS_GROUPS
        #include        "base_address_groups.lsl"
        #endif
        /*Fixed memory Allocations for Start up code*/
        group (ordered)
        {
            "_SMALL_DATA_TC0" := "_SMALL_DATA_";
            "_SMALL_DATA_TC1" := 0;
            "_SMALL_DATA_TC2" := 0;

            "_LITERAL_DATA_TC0" := "_LITERAL_DATA_";
            "_LITERAL_DATA_TC1" := 0;
            "_LITERAL_DATA_TC2" := 0;

            "_A8_DATA_TC0" := 0;
            "_A8_DATA_TC1" := 0;
            "_A8_DATA_TC2" := 0;

            "_A9_DATA_TC0" := 0;
            "_A9_DATA_TC1" := 0;
            "_A9_DATA_TC2" := 0;
        }

    }
    /*Far Data / Far Const Sections, selectable with patterns and user defined sections*/
    section_layout :vtc:linear
    {
        /*RAM*/
        group FLS_AC_WRITE (ordered, run_addr = 0x70101100)
        {
            reserved "FLS_AC_WRITE" (alloc_allowed = absolute, size = 300);
        }

        group FLS_AC_ERASE (ordered, run_addr = 0x701011c8)
        {
            reserved "FLS_AC_ERASE" (alloc_allowed = absolute, size = 200);
        }
    }

    section_layout :vtc:linear
    {
        /*BHMD Data sections*/
        group  (ordered, run_addr=mem:pflash0[BMHD_OFFSET..(BMHD_OFFSET+BMHD_SIZE)])
        {
            select ".rodata.BMD_HDR_CONST_FAR_UNSPECIFIED";
        }
    }

    section_layout :vtc:linear
    {
        /*ROM*/
        group
        {        
            /* Const data and Init ROM */
            group cpu0_rodata (ordered, align = 4, run_addr=mem:pflash0[CPU0_CONST_OFFSET..(CPU0_CONST_OFFSET+CPU0_CONST_SIZE)])
            {       
                /* Readonly data*/
                select ".rodata*";
            }
            group FLS_AC_ERASE_SOURCE (ordered, align=4, run_addr=mem:pflash0[(CPU0_FLS_AC_ERASE_OFFSET)..(CPU0_FLS_AC_ERASE_OFFSET+CPU0_FLS_AC_ERASE_SIZE)])
            {
                section "AC_ERASE" (size = 0x200, attributes=r,fill = 0)
                {
                select ".text.FLS_AC_ERASE_SOURCE";
                }
            }

            group FLS_AC_WRITE_SOURCE (ordered, align=4, run_addr=mem:pflash0[(CPU0_FLS_AC_WRITE_OFFSET)..(CPU0_FLS_AC_WRITE_OFFSET+CPU0_FLS_AC_WRITE_SIZE)])
            {
                section "AC_WRITE" (size = 0x300, attributes=r,fill = 0)
                {
                select ".text.FLS_AC_WRITE_SOURCE";
                }
            }

            group (ordered, align = 4, run_addr=mem:pflash0[(CPU0_CODE_OFFSET)..(CPU0_CODE_OFFSET+CPU0_CODE_SIZE)])
            {
                select "text.CPU0.Private*";
                select ".text.*";
                select "(.text.Shared*)";
            }
        group
        {        
            /* Const data and Init ROM */
            group bsw_fix_rodata (run_addr=mem:pflash0[BSW_FIX_CONST_OFFSET..(BSW_FIX_CONST_OFFSET+BSW_FIX_CONST_SIZE)])
            {       
                /* Readonly data*/
                select ".BSW_FIX.CONST_8BIT.01";
                select ".BSW_FIX.CONST_8BIT.02";
                select ".BSW_FIX.CONST_8BIT.03";
                select ".BSW_FIX.CONST_8BIT.04";
                select ".BSW_FIX.CONST_8BIT.05";
                select ".BSW_FIX.CONST_8BIT.06";
                select ".BSW_FIX.CONST_8BIT.07";
                select ".BSW_FIX.CONST_8BIT.08";
                select ".BSW_FIX.CONST_8BIT.09";
                select ".BSW_FIX.CONST_8BIT.10";
                select ".BSW_FIX.CONST_8BIT.11";
                select ".BSW_FIX.CONST_8BIT.12";
                select ".BSW_FIX.CONST_8BIT.13";
                select ".BSW_FIX.CONST_8BIT.14";
                select ".BSW_FIX.CONST_8BIT.15";
                select ".BSW_FIX.CONST_8BIT.16";
                select ".BSW_FIX.CONST_8BIT.17";
                select ".BSW_FIX.CONST_8BIT.18";
                select ".BSW_FIX.CONST_8BIT.19";
                select ".BSW_FIX.CONST_8BIT.20";
                select ".BSW_FIX.CONST_8BIT.21";
                select ".BSW_FIX.CONST_8BIT.22";
                select ".BSW_FIX.CONST_8BIT.23";
            }
        }


            /* Block address */
            group(ordered)
            { 
                "Fls_CalibRomStart"       =      (FLASH_CALIB_START);
                "Fls_CalibRomEnd"         =      (FLASH_CALIB_START+FLASH_CALIB_SIZE-1);
                "Fls_AppRomStart"         =      (FLASH_APP_START);
                "Fls_AppRomEnd"           =      (FLASH_APP_START+FLASH_APP_SIZE-1);
                "Fls_SblRamStart"         =      (CPU0_PRAM_START+FLASH_SBL_OFFSET);
                "Fls_SblRamEnd"           =      (CPU0_PRAM_START+FLASH_SBL_OFFSET+FLASH_SBL_SIZE-1);
            }
        }
    }

    section_layout :vtc:linear
    {        
        group CPU0_PRIVATE_DATA (ordered, run_addr=mem:dspr0[CPU0_DRAM_OFFSET..(CPU0_DRAM_OFFSET+CPU0_DRAM_SIZE)])
        {
            select "(.data.CPU0.Private*)";
            select "(.zdata.CPU0.Private*)";
            select "(.zdata*)";
            select "(.bss.CPU0.Private*)";
        }

        group SHARED_DATA (ordered, run_addr=mem:dspr0[CPU0_DRAM_OFFSET..(CPU0_DRAM_OFFSET+CPU0_DRAM_SIZE)])
        {
            select "(.data*)";
            select "(.zdata*)";
            select "(.bss*)";
        }       
    }

    section_layout mpe:vtc:abs18
    {
        group SHARED_ZBSS (ordered, run_addr=mem:lmuram/not_cached)
        {
            select "(.zbss*)";
        }
    }
}

