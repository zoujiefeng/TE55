#ifndef __UDS_DID_DATA_DEF_H_
#define __UDS_DID_DATA_DEF_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "NvM_Cfg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/* User Header Files */
/* User Code Block Start */
#include "MAIN_tsk.h"
#include "GMAIN_tsk.h"
/* User Code Block End */

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
#define  UDS_au8DidBuf_0xDFEA  MAIN_kau8BASEAppVersion
#define  UDS_au8DidBuf_0xDFEB  BSW_kau8INVTBootVersion
#define  UDS_au8DidBuf_0xDFEC  MAIN_kau8INVTAppVersion
#define  UDS_au8DidBuf_0xDFED  BSW_kau8INVTBSWVersion
#define  UDS_au8DidBuf_0xF10A  Fbl_DataM_RamMirrorNV_FingerprintBlock
/* #define  UDS_au8DidBuf_0xF18C  UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF18C
#define  UDS_au8DidBuf_0xF190  UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF190
#define  UDS_au8DidBuf_0xF1B7  UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF1B7 */

#define  UDS_au8DidBuf_0x0D2A  MAIN_as32OCTrimNvm[0]
#define  UDS_au8DidBuf_0x0D2A_1  MAIN_as32OCTrimNvm[1]
#define  UDS_au8DidBuf_0x0D2A_2  MAIN_as32OCTrimNvm[2]
#define  UDS_au8DidBuf_0x0D2A_3  MAIN_as32OCTrimNvm[3]
#define  UDS_au8DidBuf_0x0D2A_4  MAIN_as32OCTrimNvm[4]
#define  UDS_au8DidBuf_0x1D2A  GMAIN_as32OCTrimNvm[0]
#define  UDS_au8DidBuf_0x1D2A_1  GMAIN_as32OCTrimNvm[1]
#define  UDS_au8DidBuf_0x1D2A_2  GMAIN_as32OCTrimNvm[2]
#define  UDS_au8DidBuf_0x1D2A_3  GMAIN_as32OCTrimNvm[3]
#define  UDS_au8DidBuf_0x1D2A_4  GMAIN_as32OCTrimNvm[4]

#define UDS_DID_BUF_SIZE_0x0B01   (2u)
#define UDS_DID_BUF_SIZE_0x0B02   (4u)
#define UDS_DID_BUF_SIZE_0x0B03   (2u)
#define UDS_DID_BUF_SIZE_0x0B08   (2u)
#define UDS_DID_BUF_SIZE_0x0B0B   (1u)
#define UDS_DID_BUF_SIZE_0x0B0C   (1u)

#define UDS_DID_BUF_SIZE_0x0D00   (1u)
#define UDS_DID_BUF_SIZE_0x0D01   (1u)
#define UDS_DID_BUF_SIZE_0x0D02   (2u)
#define UDS_DID_BUF_SIZE_0x0D03   (2u)
#define UDS_DID_BUF_SIZE_0x0D04   (2u)
#define UDS_DID_BUF_SIZE_0x0D05   (1u)
#define UDS_DID_BUF_SIZE_0x0D06   (2u)
#define UDS_DID_BUF_SIZE_0x0D07   (1u)
#define UDS_DID_BUF_SIZE_0x0D08   (2u)
#define UDS_DID_BUF_SIZE_0x0D09   (1u)
#define UDS_DID_BUF_SIZE_0x0D0A   (1u)
#define UDS_DID_BUF_SIZE_0x0D0B   (1u)
#define UDS_DID_BUF_SIZE_0x0D0C   (2u)
#define UDS_DID_BUF_SIZE_0x0D0C_1   (2u)
#define UDS_DID_BUF_SIZE_0x0D0C_2   (2u)
#define UDS_DID_BUF_SIZE_0x0D0D   (2u)
#define UDS_DID_BUF_SIZE_0x0D0E   (2u)
#define UDS_DID_BUF_SIZE_0x0D0F   (2u)
#define UDS_DID_BUF_SIZE_0x0D10   (1u)
#define UDS_DID_BUF_SIZE_0x0D11   (2u)
#define UDS_DID_BUF_SIZE_0x0D12   (2u)
#define UDS_DID_BUF_SIZE_0x0D13   (2u)
#define UDS_DID_BUF_SIZE_0x0D14   (2u)
#define UDS_DID_BUF_SIZE_0x0D15   (2u)
#define UDS_DID_BUF_SIZE_0x0D16   (2u)
#define UDS_DID_BUF_SIZE_0x0D17   (2u)
#define UDS_DID_BUF_SIZE_0x0D18   (2u)
#define UDS_DID_BUF_SIZE_0x0D19   (2u)
#define UDS_DID_BUF_SIZE_0x0D1A   (2u)
#define UDS_DID_BUF_SIZE_0x0D1B   (2u)
#define UDS_DID_BUF_SIZE_0x0D1C   (2u)
#define UDS_DID_BUF_SIZE_0x0D1D   (2u)
#define UDS_DID_BUF_SIZE_0x0D1E   (2u)
#define UDS_DID_BUF_SIZE_0x0D1F   (2u)
#define UDS_DID_BUF_SIZE_0x0D20   (2u)
#define UDS_DID_BUF_SIZE_0x0D21   (2u)
#define UDS_DID_BUF_SIZE_0x0D22   (2u)
#define UDS_DID_BUF_SIZE_0x0D23   (2u)
#define UDS_DID_BUF_SIZE_0x0D24   (2u)
#define UDS_DID_BUF_SIZE_0x0D25   (2u)
#define UDS_DID_BUF_SIZE_0x0D26   (2u)
#define UDS_DID_BUF_SIZE_0x0D27   (2u)
#define UDS_DID_BUF_SIZE_0x0D28   (2u)
#define UDS_DID_BUF_SIZE_0x0D29   (2u)
#define UDS_DID_BUF_SIZE_0x0D2B   (1u)

#define UDS_DID_BUF_SIZE_0x0E00   (2u)
#define UDS_DID_BUF_SIZE_0x0E01   (1u)
#define UDS_DID_BUF_SIZE_0x0E02   (1u)
#define UDS_DID_BUF_SIZE_0x0E03   (16u)
#define UDS_DID_BUF_SIZE_0x0E04   (1u)
#define UDS_DID_BUF_SIZE_0x0E05   (2u)
#define UDS_DID_BUF_SIZE_0x0E06   (1u)
#define UDS_DID_BUF_SIZE_0x0E07   (2u)
#define UDS_DID_BUF_SIZE_0x0E08   (2u)
#define UDS_DID_BUF_SIZE_0x0E09   (2u)
#define UDS_DID_BUF_SIZE_0x0E0A   (2u)
#define UDS_DID_BUF_SIZE_0x0E0B   (4u)
#define UDS_DID_BUF_SIZE_0x0E0C   (4u)
#define UDS_DID_BUF_SIZE_0x0E0D   (4u)
#define UDS_DID_BUF_SIZE_0x0E0E   (4u)
#define UDS_DID_BUF_SIZE_0x0E0F   (4u)

