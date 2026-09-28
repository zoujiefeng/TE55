# Version information:
# BUILD_TYPE = PROD  : production release
# BUILD_TYPE = DEBUG : temporary debug build
# BUILD_TYPE = DEVEL : development release
import os

if os.path.exists("DEBUG"):
    BUILD_TYPE          = 'DEBUG'
elif os.path.exists("PROD"):
    BUILD_TYPE          = 'PROD'
    
print("Generate file type: " + BUILD_TYPE + '\n')
PROJ_NAME           = 'TC387_PLATFORM'
SW_VERSION_MSB      = 0
SW_VERSION_LSB      = 0


# Compiler Type Choice 
# COMPILER_CHOICE = TASKING     : Tasking V6 Compiler
COMPILER_CHOICE = 'HIGHTEC'

# General configuration:--------------------------------------------------------------------------------------------
if COMPILER_CHOICE == 'TASKING':
	OUTPUT_DIR          = 'output'
	LOG_DIR             = 'log'
	COMPILER_TOOL       = 'Tasking'#Must match the file name located in the site_tools directory
	COMPILER_ROOT       = 'C:/toolbase/tasking_ifx/6.2r2p4/ctc/bin'#fill you compiler location
elif COMPILER_CHOICE == 'HIGHTEC':
	OUTPUT_DIR			= 'output'
	LOG_DIR				= 'log'
	COMPILER_TOOL		= 'Hightec'
	COMPILER_ROOT 		= r'S:\HIGHTEC\toolchains\tricore\v4.9.4.1\bin'

# CPU target--------------------------------------------------------------------------------------------------------

CPU_TARGET          = 'tc38xx'
CPU_USED            = 'tc38x'



# Compiler configuration:-------------------------------------------------------------------------------------------
if COMPILER_CHOICE == 'TASKING':
	
	COMPILER_DEFINES        = ['-D_TASKING_C_TRICORE_=1', '-D_APP_SW = DEMO_APP'] 
	COMPILER_FLAGS		= '	-Ctc38x \
							--core=tc1.6.2 \
							-t \
							-Wa-gAHLs \
							--emit-locals=-equ,-symbols \
							-Wa-Ogs \
							-Wa--error-limit=42 \
							--iso=99 \
							--eabi-compliant \
							--integer-enumeration \
							--language=-comments,-gcc,+volatile,-strings \
							--switch=auto \
							--default-near-size=0 \
							--default-a0-size=0 \
							--default-a1-size=0 \
							-O2ROPYGKLF-predict \
							--tradeoff=4 \
							-g \
							--source '
elif COMPILER_CHOICE == 'HIGHTEC' :
	COMPILER_DEFINES  	= ['-D_GNU_C_TRICORE_=1', '-DUSED_FOR_MCUF=1', '-DUSED_FOR_GCU=0', '-DCANNM_ENABLE=0', 
					   '-DDEMO_APP = 1', '-DAPP_SW = DEMO_APP']
	if(BUILD_TYPE == 'DEBUG'):
    		COMPILER_DEFINES.append('-D_RUNNING_MODE = 1')
	elif(BUILD_TYPE == 'RELEASE'):
    		COMPILER_DEFINES.append('-D_RUNNING_MODE = 0')
	else:
    		COMPILER_DEFINES.append('-D_RUNNING_MODE = 2')
	# Disable unused-local-typedefs, warning: typedef 'xxx' locally defined but not used
	COMPILER_FLAGS 		=  '-DNOT_READY_FOR_TESTING_OR_DEPLOYMENT\
							-gdwarf-2 \
							-Wall \
							-Wno-unused-local-typedefs \
							-W \
							-Wundef \
							-Wpointer-arith \
							-Wbad-function-cast \
							-Wcast-qual \
							-Wcast-align \
							-Wstrict-prototypes \
							-Wmissing-prototypes \
							-Wmissing-noreturn \
							-Wredundant-decls \
							-Wnested-externs \
							-Winline \
							-fno-builtin \
							-Wno-return-type \
							-Wno-pointer-to-int-cast \
							-Wfloat-equal \
							-fno-common \
							-O3 \
							-ffunction-sections \
							-fdata-sections \
							-mpragma-data-sections \
							-Wno-unused-parameter \
                            -mtc162 \
							-save-temps=obj \
							-fshort-double \
							-maligned-data-sections'
# Assembler configuration:-------------------------------------------------------------------------------------------
if COMPILER_CHOICE == 'TASKING':
	ASSEMBLER_DEFINES      = COMPILER_DEFINES
	ASSEMBLER_FLAGS     = '    -Ctc38x \
	                            --lsl-core=vtc \
	                            -t \
	                            -Wa-H"sfr/regtc38x.def" \
	                            -Wa-gAHLs \
	                            --emit-locals=-equs,-symbols \
	                            -Wa-Ogs \
	                            -Wa--error-limit=42'
elif COMPILER_CHOICE == 'HIGHTEC':
	ASSEMBLER_DEFINES  	= COMPILER_DEFINES
	ASSEMBLER_FLAGS 	= COMPILER_FLAGS
# Libraries to include:----------------------------------------------------------------------------------------------
if COMPILER_CHOICE == 'TASKING':
	ADD_LIBRARIES        = ['./os/RTAOS.a'] 
	LIBRARY_PATHS		 = [] 
elif COMPILER_CHOICE == 'HIGHTEC':
	ADD_LIBRARIES        = ['./os/RTAOS.a', './TOOLS/Hightec/libgcc.a']
	LIBRARY_PATHS		 = [] 

OBJECT_FILE         = 	[]

# Linker configuration:----------------------------------------------------------------------------------------------
if COMPILER_CHOICE == 'TASKING':
#No optimization		 	-OCLTXY --optimize=0 -O0
#Default optimization 		-OcLtxy --optimize=1 -O1
#All optimizations 	 		-Ocltxy --optimize=2 -O2
	LINKER_FLAGS    =   '--core=mpe:vtc \
						-OCLTXY \
						-Cmpe:vtc \
						-M         \
						-mcrfiklSmNOduQ \
						--error-limit=42 '
	LINKER_FILE       = '.\Targets\TC38xx\Linker\ENTRY_PLATFORM_AUTOSAR_LSL_TASKING.lsl'
elif COMPILER_CHOICE == 'HIGHTEC':
	LINKER_FLAGS      = '-O0 \
						-nodefaultlibs \
						-nostdlib \
						-nocrt0 \
						-nostartfiles \
						-e cstart \
						-Wl,--allow-multiple-definition \
						-Wl,--cref \
						-Wl,--oformat=elf32-tricore \
						-Wl,--mcpu=tc162 \
						-Wl,--relax \
						-Wl,--warn-once \
						-Wl,--extmap="a"'
	LINKER_FILE       = '.\Targets\TC38xx\Linker\TC387_PLATFORM_AUTOSAR_LD_HIGHTEC.ld'
#centralized header directory::----------------------------------------------------------------------------------------------
if COMPILER_CHOICE == 'TASKING':
	CEN_HEADER_DIR = '.\output\inc'
elif COMPILER_CHOICE == 'HIGHTEC':
	CEN_HEADER_DIR = '.\output\inc'

