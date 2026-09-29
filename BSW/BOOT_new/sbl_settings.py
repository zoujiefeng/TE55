# BUILD_TYPE = PROD  : production release
# BUILD_TYPE = DEBUG : temporary debug build
# BUILD_TYPE = DEVEL : development release
# Implements: PLF014
import os,sys
BUILD_TYPE			= 'DEBUG'
PROJ_NAME			= 'PJ_INVT_SBL'

# General configuration:
# Implements: PLF012, PLF013
OUTPUT_DIR			= 'build'
LOG_DIR				= 'log'
COMPILER_TOOL		= 'Tasking'
COMPILER_ROOT 		= 'C:/toolbase/tasking_ifx/6.2r2p4/ctc/bin'
if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\Programs\TASKING\TriCorev6.3r1\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\Programs\TASKING\TriCorev6.3r1\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\Programs\TASKING\TriCorev6.3r1\ctc\bin'
    
if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'S:\TASKING\TriCore_v6.3r1\ctc\bin'

# Target as defined by the compiler
# Implements: PLF004
CPU_TARGET    		= 'tc33x'

# Compiler configuration:
COMPILER_DEFINES  	= ['-D_TASKING_C_TRICORE_=1', '-DAUTOSAR_OS_NOT_USED', '-DDEVELOPMENT']
COMPILER_FLAGS 		=  '	\
							--core=tc1.6.2 \
							-t \
							-Wa-gAHLs \
							--emit-locals=-equ,-symbols \
							-Wa-Ogs \
							-Wa--error-limit=42 \
							--iso=99 \
							--integer-enumeration \
							--language=-comments,-gcc,+volatile,-strings \
							--switch=auto \
							--default-near-size=0 \
							--default-a0-size=0 \
							--default-a1-size=0 \
							-O2\
							--tradeoff=4 \
							--source '

# Assembler configuration:
# Implements: PLF007
ASSEMBLER_DEFINES  	= COMPILER_DEFINES
ASSEMBLER_FLAGS 	= '    -Ctc33 \
	                            --lsl-core=vtc \
	                            -t \
	                            -Wa-H"sfr/regtc33.def" \
	                            -Wa-gAHLs \
	                            --emit-locals=-equs,-symbols \
	                            -Wa-Ogs \
	                            -Wa--error-limit=42'

# Libraries to include
# Implements: PLF009, PLF010
ADD_LIBRARIES		= [] 
LIBRARY_PATHS		= []

# Linker configuration:
LINKER_FLAGS 		= '--core=mpe:tc0 \
						-OCLTXY \
						-M         \
						-mcrfiklSmNOduQ \
						--no-rom-copy \
						--non-romable  \
						--user-provided-initialization-code \
						--error-limit=42 '
LINKER_FILE  		= 'Sbl/Toolchains_TC387/Tasking/linker-sbl.lsl'

CEN_HEADER_DIR = OUTPUT_DIR+'\\inc'