
#include "tc1v1_6_2.lsl"

#define FLASH_SBL_ROUTINE_HEADER_OFFSET     0x00000000
#define FLASH_SBL_ROUTINE_HEADER_SIZE       20

#define FLASH_SBL_CODE_OFFSET               0x00000014          /* SBL start address */
#define FLASH_SBL_CODE_SIZE                 (12k-20)
    

#define FLASH_SBL_DATA_OFFSET               0x00003000          /* SBL start address */
#define FLASH_SBL_DATA_SIZE                 4k

processor mpe
{
    derivative = tc33;
}

derivative tc33
{
    core tc0
    {
            architecture = TC1V1.6.2;
            space_id_offset = 100;  // add 100 to all space IDs in the architecture definition
    }

    core vtc
    {
            architecture = TC1V1.6.2;
            import tc0;                      // add all address spaces of core tc0 to core vtc for linking and locating                    //                             tc2
    }

    bus sri
    {
        mau = 8;
        width = 32;
        
        // map shared addresses one-to-one to real cores and virtual cores
        map (dest=bus:tc0:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
        map (dest=bus:vtc:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
    }


    memory pspr0 // Program Scratch Pad Ram
    {
            mau = 8;
            size = 24k;
            type = ram;
            map (dest=bus:tc0:fpi_bus, dest_offset=0xc0000000, size=24k, exec_priority=0);
            map (dest=bus:sri, dest_offset=0x70100000, size=24k);
    }

    memory dspr0 // Program Scratch Pad Ram
    {
            mau = 8;
            size = 24k;
            type = ram;
            map (dest=bus:tc0:fpi_bus, dest_offset=0xc0019000, size=16k, exec_priority=0);
            map (dest=bus:sri, dest_offset=0x7001A000, size=16k);
    }    

    section_setup :vtc:linear
    {
            copytable
            (
                    align = 4,
                    dest = linear
            );
    }

    section_layout :vtc:linear
    {
        group (align = 64, attributes=rw, run_addr=mem:dspr0) 
        reserved "Sbl_Unused" (size = FLASH_SBL_ROUTINE_HEADER_OFFSET);
    }

    section_layout :vtc:linear
    {

        /*flashfloaderheader  sections*/
        group flashfloaderheader(ordered, align=4, run_addr=mem:dspr0[FLASH_SBL_ROUTINE_HEADER_OFFSET..(FLASH_SBL_ROUTINE_HEADER_OFFSET+FLASH_SBL_ROUTINE_HEADER_SIZE)])
        {
            select ".rodata.sbl_const_flash_routine_header";
        }

        /* Const data*/
        group cpu0_rodata (ordered, align=4, run_addr=mem:dspr0[FLASH_SBL_CODE_OFFSET..(FLASH_SBL_CODE_OFFSET+FLASH_SBL_CODE_SIZE)])
        {       
            /* Readonly data*/
            select ".rodata*";

        }

        group FLSLOADER_CODE ( ordered, run_addr = mem:dspr0[FLASH_SBL_CODE_OFFSET..(FLASH_SBL_CODE_OFFSET+FLASH_SBL_CODE_SIZE)])
        {
            select "(.text.FLSLOADERRAMCODE*)";
        }

        group code (ordered, align=4, run_addr=mem:dspr0[FLASH_SBL_CODE_OFFSET..(FLASH_SBL_CODE_OFFSET+FLASH_SBL_CODE_SIZE)])
        {
            select ".text*";
        }


        /*RAM*/
  

    }
    section_layout :vtc:linear
    {
        group SHARED_DATA (ordered, contiguous, run_addr=mem:dspr0[FLASH_SBL_DATA_OFFSET..(FLASH_SBL_DATA_OFFSET+FLASH_SBL_DATA_SIZE)], attributes=rw)
        {
            select "(.data*)";
            select "(.zdata*)";
            select "(.bss*)";
        } 
    }
    section_layout :vtc:abs18
    {
        group SHARED_ZBSS (ordered, run_addr=mem:dspr0[FLASH_SBL_DATA_OFFSET..(FLASH_SBL_DATA_OFFSET+FLASH_SBL_DATA_SIZE)])
        {
            select "(.zbss*)";
        }
    }
}