#define UDS_DID_BUF_SIZE_0x1D00   (1u)
#define UDS_DID_BUF_SIZE_0x1D01   (1u)
#define UDS_DID_BUF_SIZE_0x1D02   (2u)
#define UDS_DID_BUF_SIZE_0x1D03   (2u)
#define UDS_DID_BUF_SIZE_0x1D04   (2u)
#define UDS_DID_BUF_SIZE_0x1D05   (1u)
#define UDS_DID_BUF_SIZE_0x1D06   (2u)
#define UDS_DID_BUF_SIZE_0x1D07   (1u)
#define UDS_DID_BUF_SIZE_0x1D08   (2u)
#define UDS_DID_BUF_SIZE_0x1D09   (1u)
#define UDS_DID_BUF_SIZE_0x1D0A   (1u)
#define UDS_DID_BUF_SIZE_0x1D0B   (1u)
#define UDS_DID_BUF_SIZE_0x1D0C   (2u)
/* #define UDS_DID_BUF_SIZE_0x1D0C_1   (2u)
   #define UDS_DID_BUF_SIZE_0x1D0C_2   (2u) */
#define UDS_DID_BUF_SIZE_0x1D0D   (2u)
#define UDS_DID_BUF_SIZE_0x1D0E   (2u)
#define UDS_DID_BUF_SIZE_0x1D0F   (2u)
#define UDS_DID_BUF_SIZE_0x1D10   (1u)
#define UDS_DID_BUF_SIZE_0x1D11   (2u)
#define UDS_DID_BUF_SIZE_0x1D12   (2u)
#define UDS_DID_BUF_SIZE_0x1D13   (2u)
#define UDS_DID_BUF_SIZE_0x1D14   (2u)
#define UDS_DID_BUF_SIZE_0x1D15   (2u)
#define UDS_DID_BUF_SIZE_0x1D16   (2u)
#define UDS_DID_BUF_SIZE_0x1D17   (2u)
#define UDS_DID_BUF_SIZE_0x1D18   (2u)
#define UDS_DID_BUF_SIZE_0x1D19   (2u)
#define UDS_DID_BUF_SIZE_0x1D1A   (2u)
#define UDS_DID_BUF_SIZE_0x1D1B   (2u)
#define UDS_DID_BUF_SIZE_0x1D1C   (2u)
#define UDS_DID_BUF_SIZE_0x1D1D   (2u)
#define UDS_DID_BUF_SIZE_0x1D1E   (2u)
#define UDS_DID_BUF_SIZE_0x1D1F   (2u)
#define UDS_DID_BUF_SIZE_0x1D20   (2u)
#define UDS_DID_BUF_SIZE_0x1D21   (2u)
#define UDS_DID_BUF_SIZE_0x1D22   (2u)
#define UDS_DID_BUF_SIZE_0x1D23   (2u)
#define UDS_DID_BUF_SIZE_0x1D24   (2u)
#define UDS_DID_BUF_SIZE_0x1D25   (2u)
#define UDS_DID_BUF_SIZE_0x1D26   (2u)
#define UDS_DID_BUF_SIZE_0x1D27   (2u)
#define UDS_DID_BUF_SIZE_0x1D28   (2u)
#define UDS_DID_BUF_SIZE_0x1D29   (2u)
#define UDS_DID_BUF_SIZE_0x1D2A   (4u)
#define UDS_DID_BUF_SIZE_0x1D2A_1   (4u)
#define UDS_DID_BUF_SIZE_0x1D2A_2   (4u)
#define UDS_DID_BUF_SIZE_0x1D2A_3   (4u)
#define UDS_DID_BUF_SIZE_0x1D2A_4   (4u)
#define UDS_DID_BUF_SIZE_0x1D2B   (1u)

#define UDS_DID_BUF_SIZE_0x1E00   (2u)
#define UDS_DID_BUF_SIZE_0x1E01   (1u)
#define UDS_DID_BUF_SIZE_0x1E02   (1u)
#define UDS_DID_BUF_SIZE_0x1E03   (16u)
#define UDS_DID_BUF_SIZE_0x1E04   (1u)
#define UDS_DID_BUF_SIZE_0x1E05   (2u)
#define UDS_DID_BUF_SIZE_0x1E06   (1u)
#define UDS_DID_BUF_SIZE_0x1E07   (2u)
#define UDS_DID_BUF_SIZE_0x1E08   (2u)
#define UDS_DID_BUF_SIZE_0x1E09   (2u)
#define UDS_DID_BUF_SIZE_0x1E0A   (2u)
#define UDS_DID_BUF_SIZE_0x1E0B   (4u)
#define UDS_DID_BUF_SIZE_0x1E0C   (4u)
#define UDS_DID_BUF_SIZE_0x1E0D   (4u)
#define UDS_DID_BUF_SIZE_0x1E0E   (4u)
#define UDS_DID_BUF_SIZE_0x1E0F   (4u)

#define UDS_DID_BUF_SIZE_0x2D02   (2u)
#define UDS_DID_BUF_SIZE_0x2D03   (2u)
#define UDS_DID_BUF_SIZE_0x2D04   (2u)
#define UDS_DID_BUF_SIZE_0x2D05   (1u)
#define UDS_DID_BUF_SIZE_0x2D06   (2u)
#define UDS_DID_BUF_SIZE_0x2D07   (1u)
#define UDS_DID_BUF_SIZE_0x2D08   (2u)
#define UDS_DID_BUF_SIZE_0x2D09   (1u)
#define UDS_DID_BUF_SIZE_0x2D0A   (1u)
#define UDS_DID_BUF_SIZE_0x2D0C   (2u)
#define UDS_DID_BUF_SIZE_0x2D0C_1   (2u)
#define UDS_DID_BUF_SIZE_0x2D0C_2   (2u)
#define UDS_DID_BUF_SIZE_0x2D0D   (2u)
#define UDS_DID_BUF_SIZE_0x2D0E   (2u)
#define UDS_DID_BUF_SIZE_0x2D11   (2u)
#define UDS_DID_BUF_SIZE_0x2D12   (2u)
#define UDS_DID_BUF_SIZE_0x2D13   (2u)
#define UDS_DID_BUF_SIZE_0x2D14   (2u)
#define UDS_DID_BUF_SIZE_0x2D15   (2u)
#define UDS_DID_BUF_SIZE_0x2D1C   (2u)
#define UDS_DID_BUF_SIZE_0x2D1D   (2u)
#define UDS_DID_BUF_SIZE_0x2D1E   (2u)
#define UDS_DID_BUF_SIZE_0x2D1F   (2u)
#define UDS_DID_BUF_SIZE_0x2D20   (2u)
#define UDS_DID_BUF_SIZE_0x2D21   (2u)
#define UDS_DID_BUF_SIZE_0x2D22   (2u)
#define UDS_DID_BUF_SIZE_0x2D23   (2u)
#define UDS_DID_BUF_SIZE_0x2D24   (2u)
#define UDS_DID_BUF_SIZE_0x2D25   (2u)
#define UDS_DID_BUF_SIZE_0x2D26   (2u)
#define UDS_DID_BUF_SIZE_0x2D27   (2u)
#define UDS_DID_BUF_SIZE_0x2D28   (2u)

