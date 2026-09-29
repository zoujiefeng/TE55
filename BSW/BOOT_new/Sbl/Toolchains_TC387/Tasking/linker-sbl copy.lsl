#include "tc1v1_6_2.lsl"

#define FLASH_SBL_ROUTINE_HEADER_OFFSET     0x00002000
#define FLASH_SBL_ROUTINE_HEADER_SIZE       20

#define FLASH_SBL_CODE_OFFSET               0x00002014          /* SBL start address */
#define FLASH_SBL_CODE_SIZE                 (12k-20)
    

#define FLASH_SBL_DATA_OFFSET               0x00005000          /* SBL start address */
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
    space_id_offset = 100; // add 100 to all space IDs in the architecture definition
    copytable_space = vtc:linear;// use the copy table in the virtual core for 'bss' and initialized data sections
  }

  core tc1 // core 1 TC16E
  {
    architecture = TC1V1.6.2;
    space_id_offset = 200; // add 200 to all space IDs in the architecture definition
    copytable_space = vtc:linear;// use the copy table in the virtual core for 'bss' and initialized data sections
  }

  core vtc
  {
    architecture = TC1V1.6.2;
    import tc0; // add all address spaces of core tc0 to core vtc for linking and locating
    import tc1;//                                tc1
  }

  bus sri
  {
    mau = 8;
    width = 32;

    // map shared addresses one-to-one to real cores and virtual cores
    map (dest=bus:tc0:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
    map (dest=bus:tc1:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
    map (dest=bus:vtc:fpi_bus, src_offset=0, dest_offset=0, size=0xc0000000);
  }

  memory dsram1 // Data Scratch Pad Ram
  {
    mau = 8;
    size = 96k;
    type = ram;
    map (dest=bus:tc1:fpi_bus, dest_offset=0xd0000000, size=96k, priority=8);
    map (dest=bus:sri, dest_offset=0x60000000, size=96k);
  }

  memory psram1 // Program Scratch Pad Ram
  {
    mau = 8;
    size = 64k;
    type = ram;
    map (dest=bus:tc1:fpi_bus, dest_offset=0xc0000000, size=64k, priority=8);
    map (dest=bus:sri, dest_offset=0x60100000, size=64k);
  }

  memory dsram0 // Data Scratch Pad Ram
  {
    mau = 8;
    size = 192k;
    type = ram;
    map (dest=bus:tc0:fpi_bus, dest_offset=0xd0000000, size=192k, priority=8);
    map (dest=bus:sri, dest_offset=0x70000000, size=192k);
  }

  memory psram0 // Program Scratch Pad Ram
  {
    mau = 8;
    size = 32k;
    type = ram;
    map (dest=bus:tc0:fpi_bus, dest_offset=0xc0000000, size=32k, priority=8);
    map (dest=bus:sri, dest_offset=0x70100000, size=32k);
  }

  memory pfls0
  {
    mau = 8;
    size = 2M;
    type = rom;
    map cached (dest=bus:sri, dest_offset=0x80000000, size=2M);
    map not_cached (dest=bus:sri, dest_offset=0xa0000000, reserved, size=2M);
  }

  memory dfls0
  {
    mau = 8;
    size = 128K;
    type = reserved nvram;
    map (dest=bus:sri, dest_offset=0xaf000000, size=128K);
  }

  memory ucb
  {
    mau = 8;
    size = 24k;
    type = rom;
    map (dest=bus:sri, dest_offset=0xaf400000, reserved, size=24k);
  }

  memory cpu0_dlmu
  {
    mau = 8;
    size = 8k;
    type = ram;
    map cached (dest=bus:sri, dest_offset=0x90000000, size=8k);
    map not_cached (dest=bus:sri, dest_offset=0xb0000000, reserved, size=8k);
  }

  memory cpu1_dlmu
  {
    mau = 8;
    size = 64k;
    type = ram;
    map cached (dest=bus:sri, dest_offset=0x90010000, size=64k);
    map not_cached (dest=bus:sri, dest_offset=0xb0010000, reserved, size=64k);
  }

  /*In case of TC37xPD it doesn't contain EMEM, the below memory needs to be commented*/
  memory edmem
  {
    mau = 8;
    size = 1M;
    type = ram;
    map (dest=bus:sri, dest_offset=0x99000000, size=1M);
    map (dest=bus:sri, dest_offset=0xb9000000, reserved, size=1M);
  }

  
    section_layout :vtc:linear
    {
        group (align = 64, attributes=rw, run_addr=mem:pspr0) 
        reserved "Sbl_Unused" (size = FLASH_SBL_ROUTINE_HEADER_OFFSET);
    }

    section_layout :vtc:linear
    {

        /*flashfloaderheader  sections*/
        group flashfloaderheader(ordered, align=4, run_addr=mem:pspr0[FLASH_SBL_ROUTINE_HEADER_OFFSET..(FLASH_SBL_ROUTINE_HEADER_OFFSET+FLASH_SBL_ROUTINE_HEADER_SIZE)])
        {
            select ".rodata.sbl_const_flash_routine_header";
        }

        /* Const data*/
        group cpu0_rodata (ordered, align=4, run_addr=mem:pspr0[FLASH_SBL_CODE_OFFSET..(FLASH_SBL_CODE_OFFSET+FLASH_SBL_CODE_SIZE)])
        {       
            /* Readonly data*/
            select ".rodata*";

        }

        group FLSLOADER_CODE ( ordered, run_addr = mem:pspr0[FLASH_SBL_CODE_OFFSET..(FLASH_SBL_CODE_OFFSET+FLASH_SBL_CODE_SIZE)])
        {
            select "(.text.FLSLOADERRAMCODE*)";
        }

        group code (ordered, align=4, run_addr=mem:pspr0[FLASH_SBL_CODE_OFFSET..(FLASH_SBL_CODE_OFFSET+FLASH_SBL_CODE_SIZE)])
        {
            select ".text*";
        }


        /*RAM*/
  

    }
    section_layout :vtc:linear
    {
        group SHARED_DATA (ordered, contiguous, run_addr=mem:pspr0[FLASH_SBL_DATA_OFFSET..(FLASH_SBL_DATA_OFFSET+FLASH_SBL_DATA_SIZE)], attributes=rw)
        {
            select "(.data*)";
            select "(.zdata*)";
            select "(.bss*)";
        } 
    }
    section_layout :vtc:abs18
    {
        group SHARED_ZBSS (ordered, run_addr=mem:pspr0[FLASH_SBL_DATA_OFFSET..(FLASH_SBL_DATA_OFFSET+FLASH_SBL_DATA_SIZE)])
        {
            select "(.zbss*)";
        }
    }
}

