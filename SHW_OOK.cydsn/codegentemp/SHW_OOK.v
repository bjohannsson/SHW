// ======================================================================
// SHW_OOK.v generated from TopDesign.cysch
// 11/05/2017 at 01:11
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_PSOC5LP 2
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PSOC5TM 3
`define CYDEV_CHIP_REV_PSOC5TM_PRODUCTION 1
`define CYDEV_CHIP_REV_PSOC5TM_ES1 1
`define CYDEV_CHIP_REV_PSOC5TM_ES0 0
`define CYDEV_CHIP_DIE_TMA4 4
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 5
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC6ABLE2 6
`define CYDEV_CHIP_REV_PSOC6ABLE2_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC6ABLE2_NO_UDB 0
`define CYDEV_CHIP_DIE_VOLANS 7
`define CYDEV_CHIP_REV_VOLANS_PRODUCTION 0
`define CYDEV_CHIP_DIE_BERRYPECKER 8
`define CYDEV_CHIP_REV_BERRYPECKER_PRODUCTION 0
`define CYDEV_CHIP_DIE_CRANE 9
`define CYDEV_CHIP_REV_CRANE_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM3 10
`define CYDEV_CHIP_REV_FM3_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM4 11
`define CYDEV_CHIP_REV_FM4_PRODUCTION 0
`define CYDEV_CHIP_DIE_EXPECT 2
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 2
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 7
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 8
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 9
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 10
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 11
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 12
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 13
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 14
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 15
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 16
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 17
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 18
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 19
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 20
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 21
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 22
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 0
`define CYDEV_CHIP_REVISION_6A_NO_UDB 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 23
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 24
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 25
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 26
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 27
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 2
`define CYDEV_CHIP_REVISION_USED 0
// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// Component: FreqDiv_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\FreqDiv_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\FreqDiv_v1_0\FreqDiv_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\FreqDiv_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\FreqDiv_v1_0\FreqDiv_v1_0.v"
`endif

// Component: EdgeDetect_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0\EdgeDetect_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0\EdgeDetect_v1_0.v"
`endif

// EdgeRising(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=EdgeRising, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=EdgeRising_8, CY_INSTANCE_SHORT_NAME=EdgeRising_8, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=EdgeRising_8, )
module EdgeRising_0 (
    d,
    clk,
    det);
    input       d;
    input       clk;
    output      det;



    EdgeDetect_v1_0 EdgeDetect_1 (
        .d(d),
        .det(det),
        .clock(clk));
    defparam EdgeDetect_1.EdgeType = 0;



endmodule

// EdgeRising(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=EdgeRising, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=EdgeRising_4, CY_INSTANCE_SHORT_NAME=EdgeRising_4, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=EdgeRising_4, )
module EdgeRising_1 (
    d,
    clk,
    det);
    input       d;
    input       clk;
    output      det;



    EdgeDetect_v1_0 EdgeDetect_1 (
        .d(d),
        .det(det),
        .clock(clk));
    defparam EdgeDetect_1.EdgeType = 0;



endmodule

// Component: cy_srff_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_srff_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_srff_v1_0\cy_srff_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_srff_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_srff_v1_0\cy_srff_v1_0.v"
`endif

// Component: and_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`endif

// Component: BasicCounter_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0\BasicCounter_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0\BasicCounter_v1_0.v"
`endif

// Component: DigitalComp_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0\DigitalComp_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0\DigitalComp_v1_0.v"
`endif

// PerCounter(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_PAY_SIZE, CY_INSTANCE_SHORT_NAME=CNT_PAY_SIZE, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_PAY_SIZE, )
module PerCounter_2 (
    en,
    reset,
    clk,
    cmp_val,
    cnt,
    cmp);
    input       en;
    input       reset;
    input       clk;
    input      [3:0] cmp_val;
    output     [3:0] cnt;
    output      cmp;



    BasicCounter_v1_0 BasicCounter_1 (
        .en(en),
        .cnt(cnt[3:0]),
        .reset(reset),
        .clock(clk));
    defparam BasicCounter_1.Width = 4;

    assign cmp = (cnt[3:0] == cmp_val[3:0]);



endmodule

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// Component: not_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`endif