#define UDS_DID_BUF_SIZE_0x2E02   (1u)
#define UDS_DID_BUF_SIZE_0x2E03   (16u)
#define UDS_DID_BUF_SIZE_0x2E04   (1u)
#define UDS_DID_BUF_SIZE_0x2E05   (2u)
#define UDS_DID_BUF_SIZE_0x2E06   (1u)
#define UDS_DID_BUF_SIZE_0x2E07   (2u)
#define UDS_DID_BUF_SIZE_0x2E08   (2u)
#define UDS_DID_BUF_SIZE_0x2E09   (2u)
#define UDS_DID_BUF_SIZE_0x2E0A   (2u)
#define UDS_DID_BUF_SIZE_0x2E0B   (4u)
#define UDS_DID_BUF_SIZE_0x2E0C   (4u)
#define UDS_DID_BUF_SIZE_0x2E0D   (4u)
#define UDS_DID_BUF_SIZE_0x2E0E   (4u)
#define UDS_DID_BUF_SIZE_0x2E0F   (4u)

#define UDS_DID_BUF_SIZE_0x3D02   (2u)
#define UDS_DID_BUF_SIZE_0x3D03   (2u)
#define UDS_DID_BUF_SIZE_0x3D04   (2u)
#define UDS_DID_BUF_SIZE_0x3D05   (1u)
#define UDS_DID_BUF_SIZE_0x3D06   (2u)
#define UDS_DID_BUF_SIZE_0x3D07   (1u)
#define UDS_DID_BUF_SIZE_0x3D08   (2u)
#define UDS_DID_BUF_SIZE_0x3D09   (1u)
#define UDS_DID_BUF_SIZE_0x3D0A   (1u)
#define UDS_DID_BUF_SIZE_0x3D0C   (2u)
#define UDS_DID_BUF_SIZE_0x3D0C_1   (2u)
#define UDS_DID_BUF_SIZE_0x3D0C_2   (2u)
#define UDS_DID_BUF_SIZE_0x3D0D   (2u)

#define UDS_DID_BUF_SIZE_0x3D0E   (2u)
#define UDS_DID_BUF_SIZE_0x3D11   (2u)
#define UDS_DID_BUF_SIZE_0x3D12   (2u)
#define UDS_DID_BUF_SIZE_0x3D13   (2u)
#define UDS_DID_BUF_SIZE_0x3D14   (2u)
#define UDS_DID_BUF_SIZE_0x3D15   (2u)
#define UDS_DID_BUF_SIZE_0x3D1C   (2u)
#define UDS_DID_BUF_SIZE_0x3D1D   (2u)
#define UDS_DID_BUF_SIZE_0x3D1E   (2u)
#define UDS_DID_BUF_SIZE_0x3D1F   (2u)
#define UDS_DID_BUF_SIZE_0x3D20   (2u)
#define UDS_DID_BUF_SIZE_0x3D21   (2u)
#define UDS_DID_BUF_SIZE_0x3D22   (2u)
#define UDS_DID_BUF_SIZE_0x3D23   (2u)
#define UDS_DID_BUF_SIZE_0x3D24   (2u)

#define UDS_DID_BUF_SIZE_0x3D25   (2u)
#define UDS_DID_BUF_SIZE_0x3D26   (2u)
#define UDS_DID_BUF_SIZE_0x3D27   (2u)
#define UDS_DID_BUF_SIZE_0x3D28   (2u)

#define UDS_DID_BUF_SIZE_0x3E02   (1u)
#define UDS_DID_BUF_SIZE_0x3E03   (16u)
#define UDS_DID_BUF_SIZE_0x3E04   (1u)
#define UDS_DID_BUF_SIZE_0x3E05   (2u)
#define UDS_DID_BUF_SIZE_0x3E06   (1u)
#define UDS_DID_BUF_SIZE_0x3E07   (2u)
#define UDS_DID_BUF_SIZE_0x3E08   (2u)
#define UDS_DID_BUF_SIZE_0x3E09   (2u)
#define UDS_DID_BUF_SIZE_0x3E0A   (2u)
#define UDS_DID_BUF_SIZE_0x3E0B   (4u)
#define UDS_DID_BUF_SIZE_0x3E0C   (4u)
#define UDS_DID_BUF_SIZE_0x3E0D   (4u)
#define UDS_DID_BUF_SIZE_0x3E0E   (4u)
#define UDS_DID_BUF_SIZE_0x3E0F   (4u)

