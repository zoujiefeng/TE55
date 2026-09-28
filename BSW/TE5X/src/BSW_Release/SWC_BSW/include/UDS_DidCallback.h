#ifndef __UDS_DID_CALLBACK_H_
#define __UDS_DID_CALLBACK_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
/* AUTOSAR Header Files */
/* User Code Block Start */

/* User Code Block End */

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "UDS_DidTypes.h"

/* User Header Files */
/* User Code Block Start */
/* User Code Block End */

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
/* Read Callback Function */
extern void UDS_vidCallbackPreRead_F10A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F10A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F187(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F187(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F18A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F18A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F18B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F18B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F18C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F18C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F190(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F190(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F1B7(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F1B7(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F19A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F19A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);

extern void UDS_vidCallbackPreRead_0x0B01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D10(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_3(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_4(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D10(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_3(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_4(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0C_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0C_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D23(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D24(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D27(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D28(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0C_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0C_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D23(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D24(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D27(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D28(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D10(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D13(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D14(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D15(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D16(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D17(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D18(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D19(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D20(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D21(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D22(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D23(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D24(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D25(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D26(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);


/* Write Callback Function */
extern void UDS_vidCallbackPreWrite_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreWrite_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);

#endif /* __UDS_DID_CALLBACK_H_ */
/*-------------------------------- end of file -------------------------------*/