// PerCounter3bit(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter3bit, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_PAY_BYTE, CY_INSTANCE_SHORT_NAME=CNT_PAY_BYTE, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_PAY_BYTE, )
module PerCounter3bit_3 (
    en,
    reset,
    clk,
    cmp_val,
    cnt,
    cmp);
    input       en;
    input       reset;
    input       clk;
    input      [2:0] cmp_val;
    output     [2:0] cnt;
    output      cmp;



    BasicCounter_v1_0 BasicCounter_1 (
        .en(en),
        .cnt(cnt[2:0]),
        .reset(reset),
        .clock(clk));
    defparam BasicCounter_1.Width = 3;

    assign cmp = (cnt[2:0] == cmp_val[2:0]);



endmodule

// Component: B_PWM_v3_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=true, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=0, CompareValue2=63, CONTROL3=0, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=1, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=119, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=true, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=true, TriggerMode=1, UDB16=false, UDB8=true, UseControl=false, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_LED_1, CY_INSTANCE_SHORT_NAME=PWM_LED_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=PWM_LED_1, )
module PWM_v3_30_4 (
    reset,
    clock,
    tc,
    pwm1,
    pwm2,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    input       reset;
    input       clock;
    output      tc;
    output      pwm1;
    output      pwm2;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 8;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    B_PWM_v3_30 PWMUDB (
        .reset(reset),
        .clock(clock),
        .tc(Net_101),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .interrupt(Net_55),
        .kill(kill),
        .capture(capture),
        .enable(enable),
        .cmp_sel(cmp_sel),
        .trigger(trigger),
        .pwm(Net_96),
        .ph1(ph1),
        .ph2(ph2));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 1;
    defparam PWMUDB.CompareType2 = 1;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 1;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 0;
    defparam PWMUDB.Resolution = 8;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 1;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// EdgeRising(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=EdgeRising, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=EdgeRising_3, CY_INSTANCE_SHORT_NAME=EdgeRising_3, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=EdgeRising_3, )
module EdgeRising_5 (
    d,
    clk,
    det);
    input       d;
    input       clk;
    output      det;



    EdgeDetect_v1_0 EdgeDetect_1 (
        .d(d),
        .det(det),
        .clock(clk));
    defparam EdgeDetect_1.EdgeType = 0;



endmodule

// EdgeRising(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=EdgeRising, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=EdgeRising_2, CY_INSTANCE_SHORT_NAME=EdgeRising_2, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=EdgeRising_2, )
module EdgeRising_6 (
    d,
    clk,
    det);
    input       d;
    input       clk;
    output      det;



    EdgeDetect_v1_0 EdgeDetect_1 (
        .d(d),
        .det(det),
        .clock(clk));
    defparam EdgeDetect_1.EdgeType = 0;



endmodule

// Component: B_UART_v2_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`endif

// UART_v2_50(Address1=0, Address2=0, BaudRate=115200, BreakBitsRX=13, BreakBitsTX=13, BreakDetect=false, CRCoutputsEn=false, Enable_RX=1, Enable_RXIntInterrupt=0, Enable_TX=1, Enable_TXIntInterrupt=0, EnableHWAddress=0, EnIntRXInterrupt=false, EnIntTXInterrupt=false, FlowControl=0, HalfDuplexEn=false, HwTXEnSignal=true, InternalClock=true, InternalClockToleranceMinus=3.93736842105263, InternalClockTolerancePlus=3.93736842105263, InternalClockUsed=1, InterruptOnAddDetect=0, InterruptOnAddressMatch=0, InterruptOnBreak=0, InterruptOnByteRcvd=1, InterruptOnOverrunError=0, InterruptOnParityError=0, InterruptOnStopError=0, InterruptOnTXComplete=false, InterruptOnTXFifoEmpty=false, InterruptOnTXFifoFull=false, InterruptOnTXFifoNotFull=false, IntOnAddressDetect=false, IntOnAddressMatch=false, IntOnBreak=false, IntOnByteRcvd=true, IntOnOverrunError=false, IntOnParityError=false, IntOnStopError=false, NumDataBits=8, NumStopBits=1, OverSamplingRate=8, ParityType=0, ParityTypeSw=false, RequiredClock=921600, RXAddressMode=0, RXBufferSize=4, RxBuffRegSizeReplacementString=uint8, RXEnable=true, TXBitClkGenDP=true, TXBufferSize=4, TxBuffRegSizeReplacementString=uint8, TXEnable=true, Use23Polling=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=UART_v2_50, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART, CY_INSTANCE_SHORT_NAME=UART, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=50, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=UART, )
module UART_v2_50_7 (
    cts_n,
    tx,
    rts_n,
    tx_en,
    clock,
    reset,
    rx,
    tx_interrupt,
    rx_interrupt,
    tx_data,
    tx_clk,
    rx_data,
    rx_clk);
    input       cts_n;
    output      tx;
    output      rts_n;
    output      tx_en;
    input       clock;
    input       reset;
    input       rx;
    output      tx_interrupt;
    output      rx_interrupt;
    output      tx_data;
    output      tx_clk;
    output      rx_data;
    output      rx_clk;

    parameter Address1 = 0;
    parameter Address2 = 0;
    parameter EnIntRXInterrupt = 0;
    parameter EnIntTXInterrupt = 0;
    parameter FlowControl = 0;
    parameter HalfDuplexEn = 0;
    parameter HwTXEnSignal = 1;
    parameter NumDataBits = 8;
    parameter NumStopBits = 1;
    parameter ParityType = 0;
    parameter RXEnable = 1;
    parameter TXEnable = 1;

          wire  Net_289;
          wire  Net_61;
          wire  Net_9;


	cy_clock_v1_0
		#(.id("b0162966-0060-4af5-82d1-fcb491ad7619/be0a0e37-ad17-42ca-b5a1-1a654d736358"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1085069444.44444"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_9));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_61 = Net_9;

    B_UART_v2_50 BUART (
        .cts_n(cts_n),
        .tx(tx),
        .rts_n(rts_n),
        .tx_en(tx_en),
        .clock(Net_61),
        .reset(reset),
        .rx(rx),
        .tx_interrupt(tx_interrupt),
        .rx_interrupt(rx_interrupt),
        .tx_data(tx_data),
        .tx_clk(tx_clk),
        .rx_data(rx_data),
        .rx_clk(rx_clk));
    defparam BUART.Address1 = 0;
    defparam BUART.Address2 = 0;
    defparam BUART.BreakBitsRX = 13;
    defparam BUART.BreakBitsTX = 13;
    defparam BUART.BreakDetect = 0;
    defparam BUART.CRCoutputsEn = 0;
    defparam BUART.FlowControl = 0;
    defparam BUART.HalfDuplexEn = 0;
    defparam BUART.HwTXEnSignal = 1;
    defparam BUART.NumDataBits = 8;
    defparam BUART.NumStopBits = 1;
    defparam BUART.OverSampleCount = 8;
    defparam BUART.ParityType = 0;
    defparam BUART.ParityTypeSw = 0;
    defparam BUART.RXAddressMode = 0;
    defparam BUART.RXEnable = 1;
    defparam BUART.RXStatusIntEnable = 1;
    defparam BUART.TXBitClkGenDP = 1;
    defparam BUART.TXEnable = 1;
    defparam BUART.Use23Polling = 1;



endmodule

// Component: LUT_v1_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\LUT_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\LUT_v1_50\LUT_v1_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\LUT_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\LUT_v1_50\LUT_v1_50.v"
`endif

// PerCounter(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_TX_SLOTS, CY_INSTANCE_SHORT_NAME=CNT_TX_SLOTS, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_TX_SLOTS, )
module PerCounter_8 (
    en,
    reset,
    clk,
    cmp_val,
    cnt,
    cmp);
    input       en;
    input       reset;
    input       clk;
    input      [3:0] cmp_val;
    output     [3:0] cnt;
    output      cmp;



    BasicCounter_v1_0 BasicCounter_1 (
        .en(en),
        .cnt(cnt[3:0]),
        .reset(reset),
        .clock(clk));
    defparam BasicCounter_1.Width = 4;

    assign cmp = (cnt[3:0] == cmp_val[3:0]);



endmodule

// top
module top ;

          wire  clk_bus;
          wire  Net_1721;
          wire  tx_slot1;
          wire  tx_slot2;
          wire  tx_slot0;
          wire  clk_tx_slots;
          wire  tx_slot3;
          wire  clk_shift;
          wire  tx_en;
          wire  Net_1720;
          wire  dma_pay_preload;
          wire  tx_slot1_re;
          wire  clk_edge;
          wire  Net_1719;
          wire  Net_1718;
          wire  tx_init;
          wire  tx_slot0_re;
          wire  pwm_en;
          wire  tx_slot2_re;
          wire  tx_slot3_re;
          wire  dma_pay_init_done;
          wire  clk_deb_tx_slots;
          wire  Net_1717;
          wire  Net_1716;
          wire  Net_1715;
          wire  Net_1714;
          wire  Net_1713;
          wire  clk_rx_slots;
          wire  Net_1712;
          wire  Net_1380;
          wire  Net_1347;
          wire  pay_empty;
          wire  Net_1346;
          wire  Net_1345;
          wire  Net_1344;
          wire  Net_1343;
          wire  Net_1342;
          wire  Net_1711;
          wire  Net_1378;
          wire  Net_1361;
          wire  Net_1360;
          wire  Net_1359;
          wire  Net_1358;
          wire  Net_1357;
          wire  Net_1356;
          wire  Net_1355;
          wire  Net_1354;
          wire  Net_1353;
          wire  Net_1352;
          wire  Net_1351;
          wire  Net_1350;
          wire  Net_1349;
          wire  Net_1362;
          wire  Net_1363;
          wire  Net_1364;
          wire  Net_1365;
          wire  Net_1375;
          wire  Net_1374;
          wire  dma_pay_fin;
          wire  tx_done;
          wire  symb_trigger;
          wire  pay_rest_delay;
          wire  Net_1373;
          wire  Net_1372;
          wire  Net_1371;
          wire  Net_1370;
          wire  Net_1368;
          wire  pay_size_done;
          wire  Net_1367;
          wire  Net_1366;
          wire  Net_1383;
          wire  Net_1710;
          wire  Net_1709;
          wire  Net_1708;
          wire  Net_1707;
          wire  Net_1706;
          wire  Net_1705;
          wire  Net_1704;
          wire  Net_1703;
          wire  Net_1702;
          wire  Net_1701;
          wire [2:0] Net_1384;
          wire  Net_1395;
          wire  Net_1394;
          wire  Net_1393;
          wire  Net_1392;
          wire  Net_1391;
          wire  Net_1390;
          wire  Net_1388;
          wire  Net_1387;
          wire  Net_1386;
          wire  Net_1385;
          wire [3:0] Net_1396;
          wire  Net_1376;
          wire  Net_1377;
          wire  Net_1407;
          wire [3:0] Net_1461;
          wire  Net_1389;
          wire  Net_1437;
          wire  Net_1433;
          wire  Net_1432;
          wire [2:0] Net_1425;
          wire  Net_1382;
          wire  Net_1369;
          wire [3:0] Net_31;
          wire  Net_28;
          wire  Net_29;
          wire [3:0] Net_34;

    assign Net_1377 = 1'h0;

	wire [0:0] tmpOE__DEB_PIN1_net;
	wire [0:0] tmpFB_0__DEB_PIN1_net;
	wire [0:0] tmpIO_0__DEB_PIN1_net;
	wire [0:0] tmpINTERRUPT_0__DEB_PIN1_net;
	electrical [0:0] tmpSIOVREF__DEB_PIN1_net;

	cy_psoc3_pins_v1_10
		#(.id("c604f349-69a8-4104-a72f-afb701d4f90d"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DEB_PIN1
		 (.oe(tmpOE__DEB_PIN1_net),
		  .y({tx_slot0_re}),
		  .fb({tmpFB_0__DEB_PIN1_net[0:0]}),
		  .io({tmpIO_0__DEB_PIN1_net[0:0]}),
		  .siovref(tmpSIOVREF__DEB_PIN1_net),
		  .interrupt({tmpINTERRUPT_0__DEB_PIN1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DEB_PIN1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__DEB_PIN0_net;
	wire [0:0] tmpFB_0__DEB_PIN0_net;
	wire [0:0] tmpIO_0__DEB_PIN0_net;
	wire [0:0] tmpINTERRUPT_0__DEB_PIN0_net;
	electrical [0:0] tmpSIOVREF__DEB_PIN0_net;

	cy_psoc3_pins_v1_10
		#(.id("59c45f31-a6e3-4c1a-a43c-e97d010e7e41"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DEB_PIN0
		 (.oe(tmpOE__DEB_PIN0_net),
		  .y({clk_deb_tx_slots}),
		  .fb({tmpFB_0__DEB_PIN0_net[0:0]}),
		  .io({tmpIO_0__DEB_PIN0_net[0:0]}),
		  .siovref(tmpSIOVREF__DEB_PIN0_net),
		  .interrupt({tmpINTERRUPT_0__DEB_PIN0_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DEB_PIN0_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign Net_1376 = 1'h1;

    FreqDiv_v1_0 FreqDiv_1 (
        .en(Net_1376),
        .div(clk_deb_tx_slots),
        .reset(Net_1377),
        .clock(clk_tx_slots));
    defparam FreqDiv_1.Divider = 4;
    defparam FreqDiv_1.highPulse = 2;
    defparam FreqDiv_1.numBits = 2;

    EdgeRising_0 EdgeRising_8 (
        .d(tx_slot3),
        .clk(clk_edge),
        .det(tx_slot3_re));

    EdgeRising_1 EdgeRising_4 (
        .d(tx_slot2),
        .clk(clk_edge),
        .det(tx_slot2_re));

    // -- SRFF Start --
    reg  cy_srff_10;
    always @(posedge clk_bus)
    begin
        cy_srff_10 <= (tx_init | pay_rest_delay) & ~symb_trigger;
    end
    assign pay_rest_delay = cy_srff_10;
    // -- SRFF End --


    assign tx_done = pay_size_done & tx_slot3_re;

    PerCounter_2 CNT_PAY_SIZE (
        .en(tx_en),
        .reset(tx_init),
        .clk(pay_empty),
        .cmp_val(Net_1461[3:0]),
        .cnt(Net_1396[3:0]),
        .cmp(pay_size_done));

    CyControlReg_v1_80 CREG_PAY_SIZE (
        .control_1(Net_1385),
        .control_2(Net_1386),
        .control_3(Net_1387),
        .control_0(Net_1388),
        .control_4(Net_1390),
        .control_5(Net_1391),
        .control_6(Net_1392),
        .control_7(Net_1393),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_1461[3:0]));
    defparam CREG_PAY_SIZE.Bit0Mode = 0;
    defparam CREG_PAY_SIZE.Bit1Mode = 0;
    defparam CREG_PAY_SIZE.Bit2Mode = 0;
    defparam CREG_PAY_SIZE.Bit3Mode = 0;
    defparam CREG_PAY_SIZE.Bit4Mode = 0;
    defparam CREG_PAY_SIZE.Bit5Mode = 0;
    defparam CREG_PAY_SIZE.Bit6Mode = 0;
    defparam CREG_PAY_SIZE.Bit7Mode = 0;
    defparam CREG_PAY_SIZE.BitValue = 0;
    defparam CREG_PAY_SIZE.BusDisplay = 1;
    defparam CREG_PAY_SIZE.ExtrReset = 0;
    defparam CREG_PAY_SIZE.NumOutputs = 4;


    assign Net_1437 = Net_1432 & Net_1433;


    assign Net_1433 = ~pay_rest_delay;

    // -- SRFF Start --
    reg  cy_srff_1;
    always @(posedge clk_bus)
    begin
        cy_srff_1 <= (Net_1437 | pay_empty) & ~dma_pay_fin;
    end
    assign pay_empty = cy_srff_1;
    // -- SRFF End --

    assign Net_1425[2:0] = 3'h0;

    PerCounter3bit_3 CNT_PAY_BYTE (
        .en(tx_en),
        .reset(tx_done),
        .clk(symb_trigger),
        .cmp_val(Net_1425[2:0]),
        .cnt(Net_1384[2:0]),
        .cmp(Net_1432));


	cy_isr_v1_0
		#(.int_type(2'b00))
		ISR_SYMB_1
		 (.int_signal(symb_trigger));



    assign pwm_en = tx_en & tx_slot3_re;

	wire [0:0] tmpOE__LED_OUT_net;
	wire [0:0] tmpFB_0__LED_OUT_net;
	wire [0:0] tmpIO_0__LED_OUT_net;
	wire [0:0] tmpINTERRUPT_0__LED_OUT_net;
	electrical [0:0] tmpSIOVREF__LED_OUT_net;

	cy_psoc3_pins_v1_10
		#(.id("e53a56fa-9688-4360-9ed9-12c41adce720"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED_OUT
		 (.oe(tmpOE__LED_OUT_net),
		  .y({Net_1407}),
		  .fb({tmpFB_0__LED_OUT_net[0:0]}),
		  .io({tmpIO_0__LED_OUT_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_OUT_net),
		  .interrupt({tmpINTERRUPT_0__LED_OUT_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_OUT_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PWM_v3_30_4 PWM_LED_1 (
        .reset(1'b0),
        .clock(clk_bus),
        .tc(Net_1702),
        .pwm1(Net_1703),
        .pwm2(Net_1704),
        .interrupt(Net_1705),
        .capture(1'b0),
        .kill(1'b1),
        .enable(pwm_en),
        .trigger(pwm_en),
        .cmp_sel(1'b0),
        .pwm(Net_1407),
        .ph1(Net_1709),
        .ph2(Net_1710));
    defparam PWM_LED_1.Resolution = 8;


    assign symb_trigger = tx_slot0_re & tx_en;

    // -- SRFF Start --
    reg  cy_srff_2;
    always @(posedge clk_bus)
    begin
        cy_srff_2 <= (dma_pay_init_done | tx_en) & ~tx_done;
    end
    assign tx_en = cy_srff_2;
    // -- SRFF End --


    assign dma_pay_init_done = dma_pay_fin & tx_init;


    assign Net_1382 = Net_1389 | dma_pay_preload;


    assign Net_1389 = pay_empty & tx_slot3_re & tx_en;


	cy_dma_v1_0
		#(.drq_type(2'b00))
		DMA_PAY
		 (.drq(Net_1382),
		  .trq(1'b0),
		  .nrq(dma_pay_fin));


    EdgeRising_5 EdgeRising_3 (
        .d(tx_slot0),
        .clk(clk_edge),
        .det(tx_slot0_re));

    EdgeRising_6 EdgeRising_2 (
        .d(tx_slot1),
        .clk(clk_edge),
        .det(tx_slot1_re));


    assign dma_pay_preload = tx_slot3_re & tx_init;

    // -- SRFF Start --
    reg  cy_srff_9;
    always @(posedge clk_bus)
    begin
        cy_srff_9 <= (Net_1369 | tx_init) & ~dma_pay_init_done;
    end
    assign tx_init = cy_srff_9;
    // -- SRFF End --

    CyControlReg_v1_80 CREG_TX_INIT (
        .control_1(Net_1366),
        .control_2(Net_1367),
        .control_3(Net_1368),
        .control_0(Net_1369),
        .control_4(Net_1370),
        .control_5(Net_1371),
        .control_6(Net_1372),
        .control_7(Net_1373),
        .clock(1'b0),
        .reset(1'b0));
    defparam CREG_TX_INIT.Bit0Mode = 0;
    defparam CREG_TX_INIT.Bit1Mode = 0;
    defparam CREG_TX_INIT.Bit2Mode = 0;
    defparam CREG_TX_INIT.Bit3Mode = 0;
    defparam CREG_TX_INIT.Bit4Mode = 0;
    defparam CREG_TX_INIT.Bit5Mode = 0;
    defparam CREG_TX_INIT.Bit6Mode = 0;
    defparam CREG_TX_INIT.Bit7Mode = 0;
    defparam CREG_TX_INIT.BitValue = 0;
    defparam CREG_TX_INIT.BusDisplay = 0;
    defparam CREG_TX_INIT.ExtrReset = 0;
    defparam CREG_TX_INIT.NumOutputs = 1;

    assign Net_1365 = 1'h0;

    assign Net_1364 = 1'h1;

    FreqDiv_v1_0 FDIV_EDGE (
        .en(Net_1364),
        .div(clk_edge),
        .reset(Net_1365),
        .clock(clk_bus));
    defparam FDIV_EDGE.Divider = 4;
    defparam FDIV_EDGE.highPulse = 2;
    defparam FDIV_EDGE.numBits = 2;

    assign Net_1363 = 1'h0;

    assign Net_1362 = 1'h1;

    UART_v2_50_7 UART (
        .cts_n(1'b0),
        .tx(Net_1350),
        .rts_n(Net_1351),
        .tx_en(Net_1352),
        .clock(1'b0),
        .reset(1'b0),
        .rx(Net_1355),
        .tx_interrupt(Net_1356),
        .rx_interrupt(Net_1357),
        .tx_data(Net_1358),
        .tx_clk(Net_1359),
        .rx_data(Net_1360),
        .rx_clk(Net_1361));
    defparam UART.Address1 = 0;
    defparam UART.Address2 = 0;
    defparam UART.EnIntRXInterrupt = 0;
    defparam UART.EnIntTXInterrupt = 0;
    defparam UART.FlowControl = 0;
    defparam UART.HalfDuplexEn = 0;
    defparam UART.HwTXEnSignal = 1;
    defparam UART.NumDataBits = 8;
    defparam UART.NumStopBits = 1;
    defparam UART.ParityType = 0;
    defparam UART.RXEnable = 1;
    defparam UART.TXEnable = 1;

    assign Net_31[3:0] = 4'h3;

    FreqDiv_v1_0 FDIV_TX_SLOTS (
        .en(Net_1362),
        .div(clk_tx_slots),
        .reset(Net_1363),
        .clock(clk_rx_slots));
    defparam FDIV_TX_SLOTS.Divider = 2;
    defparam FDIV_TX_SLOTS.highPulse = 1;
    defparam FDIV_TX_SLOTS.numBits = 1;

	wire [0:0] tmpOE__FTDI_TX_net;
	wire [0:0] tmpFB_0__FTDI_TX_net;
	wire [0:0] tmpIO_0__FTDI_TX_net;
	wire [0:0] tmpINTERRUPT_0__FTDI_TX_net;
	electrical [0:0] tmpSIOVREF__FTDI_TX_net;

	cy_psoc3_pins_v1_10
		#(.id("ed092b9b-d398-4703-be89-cebf998501f6"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FTDI_TX
		 (.oe(tmpOE__FTDI_TX_net),
		  .y({Net_1350}),
		  .fb({tmpFB_0__FTDI_TX_net[0:0]}),
		  .io({tmpIO_0__FTDI_TX_net[0:0]}),
		  .siovref(tmpSIOVREF__FTDI_TX_net),
		  .interrupt({tmpINTERRUPT_0__FTDI_TX_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FTDI_TX_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FTDI_RX_net;
	wire [0:0] tmpIO_0__FTDI_RX_net;
	wire [0:0] tmpINTERRUPT_0__FTDI_RX_net;
	electrical [0:0] tmpSIOVREF__FTDI_RX_net;

	cy_psoc3_pins_v1_10
		#(.id("1425177d-0d0e-4468-8bcc-e638e5509a9b"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FTDI_RX
		 (.oe(tmpOE__FTDI_RX_net),
		  .y({1'b0}),
		  .fb({Net_1355}),
		  .io({tmpIO_0__FTDI_RX_net[0:0]}),
		  .siovref(tmpSIOVREF__FTDI_RX_net),
		  .interrupt({tmpINTERRUPT_0__FTDI_RX_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FTDI_RX_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("2cafe016-8dd3-43f1-9b15-393d9df3e2b2"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1250000000"),
		  .is_direct(0),
		  .is_digital(1))
		SHIFT_CLK
		 (.clock_out(clk_shift));


    assign Net_28 = 1'h1;


	cy_clock_v1_0
		#(.id("237e3e8e-13a0-42ec-ad1f-d9450bec0ea9"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_1
		 (.clock_out(clk_bus));


    // -- LUT LUT_SLOTS start --
    if (1)
    begin : LUT_SLOTS
        reg [3:0] tmp__LUT_SLOTS_reg;
        wire [3:0] tmp__LUT_SLOTS_ins;
        assign tmp__LUT_SLOTS_ins = {Net_34[3],Net_34[2],Net_34[1],Net_34[0]};
        always @(tmp__LUT_SLOTS_ins)
        begin
            case (tmp__LUT_SLOTS_ins)
                4'b0000 :  tmp__LUT_SLOTS_reg = 4'b0001;
                4'b0001 :  tmp__LUT_SLOTS_reg = 4'b0010;
                4'b0010 :  tmp__LUT_SLOTS_reg = 4'b0100;
                4'b0011 :  tmp__LUT_SLOTS_reg = 4'b1000;
                4'b0100 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b0101 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b0110 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b0111 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1000 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1001 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1010 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1011 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1100 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1101 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1110 :  tmp__LUT_SLOTS_reg = 4'b0000;
                4'b1111 :  tmp__LUT_SLOTS_reg = 4'b0000;
            endcase
        end
        assign {tx_slot3,tx_slot2,tx_slot1,tx_slot0} = tmp__LUT_SLOTS_reg;
    end
    // -- LUT LUT_SLOTS end --

    PerCounter_8 CNT_TX_SLOTS (
        .en(Net_28),
        .reset(Net_29),
        .clk(clk_tx_slots),
        .cmp_val(Net_31[3:0]),
        .cnt(Net_34[3:0]),
        .cmp(Net_29));


	cy_clock_v1_0
		#(.id("26135b25-e79d-4735-b0c3-38ff7bf5661b"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("6250000000"),
		  .is_direct(0),
		  .is_digital(1))
		SLOT_CLK
		 (.clock_out(clk_rx_slots));


	wire [0:0] tmpOE__DEB_PIN2_net;
	wire [0:0] tmpFB_0__DEB_PIN2_net;
	wire [0:0] tmpIO_0__DEB_PIN2_net;
	wire [0:0] tmpINTERRUPT_0__DEB_PIN2_net;
	electrical [0:0] tmpSIOVREF__DEB_PIN2_net;

	cy_psoc3_pins_v1_10
		#(.id("05ba5528-4534-4a9e-b19a-8148de8375be"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DEB_PIN2
		 (.oe(tmpOE__DEB_PIN2_net),
		  .y({tx_slot1_re}),
		  .fb({tmpFB_0__DEB_PIN2_net[0:0]}),
		  .io({tmpIO_0__DEB_PIN2_net[0:0]}),
		  .siovref(tmpSIOVREF__DEB_PIN2_net),
		  .interrupt({tmpINTERRUPT_0__DEB_PIN2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DEB_PIN2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__DEB_PIN3_net;
	wire [0:0] tmpFB_0__DEB_PIN3_net;
	wire [0:0] tmpIO_0__DEB_PIN3_net;
	wire [0:0] tmpINTERRUPT_0__DEB_PIN3_net;
	electrical [0:0] tmpSIOVREF__DEB_PIN3_net;

	cy_psoc3_pins_v1_10
		#(.id("bdf19061-c221-4a79-bbf0-302222528980"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DEB_PIN3
		 (.oe(tmpOE__DEB_PIN3_net),
		  .y({tx_slot2_re}),
		  .fb({tmpFB_0__DEB_PIN3_net[0:0]}),
		  .io({tmpIO_0__DEB_PIN3_net[0:0]}),
		  .siovref(tmpSIOVREF__DEB_PIN3_net),
		  .interrupt({tmpINTERRUPT_0__DEB_PIN3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DEB_PIN3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__DEB_PIN4_net;
	wire [0:0] tmpFB_0__DEB_PIN4_net;
	wire [0:0] tmpIO_0__DEB_PIN4_net;
	wire [0:0] tmpINTERRUPT_0__DEB_PIN4_net;
	electrical [0:0] tmpSIOVREF__DEB_PIN4_net;

	cy_psoc3_pins_v1_10
		#(.id("8057cf7a-3ac8-4831-b7f5-2a42374100ff"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DEB_PIN4
		 (.oe(tmpOE__DEB_PIN4_net),
		  .y({tx_slot3_re}),
		  .fb({tmpFB_0__DEB_PIN4_net[0:0]}),
		  .io({tmpIO_0__DEB_PIN4_net[0:0]}),
		  .siovref(tmpSIOVREF__DEB_PIN4_net),
		  .interrupt({tmpINTERRUPT_0__DEB_PIN4_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DEB_PIN4_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CyControlReg_v1_80 CREG_PAY (
        .control_1(Net_1712),
        .control_2(Net_1713),
        .control_3(Net_1714),
        .control_0(Net_1715),
        .control_4(Net_1716),
        .control_5(Net_1717),
        .control_6(Net_1718),
        .control_7(Net_1719),
        .clock(1'b0),
        .reset(1'b0));
    defparam CREG_PAY.Bit0Mode = 0;
    defparam CREG_PAY.Bit1Mode = 0;
    defparam CREG_PAY.Bit2Mode = 0;
    defparam CREG_PAY.Bit3Mode = 0;
    defparam CREG_PAY.Bit4Mode = 0;
    defparam CREG_PAY.Bit5Mode = 0;
    defparam CREG_PAY.Bit6Mode = 0;
    defparam CREG_PAY.Bit7Mode = 0;
    defparam CREG_PAY.BitValue = 0;
    defparam CREG_PAY.BusDisplay = 0;
    defparam CREG_PAY.ExtrReset = 0;
    defparam CREG_PAY.NumOutputs = 8;



endmodule