#define UDS_DID_BUF_SIZE_0x4D00   (1u)
#define UDS_DID_BUF_SIZE_0x4D01   (1u)
#define UDS_DID_BUF_SIZE_0x4D02   (1u)
#define UDS_DID_BUF_SIZE_0x4D03   (1u)
#define UDS_DID_BUF_SIZE_0x4D04   (1u)
#define UDS_DID_BUF_SIZE_0x4D05   (1u)
#define UDS_DID_BUF_SIZE_0x4D06   (1u)
#define UDS_DID_BUF_SIZE_0x4D07   (1u)
#define UDS_DID_BUF_SIZE_0x4D08   (1u)
#define UDS_DID_BUF_SIZE_0x4D09   (1u)
#define UDS_DID_BUF_SIZE_0x4D0A   (1u)
#define UDS_DID_BUF_SIZE_0x4D0B   (1u)
#define UDS_DID_BUF_SIZE_0x4D0C   (1u)
#define UDS_DID_BUF_SIZE_0x4D0D   (1u)
#define UDS_DID_BUF_SIZE_0x4D0E   (1u)
#define UDS_DID_BUF_SIZE_0x4D0F   (1u)
#define UDS_DID_BUF_SIZE_0x4D10   (1u)
#define UDS_DID_BUF_SIZE_0x4D11   (1u)
#define UDS_DID_BUF_SIZE_0x4D12   (1u)
#define UDS_DID_BUF_SIZE_0x4D13   (1u)
#define UDS_DID_BUF_SIZE_0x4D14   (1u)
#define UDS_DID_BUF_SIZE_0x4D15   (1u)
#define UDS_DID_BUF_SIZE_0x4D16   (1u)
#define UDS_DID_BUF_SIZE_0x4D17   (1u)
#define UDS_DID_BUF_SIZE_0x4D18   (1u)
#define UDS_DID_BUF_SIZE_0x4D19   (1u)
#define UDS_DID_BUF_SIZE_0x4D1A   (1u)
#define UDS_DID_BUF_SIZE_0x4D1B   (1u)
#define UDS_DID_BUF_SIZE_0x4D1C   (1u)
#define UDS_DID_BUF_SIZE_0x4D1D   (1u)
#define UDS_DID_BUF_SIZE_0x4D1E   (1u)
#define UDS_DID_BUF_SIZE_0x4D1F   (1u)
#define UDS_DID_BUF_SIZE_0x4D20   (1u)
#define UDS_DID_BUF_SIZE_0x4D21   (1u)
#define UDS_DID_BUF_SIZE_0x4D22   (1u)
#define UDS_DID_BUF_SIZE_0x4D23   (1u)
#define UDS_DID_BUF_SIZE_0x4D24   (1u)
#define UDS_DID_BUF_SIZE_0x4D25   (1u)
#define UDS_DID_BUF_SIZE_0x4D26   (1u)
#define UDS_DID_BUF_SIZE_0x4D27   (2u)
#define UDS_DID_BUF_SIZE_0x4D28   (2u)
#define UDS_DID_BUF_SIZE_0x4D29   (2u)
#define UDS_DID_BUF_SIZE_0x4D2A   (2u)
#define UDS_DID_BUF_SIZE_0x4D2B   (2u)
#define UDS_DID_BUF_SIZE_0x4D2C   (2u)
#define UDS_DID_BUF_SIZE_0x4D2D   (2u)
#define UDS_DID_BUF_SIZE_0x4D2E   (2u)
#define UDS_DID_BUF_SIZE_0x4D2F   (2u)
#define UDS_DID_BUF_SIZE_0x4D30   (2u)
#define UDS_DID_BUF_SIZE_0x4D31   (2u)
#define UDS_DID_BUF_SIZE_0x4D32   (2u)
#define UDS_DID_BUF_SIZE_0x4D33   (1u)
#define UDS_DID_BUF_SIZE_0x4D34   (2u)
#define UDS_DID_BUF_SIZE_0x4D35   (1u)
#define UDS_DID_BUF_SIZE_0x4D36   (2u)
#define UDS_DID_BUF_SIZE_0x4D37   (1u)
#define UDS_DID_BUF_SIZE_0x4D38   (2u)
#define UDS_DID_BUF_SIZE_0x4D39   (1u)
#define UDS_DID_BUF_SIZE_0x4D3A   (2u)
#define UDS_DID_BUF_SIZE_0x4D3B   (1u)
#define UDS_DID_BUF_SIZE_0x4D3C   (2u)
#define UDS_DID_BUF_SIZE_0x4D3D   (1u)


#define UDS_DID_BUF_SIZE_0xDF20   (2u)
#define UDS_DID_BUF_SIZE_0xDF21   (2u)
#define UDS_DID_BUF_SIZE_0xDF23   (2u)
#define UDS_DID_BUF_SIZE_0xDF29   (1u)
#define UDS_DID_BUF_SIZE_0xDF2A   (1u)
#define UDS_DID_BUF_SIZE_0xDF2C   (1u)

#define UDS_DID_BUF_SIZE_0xDFEA   (64u)
#define UDS_DID_BUF_SIZE_0xDFEB   (64u)
#define UDS_DID_BUF_SIZE_0xDFEC   (64u)

#define UDS_DID_BUF_SIZE_0xF18A   (5u)
#define UDS_DID_BUF_SIZE_0xF197   (6u)
#define UDS_DID_BUF_SIZE_0xF187   (14u)
#define UDS_DID_BUF_SIZE_0xF188   (14u)
#define UDS_DID_BUF_SIZE_0xF191   (14u)
#define UDS_DID_BUF_SIZE_0xF193   (8u)
#define UDS_DID_BUF_SIZE_0xF189   (8u)
#define UDS_DID_BUF_SIZE_0xF190   (17u)
#define UDS_DID_BUF_SIZE_0xB303   (20u)
#define UDS_DID_BUF_SIZE_0xF18C   (8u)
#define UDS_DID_BUF_SIZE_0xF1E0   (48u)
#define UDS_DID_BUF_SIZE_0x0B20   (6u)
#define UDS_DID_BUF_SIZE_0x0B21   (2u)
#define UDS_DID_BUF_SIZE_0x0B22   (4u)
#define UDS_DID_BUF_SIZE_0x0B23   (4u)

/*******************************************************************************
 ****  This is FF's DID define by zoujiefeng 2026-9-10
 ******************************************************************************/
#define UDS_DID_BUF_SIZE_0xD000   (1u)
#define UDS_DID_BUF_SIZE_0xD001   (2u)
#define UDS_DID_BUF_SIZE_0xD002   (2u)
#define UDS_DID_BUF_SIZE_0xD003   (1u)
#define UDS_DID_BUF_SIZE_0xD004   (2u)
#define UDS_DID_BUF_SIZE_0xD005   (2u)
#define UDS_DID_BUF_SIZE_0xD007   (2u)
#define UDS_DID_BUF_SIZE_0xD008   (2u)
#define UDS_DID_BUF_SIZE_0xD009   (1u)
#define UDS_DID_BUF_SIZE_0xD010   (1u)
#define UDS_DID_BUF_SIZE_0xD011   (1u)
#define UDS_DID_BUF_SIZE_0xD012   (1u)
#define UDS_DID_BUF_SIZE_0xD013   (1u)
#define UDS_DID_BUF_SIZE_0xD014   (1u)
#define UDS_DID_BUF_SIZE_0xD015   (1u)
#define UDS_DID_BUF_SIZE_0xD016   (1u)
#define UDS_DID_BUF_SIZE_0xD017   (1u)
#define UDS_DID_BUF_SIZE_0xD018   (1u)
#define UDS_DID_BUF_SIZE_0xD019   (1u)
#define UDS_DID_BUF_SIZE_0xD020   (1u)
#define UDS_DID_BUF_SIZE_0xD021   (1u)
#define UDS_DID_BUF_SIZE_0xD022   (1u)
#define UDS_DID_BUF_SIZE_0xD023   (1u)
#define UDS_DID_BUF_SIZE_0xD024   (1u)
#define UDS_DID_BUF_SIZE_0xD025   (1u)
#define UDS_DID_BUF_SIZE_0xD026   (1u)
#define UDS_DID_BUF_SIZE_0xD027   (1u)
#define UDS_DID_BUF_SIZE_0xD028   (1u)
#define UDS_DID_BUF_SIZE_0xD029   (1u)

