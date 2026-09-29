# BUILD_TYPE = PROD  : production release
# BUILD_TYPE = DEBUG : temporary debug build
# BUILD_TYPE = DEVEL : development release
# Implements: PLF014
import os,sys

BUILD_TYPE			= 'DEBUG'
PROJ_NAME			= 'PJ_INVT_FBL'

# General configuration:
# Implements: PLF012, PLF013
OUTPUT_DIR			= 'build'
LOG_DIR				= 'log'
COMPILER_TOOL		= 'Tasking'
COMPILER_ROOT 		= ''

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\toolbase\tasking_ifx\6.2r2p4\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\toolbase\tasking_ifx\6.2r2p4\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\toolbase\tasking_ifx\6.2r2p4\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\Programs\TASKING\TriCorev6.3r1\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'S:\TASKING\TriCore_v6.3r1\ctc\bin'

if not os.path.isdir(COMPILER_ROOT):
	COMPILER_ROOT       = r'C:\TriCore_v6.2r2\ctc\bin'

# Target as defined by the compiler
# Implements: PLF004
CPU_TARGET    		= 'tc37x'

# Compiler configuration:
COMPILER_DEFINES  	= ['-D_TASKING_C_TRICORE_=1','-DDEVELOPMENT']



COMPILER_FLAGS 		=  '--core=tc1.6.2 \
		--iso=99 -O2 \
		-AGKpvX \
		--tradeoff=2 \
		--fp-model=1 \
		--switch=auto \
		--integer-enumeration \
		--default-near-size=0 \
		--global-type-checking\
 							-g \
 							--source '
# '	\
# 							--core=tc1.6.x \
# 							-t \
# 							-Wa-gAHLs \
# 							--emit-locals=-equ,-symbols \
# 							-Wa-Ogs \
# 							-Wa--error-limit=42 \
# 							--iso=99 \
# 							--eabi=+word-struct-align \
# 							--integer-enumeration \
# 							--language=-comments,-gcc,+volatile,-strings \
# 							--switch=auto \
# 							--default-near-size=0 \
# 							--default-a0-size=0 \
# 							--default-a1-size=0 \
# 							-O2ROPYGKLF-predict \
# 							--tradeoff=4 \
# 							-g \
# 							--source '

# Assembler configuration:
# Implements: PLF007
ASSEMBLER_DEFINES  	= []
ASSEMBLER_FLAGS 	= ''

# Libraries to include
# Implements: PLF009, PLF010
ADD_LIBRARIES		= []
LIBRARY_PATHS		= []

# Linker configuration:
LINKER_FLAGS 		= '	-OcLtXY \
						--core=mpe:vtc \
						--global-type-checking \
						-M         \
						-mcrfiklSmNOduQ \
						--error-limit=42 \
						-Cmpe:vtc\
						'


LINKER_FILE  		= r'Fbl\Toolchains_TC387\Linker\linker-boot.lsl'


CEN_HEADER_DIR = OUTPUT_DIR+'\\inc'