#define UDS_DID_BUF_SIZE_0xD030   (1u)
#define UDS_DID_BUF_SIZE_0xD031   (1u)
#define UDS_DID_BUF_SIZE_0xD032   (1u)
#define UDS_DID_BUF_SIZE_0xD033   (1u)
#define UDS_DID_BUF_SIZE_0xD034   (2u)
#define UDS_DID_BUF_SIZE_0xD035   (2u)
#define UDS_DID_BUF_SIZE_0xD036   (1u)
#define UDS_DID_BUF_SIZE_0xD037   (1u)
#define UDS_DID_BUF_SIZE_0xD038   (1u)
#define UDS_DID_BUF_SIZE_0xD039   (1u)
#define UDS_DID_BUF_SIZE_0xD040   (2u)
#define UDS_DID_BUF_SIZE_0xD041   (1u)
#define UDS_DID_BUF_SIZE_0xD042   (1u)
#define UDS_DID_BUF_SIZE_0xD043   (1u)
#define UDS_DID_BUF_SIZE_0xD044   (1u)
#define UDS_DID_BUF_SIZE_0xD045   (1u)
#define UDS_DID_BUF_SIZE_0xD046   (1u)
#define UDS_DID_BUF_SIZE_0xD047   (2u)
#define UDS_DID_BUF_SIZE_0xD048   (2u)
#define UDS_DID_BUF_SIZE_0xD049   (2u)
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef union UDS_WrDidTable_t{
   uint8 au8Buf[128];
   struct tBuf{
		uint8 au8DidBuf_0xF18A[UDS_DID_BUF_SIZE_0xF18A];
		uint8 au8DidBuf_0xF197[UDS_DID_BUF_SIZE_0xF197];
		uint8 au8DidBuf_0xF187[UDS_DID_BUF_SIZE_0xF187];
		uint8 au8DidBuf_0xF188[UDS_DID_BUF_SIZE_0xF188];
		uint8 au8DidBuf_0xF191[UDS_DID_BUF_SIZE_0xF191];
		uint8 au8DidBuf_0xF193[UDS_DID_BUF_SIZE_0xF193];
		uint8 au8DidBuf_0xF189[UDS_DID_BUF_SIZE_0xF189];
		uint8 au8DidBuf_0xF190[UDS_DID_BUF_SIZE_0xF190];
		uint8 au8DidBuf_0xB303[UDS_DID_BUF_SIZE_0xB303];
		uint8 au8DidBuf_0xF18C[UDS_DID_BUF_SIZE_0xF18C];

   }tBuf;
}UDS_WrDidTable_t;

/*******************************************************************************
 ****  Global Constant Declarations
 ******************************************************************************/
/******************************************************************************/
/**************************  Private Read only DID  ***************************/
/******************************************************************************/
extern const uint8  UDS_au8DidBuf_0x0B0C[UDS_DID_BUF_SIZE_0x0B0C];
extern const uint8  UDS_au8DidBuf_0x0E00[UDS_DID_BUF_SIZE_0x0E00];
extern const uint8  UDS_au8DidBuf_0x0E01[UDS_DID_BUF_SIZE_0x0E01];
extern const uint8  UDS_au8DidBuf_0x0E02[UDS_DID_BUF_SIZE_0x0E02];
extern const uint8  UDS_au8DidBuf_0x0E03[UDS_DID_BUF_SIZE_0x0E03];
extern const uint8  UDS_au8DidBuf_0x0E04[UDS_DID_BUF_SIZE_0x0E04];
extern const uint8  UDS_au8DidBuf_0x0E05[UDS_DID_BUF_SIZE_0x0E05];
extern const uint8  UDS_au8DidBuf_0x0E06[UDS_DID_BUF_SIZE_0x0E06];
extern const uint8  UDS_au8DidBuf_0x0E07[UDS_DID_BUF_SIZE_0x0E07];
extern const uint8  UDS_au8DidBuf_0x0E08[UDS_DID_BUF_SIZE_0x0E08];
extern const uint8  UDS_au8DidBuf_0x0E09[UDS_DID_BUF_SIZE_0x0E09];
extern const uint8  UDS_au8DidBuf_0x0E0A[UDS_DID_BUF_SIZE_0x0E0A];
extern const uint8  UDS_au8DidBuf_0x0E0B[UDS_DID_BUF_SIZE_0x0E0B];
extern const uint8  UDS_au8DidBuf_0x0E0C[UDS_DID_BUF_SIZE_0x0E0C];
extern const uint8  UDS_au8DidBuf_0x0E0D[UDS_DID_BUF_SIZE_0x0E0D];
extern const uint8  UDS_au8DidBuf_0x0E0E[UDS_DID_BUF_SIZE_0x0E0E];
extern const uint8  UDS_au8DidBuf_0x0E0F[UDS_DID_BUF_SIZE_0x0E0F];
extern const uint8  UDS_au8DidBuf_0x1E00[UDS_DID_BUF_SIZE_0x1E00];
extern const uint8  UDS_au8DidBuf_0x1E01[UDS_DID_BUF_SIZE_0x1E01];
extern const uint8  UDS_au8DidBuf_0x1E02[UDS_DID_BUF_SIZE_0x1E02];
extern const uint8  UDS_au8DidBuf_0x1E03[UDS_DID_BUF_SIZE_0x1E03];
extern const uint8  UDS_au8DidBuf_0x1E04[UDS_DID_BUF_SIZE_0x1E04];
extern const uint8  UDS_au8DidBuf_0x1E05[UDS_DID_BUF_SIZE_0x1E05];
extern const uint8  UDS_au8DidBuf_0x1E06[UDS_DID_BUF_SIZE_0x1E06];
extern const uint8  UDS_au8DidBuf_0x1E07[UDS_DID_BUF_SIZE_0x1E07];
extern const uint8  UDS_au8DidBuf_0x1E08[UDS_DID_BUF_SIZE_0x1E08];
extern const uint8  UDS_au8DidBuf_0x1E09[UDS_DID_BUF_SIZE_0x1E09];
extern const uint8  UDS_au8DidBuf_0x1E0A[UDS_DID_BUF_SIZE_0x1E0A];
extern const uint8  UDS_au8DidBuf_0x1E0B[UDS_DID_BUF_SIZE_0x1E0B];
extern const uint8  UDS_au8DidBuf_0x1E0C[UDS_DID_BUF_SIZE_0x1E0C];
extern const uint8  UDS_au8DidBuf_0x1E0D[UDS_DID_BUF_SIZE_0x1E0D];
extern const uint8  UDS_au8DidBuf_0x1E0E[UDS_DID_BUF_SIZE_0x1E0E];
extern const uint8  UDS_au8DidBuf_0x1E0F[UDS_DID_BUF_SIZE_0x1E0F];
extern const uint8  UDS_au8DidBuf_0x2E02[UDS_DID_BUF_SIZE_0x2E02];
extern const uint8  UDS_au8DidBuf_0x2E03[UDS_DID_BUF_SIZE_0x2E03];
extern const uint8  UDS_au8DidBuf_0x2E04[UDS_DID_BUF_SIZE_0x2E04];
extern const uint8  UDS_au8DidBuf_0x2E05[UDS_DID_BUF_SIZE_0x2E05];
extern const uint8  UDS_au8DidBuf_0x2E06[UDS_DID_BUF_SIZE_0x2E06];
extern const uint8  UDS_au8DidBuf_0x2E07[UDS_DID_BUF_SIZE_0x2E07];
extern const uint8  UDS_au8DidBuf_0x2E08[UDS_DID_BUF_SIZE_0x2E08];
extern const uint8  UDS_au8DidBuf_0x2E09[UDS_DID_BUF_SIZE_0x2E09];
extern const uint8  UDS_au8DidBuf_0x2E0A[UDS_DID_BUF_SIZE_0x2E0A];
extern const uint8  UDS_au8DidBuf_0x2E0B[UDS_DID_BUF_SIZE_0x2E0B];
extern const uint8  UDS_au8DidBuf_0x2E0C[UDS_DID_BUF_SIZE_0x2E0C];
extern const uint8  UDS_au8DidBuf_0x2E0D[UDS_DID_BUF_SIZE_0x2E0D];
extern const uint8  UDS_au8DidBuf_0x2E0E[UDS_DID_BUF_SIZE_0x2E0E];
extern const uint8  UDS_au8DidBuf_0x2E0F[UDS_DID_BUF_SIZE_0x2E0F];
extern const uint8  UDS_au8DidBuf_0x3E02[UDS_DID_BUF_SIZE_0x3E02];
extern const uint8  UDS_au8DidBuf_0x3E03[UDS_DID_BUF_SIZE_0x3E03];
extern const uint8  UDS_au8DidBuf_0x3E04[UDS_DID_BUF_SIZE_0x3E04];
extern const uint8  UDS_au8DidBuf_0x3E05[UDS_DID_BUF_SIZE_0x3E05];
extern const uint8  UDS_au8DidBuf_0x3E06[UDS_DID_BUF_SIZE_0x3E06];
extern const uint8  UDS_au8DidBuf_0x3E07[UDS_DID_BUF_SIZE_0x3E07];
extern const uint8  UDS_au8DidBuf_0x3E08[UDS_DID_BUF_SIZE_0x3E08];
extern const uint8  UDS_au8DidBuf_0x3E09[UDS_DID_BUF_SIZE_0x3E09];
extern const uint8  UDS_au8DidBuf_0x3E0A[UDS_DID_BUF_SIZE_0x3E0A];
extern const uint8  UDS_au8DidBuf_0x3E0B[UDS_DID_BUF_SIZE_0x3E0B];
extern const uint8  UDS_au8DidBuf_0x3E0C[UDS_DID_BUF_SIZE_0x3E0C];
extern const uint8  UDS_au8DidBuf_0x3E0D[UDS_DID_BUF_SIZE_0x3E0D];
extern const uint8  UDS_au8DidBuf_0x3E0E[UDS_DID_BUF_SIZE_0x3E0E];
extern const uint8  UDS_au8DidBuf_0x3E0F[UDS_DID_BUF_SIZE_0x3E0F];

/******************************************************************************/
/***********************  Writeable DID Default Value  ************************/
/******************************************************************************/
extern const UDS_WrDidTable_t UDS_au8WrDidTableNvM_Rom;

/*******************************************************************************
 ****  Global Variable Declarations
 ******************************************************************************/

/******************************************************************************/
/***************************  Export Read only DID  ***************************/
/******************************************************************************/
extern uint8  UDS_au8DidBuf_0x0B01[UDS_DID_BUF_SIZE_0x0B01];
extern uint8  UDS_au8DidBuf_0x0B02[UDS_DID_BUF_SIZE_0x0B02];
extern uint8  UDS_au8DidBuf_0x0B03[UDS_DID_BUF_SIZE_0x0B03];
extern uint8  UDS_au8DidBuf_0x0B08[UDS_DID_BUF_SIZE_0x0B08];
extern uint8  UDS_au8DidBuf_0x0B0B[UDS_DID_BUF_SIZE_0x0B0B];
extern uint8  UDS_au8DidBuf_0x0D00[UDS_DID_BUF_SIZE_0x0D00];
extern uint8  UDS_au8DidBuf_0x0D10[UDS_DID_BUF_SIZE_0x0D10];
extern uint8  UDS_au8DidBuf_0x0D11[UDS_DID_BUF_SIZE_0x0D11];
extern uint8  UDS_au8DidBuf_0x0D12[UDS_DID_BUF_SIZE_0x0D12];
extern uint8  UDS_au8DidBuf_0x0D2B[UDS_DID_BUF_SIZE_0x0D2B];
extern uint8  UDS_au8DidBuf_0x1D00[UDS_DID_BUF_SIZE_0x1D00];
extern uint8  UDS_au8DidBuf_0x1D10[UDS_DID_BUF_SIZE_0x1D10];
extern uint8  UDS_au8DidBuf_0x1D11[UDS_DID_BUF_SIZE_0x1D11];
extern uint8  UDS_au8DidBuf_0x1D12[UDS_DID_BUF_SIZE_0x1D12];
extern uint8  UDS_au8DidBuf_0x1D2B[UDS_DID_BUF_SIZE_0x1D2B];
extern uint8  UDS_au8DidBuf_0x2D09[UDS_DID_BUF_SIZE_0x2D09];
extern uint8  UDS_au8DidBuf_0x2D0A[UDS_DID_BUF_SIZE_0x2D0A];
extern uint8  UDS_au8DidBuf_0x2D0C[UDS_DID_BUF_SIZE_0x2D0C];
extern uint8  UDS_au8DidBuf_0x2D0C_1[UDS_DID_BUF_SIZE_0x2D0C_1];
extern uint8  UDS_au8DidBuf_0x2D0C_2[UDS_DID_BUF_SIZE_0x2D0C_2];
extern uint8  UDS_au8DidBuf_0x2D0D[UDS_DID_BUF_SIZE_0x2D0D];
extern uint8  UDS_au8DidBuf_0x2D11[UDS_DID_BUF_SIZE_0x2D11];
extern uint8  UDS_au8DidBuf_0x2D12[UDS_DID_BUF_SIZE_0x2D12];
extern uint8  UDS_au8DidBuf_0x2D23[UDS_DID_BUF_SIZE_0x2D23];
extern uint8  UDS_au8DidBuf_0x2D24[UDS_DID_BUF_SIZE_0x2D24];
extern uint8  UDS_au8DidBuf_0x2D27[UDS_DID_BUF_SIZE_0x2D27];
extern uint8  UDS_au8DidBuf_0x2D28[UDS_DID_BUF_SIZE_0x2D28];
extern uint8  UDS_au8DidBuf_0x3D09[UDS_DID_BUF_SIZE_0x3D09];
extern uint8  UDS_au8DidBuf_0x3D0A[UDS_DID_BUF_SIZE_0x3D0A];
extern uint8  UDS_au8DidBuf_0x3D0C[UDS_DID_BUF_SIZE_0x3D0C];
extern uint8  UDS_au8DidBuf_0x3D0C_1[UDS_DID_BUF_SIZE_0x3D0C_1];
extern uint8  UDS_au8DidBuf_0x3D0C_2[UDS_DID_BUF_SIZE_0x3D0C_2];
extern uint8  UDS_au8DidBuf_0x3D0D[UDS_DID_BUF_SIZE_0x3D0D];
extern uint8  UDS_au8DidBuf_0x3D11[UDS_DID_BUF_SIZE_0x3D11];
extern uint8  UDS_au8DidBuf_0x3D12[UDS_DID_BUF_SIZE_0x3D12];
extern uint8  UDS_au8DidBuf_0x3D23[UDS_DID_BUF_SIZE_0x3D23];
extern uint8  UDS_au8DidBuf_0x3D24[UDS_DID_BUF_SIZE_0x3D24];
extern uint8  UDS_au8DidBuf_0x3D27[UDS_DID_BUF_SIZE_0x3D27];
extern uint8  UDS_au8DidBuf_0x3D28[UDS_DID_BUF_SIZE_0x3D28];
extern uint8  UDS_au8DidBuf_0x4D00[UDS_DID_BUF_SIZE_0x4D00];
extern uint8  UDS_au8DidBuf_0x4D01[UDS_DID_BUF_SIZE_0x4D01];
extern uint8  UDS_au8DidBuf_0x4D02[UDS_DID_BUF_SIZE_0x4D02];
extern uint8  UDS_au8DidBuf_0x4D03[UDS_DID_BUF_SIZE_0x4D03];
extern uint8  UDS_au8DidBuf_0x4D04[UDS_DID_BUF_SIZE_0x4D04];
extern uint8  UDS_au8DidBuf_0x4D05[UDS_DID_BUF_SIZE_0x4D05];
extern uint8  UDS_au8DidBuf_0x4D06[UDS_DID_BUF_SIZE_0x4D06];
extern uint8  UDS_au8DidBuf_0x4D07[UDS_DID_BUF_SIZE_0x4D07];
extern uint8  UDS_au8DidBuf_0x4D08[UDS_DID_BUF_SIZE_0x4D08];
extern uint8  UDS_au8DidBuf_0x4D09[UDS_DID_BUF_SIZE_0x4D09];
extern uint8  UDS_au8DidBuf_0x4D0A[UDS_DID_BUF_SIZE_0x4D0A];
extern uint8  UDS_au8DidBuf_0x4D0B[UDS_DID_BUF_SIZE_0x4D0B];
extern uint8  UDS_au8DidBuf_0x4D0C[UDS_DID_BUF_SIZE_0x4D0C];
extern uint8  UDS_au8DidBuf_0x4D0D[UDS_DID_BUF_SIZE_0x4D0D];
extern uint8  UDS_au8DidBuf_0x4D0E[UDS_DID_BUF_SIZE_0x4D0E];
extern uint8  UDS_au8DidBuf_0x4D0F[UDS_DID_BUF_SIZE_0x4D0F];
extern uint8  UDS_au8DidBuf_0x4D10[UDS_DID_BUF_SIZE_0x4D10];
extern uint8  UDS_au8DidBuf_0x4D11[UDS_DID_BUF_SIZE_0x4D11];
extern uint8  UDS_au8DidBuf_0x4D12[UDS_DID_BUF_SIZE_0x4D12];
extern uint8  UDS_au8DidBuf_0x4D13[UDS_DID_BUF_SIZE_0x4D13];
extern uint8  UDS_au8DidBuf_0x4D14[UDS_DID_BUF_SIZE_0x4D14];
extern uint8  UDS_au8DidBuf_0x4D15[UDS_DID_BUF_SIZE_0x4D15];
extern uint8  UDS_au8DidBuf_0x4D16[UDS_DID_BUF_SIZE_0x4D16];
extern uint8  UDS_au8DidBuf_0x4D17[UDS_DID_BUF_SIZE_0x4D17];
extern uint8  UDS_au8DidBuf_0x4D18[UDS_DID_BUF_SIZE_0x4D18];
extern uint8  UDS_au8DidBuf_0x4D19[UDS_DID_BUF_SIZE_0x4D19];
extern uint8  UDS_au8DidBuf_0x4D1A[UDS_DID_BUF_SIZE_0x4D1A];
extern uint8  UDS_au8DidBuf_0x4D1B[UDS_DID_BUF_SIZE_0x4D1B];
extern uint8  UDS_au8DidBuf_0x4D1C[UDS_DID_BUF_SIZE_0x4D1C];
extern uint8  UDS_au8DidBuf_0x4D1D[UDS_DID_BUF_SIZE_0x4D1D];
extern uint8  UDS_au8DidBuf_0x4D1E[UDS_DID_BUF_SIZE_0x4D1E];
extern uint8  UDS_au8DidBuf_0x4D1F[UDS_DID_BUF_SIZE_0x4D1F];
extern uint8  UDS_au8DidBuf_0x4D20[UDS_DID_BUF_SIZE_0x4D20];
extern uint8  UDS_au8DidBuf_0x4D21[UDS_DID_BUF_SIZE_0x4D21];
extern uint8  UDS_au8DidBuf_0x4D22[UDS_DID_BUF_SIZE_0x4D22];
extern uint8  UDS_au8DidBuf_0x4D23[UDS_DID_BUF_SIZE_0x4D23];
extern uint8  UDS_au8DidBuf_0x4D24[UDS_DID_BUF_SIZE_0x4D24];
extern uint8  UDS_au8DidBuf_0x4D25[UDS_DID_BUF_SIZE_0x4D25];
extern uint8  UDS_au8DidBuf_0x4D26[UDS_DID_BUF_SIZE_0x4D26];

extern uint8  UDS_au8DidBuf_0xF18A[UDS_DID_BUF_SIZE_0xF18A];
extern uint8  UDS_au8DidBuf_0xF197[UDS_DID_BUF_SIZE_0xF197];
extern uint8  UDS_au8DidBuf_0xF187[UDS_DID_BUF_SIZE_0xF187];
extern uint8  UDS_au8DidBuf_0xF188[UDS_DID_BUF_SIZE_0xF188];
extern uint8  UDS_au8DidBuf_0xF191[UDS_DID_BUF_SIZE_0xF191];
extern uint8  UDS_au8DidBuf_0xF193[UDS_DID_BUF_SIZE_0xF193];
extern uint8  UDS_au8DidBuf_0xF189[UDS_DID_BUF_SIZE_0xF189];
extern uint8  UDS_au8DidBuf_0xF190[UDS_DID_BUF_SIZE_0xF190];
extern uint8  UDS_au8DidBuf_0xB303[UDS_DID_BUF_SIZE_0xB303];
extern uint8  UDS_au8DidBuf_0xF18C[UDS_DID_BUF_SIZE_0xF18C];

/* extern uint8  UDS_au8DidBuf_0xF187[UDS_DID_BUF_SIZE_0xF187];
extern uint8  UDS_au8DidBuf_0xF18A[UDS_DID_BUF_SIZE_0xF18A];
extern uint8  UDS_au8DidBuf_0xF18B[UDS_DID_BUF_SIZE_0xF18B];
extern uint8  UDS_au8DidBuf_0xF193[UDS_DID_BUF_SIZE_0xF193];
extern uint8  UDS_au8DidBuf_0xF195[UDS_DID_BUF_SIZE_0xF195];
extern uint8  UDS_au8DidBuf_0xF19A[UDS_DID_BUF_SIZE_0xF19A]; */
extern uint8  UDS_au8DidBuf_0xF1E0[UDS_DID_BUF_SIZE_0xF1E0] ;
extern uint8  UDS_au8DidBuf_0x0B20[UDS_DID_BUF_SIZE_0x0B20] ;
extern uint8  UDS_au8DidBuf_0x0B21[UDS_DID_BUF_SIZE_0x0B21] ;
extern uint8  UDS_au8DidBuf_0x0B22[UDS_DID_BUF_SIZE_0x0B22] ;
extern uint8  UDS_au8DidBuf_0x0B23[UDS_DID_BUF_SIZE_0x0B23] ;


/*******************************************************************************
 ****  This is FF's DID define by zoujiefeng 2026-9-10
 ******************************************************************************/
extern uint8  UDS_au8DidBuf_0xD000[UDS_DID_BUF_SIZE_0xD000];
extern uint8  UDS_au8DidBuf_0xD001[UDS_DID_BUF_SIZE_0xD001];
extern uint8  UDS_au8DidBuf_0xD002[UDS_DID_BUF_SIZE_0xD002];
extern uint8  UDS_au8DidBuf_0xD003[UDS_DID_BUF_SIZE_0xD003];
extern uint8  UDS_au8DidBuf_0xD004[UDS_DID_BUF_SIZE_0xD004];
extern uint8  UDS_au8DidBuf_0xD005[UDS_DID_BUF_SIZE_0xD005];
extern uint8  UDS_au8DidBuf_0xD007[UDS_DID_BUF_SIZE_0xD007];
extern uint8  UDS_au8DidBuf_0xD008[UDS_DID_BUF_SIZE_0xD008];
extern uint8  UDS_au8DidBuf_0xD009[UDS_DID_BUF_SIZE_0xD009];
extern uint8  UDS_au8DidBuf_0xD010[UDS_DID_BUF_SIZE_0xD010];
extern uint8  UDS_au8DidBuf_0xD011[UDS_DID_BUF_SIZE_0xD011];
extern uint8  UDS_au8DidBuf_0xD012[UDS_DID_BUF_SIZE_0xD012];
extern uint8  UDS_au8DidBuf_0xD013[UDS_DID_BUF_SIZE_0xD013];
extern uint8  UDS_au8DidBuf_0xD014[UDS_DID_BUF_SIZE_0xD014];
extern uint8  UDS_au8DidBuf_0xD015[UDS_DID_BUF_SIZE_0xD015];
extern uint8  UDS_au8DidBuf_0xD016[UDS_DID_BUF_SIZE_0xD016];
extern uint8  UDS_au8DidBuf_0xD017[UDS_DID_BUF_SIZE_0xD017];
extern uint8  UDS_au8DidBuf_0xD018[UDS_DID_BUF_SIZE_0xD018];
extern uint8  UDS_au8DidBuf_0xD019[UDS_DID_BUF_SIZE_0xD019];
extern uint8  UDS_au8DidBuf_0xD020[UDS_DID_BUF_SIZE_0xD020];
extern uint8  UDS_au8DidBuf_0xD021[UDS_DID_BUF_SIZE_0xD021];
extern uint8  UDS_au8DidBuf_0xD022[UDS_DID_BUF_SIZE_0xD022];
extern uint8  UDS_au8DidBuf_0xD023[UDS_DID_BUF_SIZE_0xD023];
extern uint8  UDS_au8DidBuf_0xD024[UDS_DID_BUF_SIZE_0xD024];
extern uint8  UDS_au8DidBuf_0xD025[UDS_DID_BUF_SIZE_0xD025];
extern uint8  UDS_au8DidBuf_0xD026[UDS_DID_BUF_SIZE_0xD026];
extern uint8  UDS_au8DidBuf_0xD027[UDS_DID_BUF_SIZE_0xD027];
extern uint8  UDS_au8DidBuf_0xD028[UDS_DID_BUF_SIZE_0xD028];
extern uint8  UDS_au8DidBuf_0xD029[UDS_DID_BUF_SIZE_0xD029];
extern uint8  UDS_au8DidBuf_0xD030[UDS_DID_BUF_SIZE_0xD030];
extern uint8  UDS_au8DidBuf_0xD031[UDS_DID_BUF_SIZE_0xD031];
extern uint8  UDS_au8DidBuf_0xD032[UDS_DID_BUF_SIZE_0xD032];
extern uint8  UDS_au8DidBuf_0xD033[UDS_DID_BUF_SIZE_0xD033];
extern uint8  UDS_au8DidBuf_0xD034[UDS_DID_BUF_SIZE_0xD034];
extern uint8  UDS_au8DidBuf_0xD035[UDS_DID_BUF_SIZE_0xD035];
extern uint8  UDS_au8DidBuf_0xD036[UDS_DID_BUF_SIZE_0xD036];
extern uint8  UDS_au8DidBuf_0xD037[UDS_DID_BUF_SIZE_0xD037];
extern uint8  UDS_au8DidBuf_0xD038[UDS_DID_BUF_SIZE_0xD038];
extern uint8  UDS_au8DidBuf_0xD039[UDS_DID_BUF_SIZE_0xD039];
extern uint8  UDS_au8DidBuf_0xD040[UDS_DID_BUF_SIZE_0xD040];
extern uint8  UDS_au8DidBuf_0xD041[UDS_DID_BUF_SIZE_0xD041];
extern uint8  UDS_au8DidBuf_0xD042[UDS_DID_BUF_SIZE_0xD042];
extern uint8  UDS_au8DidBuf_0xD043[UDS_DID_BUF_SIZE_0xD043];
extern uint8  UDS_au8DidBuf_0xD044[UDS_DID_BUF_SIZE_0xD044];
extern uint8  UDS_au8DidBuf_0xD045[UDS_DID_BUF_SIZE_0xD045];
extern uint8  UDS_au8DidBuf_0xD046[UDS_DID_BUF_SIZE_0xD046];
extern uint8  UDS_au8DidBuf_0xD047[UDS_DID_BUF_SIZE_0xD047];
extern uint8  UDS_au8DidBuf_0xD048[UDS_DID_BUF_SIZE_0xD048];
extern uint8  UDS_au8DidBuf_0xD049[UDS_DID_BUF_SIZE_0xD049];

/******************************************************************************/
/**************************  Writeable DID RAM Block  *************************/
/******************************************************************************/
extern UDS_WrDidTable_t UDS_au8WrDidTableNvM_Ram;

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

#endif /* __UDS_DID_DATA_DEF_H_ */
/*-------------------------------- end of file -------------------------------*/
