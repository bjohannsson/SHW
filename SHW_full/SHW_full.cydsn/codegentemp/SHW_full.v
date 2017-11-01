// ======================================================================
// SHW_full.v generated from TopDesign.cysch
// 11/01/2017 at 05:12
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

// PerCounter(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_SLOTS, CY_INSTANCE_SHORT_NAME=CNT_SLOTS, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_SLOTS, )
module PerCounter_0 (
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

// Component: mux_v1_10
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10\mux_v1_10.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10\mux_v1_10.v"
`endif

// PerCounter3bit(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter3bit, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=SEL_PAY_OUT, CY_INSTANCE_SHORT_NAME=SEL_PAY_OUT, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=SEL_PAY_OUT, )
module PerCounter3bit_1 (
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

// Component: CyStatusReg_v1_90
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`endif

// Component: cydff_v1_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30\cydff_v1_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30\cydff_v1_30.v"
`endif

// PerCounter2bit(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter2bit, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_HAM_IN, CY_INSTANCE_SHORT_NAME=CNT_HAM_IN, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_HAM_IN, )
module PerCounter2bit_2 (
    en,
    reset,
    clk,
    cmp_val,
    cnt,
    cmp);
    input       en;
    input       reset;
    input       clk;
    input      [1:0] cmp_val;
    output     [1:0] cnt;
    output      cmp;



    BasicCounter_v1_0 BasicCounter_1 (
        .en(en),
        .cnt(cnt[1:0]),
        .reset(reset),
        .clock(clk));
    defparam BasicCounter_1.Width = 2;

    assign cmp = (cnt[1:0] == cmp_val[1:0]);



endmodule

// PerCounter3bit(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter3bit, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=SEL_HAM_OUT, CY_INSTANCE_SHORT_NAME=SEL_HAM_OUT, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=SEL_HAM_OUT, )
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

// PerCounter3bit(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter3bit, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_L, CY_INSTANCE_SHORT_NAME=CNT_L, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_L, )
module PerCounter3bit_4 (
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

// PerCounter5bit(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter5bit, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_INJ, CY_INSTANCE_SHORT_NAME=CNT_INJ, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_INJ, )
module PerCounter5bit_5 (
    en,
    reset,
    clk,
    cmp_val,
    cnt,
    cmp);
    input       en;
    input       reset;
    input       clk;
    input      [4:0] cmp_val;
    output     [4:0] cnt;
    output      cmp;



    BasicCounter_v1_0 BasicCounter_1 (
        .en(en),
        .cnt(cnt[4:0]),
        .reset(reset),
        .clock(clk));
    defparam BasicCounter_1.Width = 5;

    assign cmp = (cnt[4:0] == cmp_val[4:0]);



endmodule

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
module UART_v2_50_6 (
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

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=true, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=0, CompareValue2=63, CONTROL3=0, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=1, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=119, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=true, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=true, TriggerMode=1, UDB16=false, UDB8=true, UseControl=false, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_LED, CY_INSTANCE_SHORT_NAME=PWM_LED, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=PWM_LED, )
module PWM_v3_30_7 (
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

// PerCounter(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PerCounter, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CNT_RX_SLOTS, CY_INSTANCE_SHORT_NAME=CNT_RX_SLOTS, CY_MAJOR_VERSION=0, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=CNT_RX_SLOTS, )
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

// Comp_v2_0(Hysteresis=0, Pd_Override=0, Polarity=0, PSOC5A=false, Speed=1, Sync=1, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Comp_v2_0, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=COMP_SLOW, CY_INSTANCE_SHORT_NAME=COMP_SLOW, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=COMP_SLOW, )
module Comp_v2_0_9 (
    Vplus,
    CmpOut,
    Vminus,
    clock);
    inout       Vplus;
    electrical  Vplus;
    output      CmpOut;
    inout       Vminus;
    electrical  Vminus;
    input       clock;


          wire  Net_9;
          wire  Net_1;

    cy_psoc3_ctcomp_v1_0 ctComp (
        .vplus(Vplus),
        .vminus(Vminus),
        .cmpout(Net_1),
        .clk_udb(clock),
        .clock(clock));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign CmpOut = Net_1;


    assign Net_9 = ~Net_1;



endmodule

// Comp_v2_0(Hysteresis=0, Pd_Override=0, Polarity=0, PSOC5A=false, Speed=1, Sync=1, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Comp_v2_0, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=COMP_FAST, CY_INSTANCE_SHORT_NAME=COMP_FAST, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=COMP_FAST, )
module Comp_v2_0_10 (
    Vplus,
    CmpOut,
    Vminus,
    clock);
    inout       Vplus;
    electrical  Vplus;
    output      CmpOut;
    inout       Vminus;
    electrical  Vminus;
    input       clock;


          wire  Net_9;
          wire  Net_1;

    cy_psoc3_ctcomp_v1_0 ctComp (
        .vplus(Vplus),
        .vminus(Vminus),
        .cmpout(Net_1),
        .clk_udb(clock),
        .clock(clock));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign CmpOut = Net_1;


    assign Net_9 = ~Net_1;



endmodule

// VDAC8_v1_90(Data_Source=0, Initial_Value=25, Strobe_Mode=1, VDAC_Range=4, VDAC_Speed=2, Voltage=100, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=VDAC8_v1_90, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=DAC_SLOW:VDAC8, CY_INSTANCE_SHORT_NAME=VDAC8, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=90, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=DAC_SLOW_VDAC8, )
module VDAC8_v1_90_11 (
    strobe,
    data,
    vOut);
    input       strobe;
    input      [7:0] data;
    inout       vOut;
    electrical  vOut;

    parameter Data_Source = 0;
    parameter Initial_Value = 25;
    parameter Strobe_Mode = 1;

    electrical  Net_77;
          wire  Net_83;
          wire  Net_82;
          wire  Net_81;

    cy_psoc3_vidac8_v1_0 viDAC8 (
        .reset(Net_83),
        .idir(Net_81),
        .data(data[7:0]),
        .strobe(strobe),
        .vout(vOut),
        .iout(Net_77),
        .ioff(Net_82),
        .strobe_udb(strobe));
    defparam viDAC8.is_all_if_any = 0;
    defparam viDAC8.reg_data = 0;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_81));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_82));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_83));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_77));



endmodule

// DVDAC_v2_10(DAC_Range=4, Initial_Value=0, InternalClock=true, InternalClockFreqHz=250000, Resolution=12, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=DVDAC_v2_10, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=DAC_SLOW, CY_INSTANCE_SHORT_NAME=DAC_SLOW, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=DAC_SLOW, )
module DVDAC_v2_10_12 (
    Vout,
    clock);
    inout       Vout;
    electrical  Vout;
    input       clock;


          wire  Net_9;
          wire  Net_22;
          wire [7:0] Net_20;
          wire  Net_19;
          wire  Net_18;
          wire  Net_17;
          wire  Net_21;
          wire  Net_12;
          wire  Net_1;
          wire  Net_80;


	cy_clock_v1_0
		#(.id("732a0639-b4aa-4f8e-a260-2badc1c7d503/16079296-677d-4c97-a0f1-fd79fcfb8c33"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		BUS_CLK
		 (.clock_out(Net_1));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		DMA
		 (.drq(Net_12),
		  .trq(1'b0),
		  .nrq(Net_19));


    VDAC8_v1_90_11 VDAC8 (
        .strobe(Net_12),
        .data(8'b00000000),
        .vOut(Vout));
    defparam VDAC8.Data_Source = 0;
    defparam VDAC8.Initial_Value = 25;
    defparam VDAC8.Strobe_Mode = 1;


	cy_clock_v1_0
		#(.id("732a0639-b4aa-4f8e-a260-2badc1c7d503/2b3078c1-9a14-4aea-bb80-3826ca4e0c90"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("4000000000"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_21));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_12 = Net_21;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_80));


    assign Net_9 = Net_80 | Net_1;



endmodule

// VDAC8_v1_90(Data_Source=0, Initial_Value=25, Strobe_Mode=1, VDAC_Range=4, VDAC_Speed=2, Voltage=100, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=VDAC8_v1_90, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=DAC_FAST:VDAC8, CY_INSTANCE_SHORT_NAME=VDAC8, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=90, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=DAC_FAST_VDAC8, )
module VDAC8_v1_90_13 (
    strobe,
    data,
    vOut);
    input       strobe;
    input      [7:0] data;
    inout       vOut;
    electrical  vOut;

    parameter Data_Source = 0;
    parameter Initial_Value = 25;
    parameter Strobe_Mode = 1;

    electrical  Net_77;
          wire  Net_83;
          wire  Net_82;
          wire  Net_81;

    cy_psoc3_vidac8_v1_0 viDAC8 (
        .reset(Net_83),
        .idir(Net_81),
        .data(data[7:0]),
        .strobe(strobe),
        .vout(vOut),
        .iout(Net_77),
        .ioff(Net_82),
        .strobe_udb(strobe));
    defparam viDAC8.is_all_if_any = 0;
    defparam viDAC8.reg_data = 0;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_81));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_82));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_83));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_77));



endmodule

// DVDAC_v2_10(DAC_Range=4, Initial_Value=0, InternalClock=true, InternalClockFreqHz=250000, Resolution=12, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=DVDAC_v2_10, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=DAC_FAST, CY_INSTANCE_SHORT_NAME=DAC_FAST, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=DAC_FAST, )
module DVDAC_v2_10_14 (
    Vout,
    clock);
    inout       Vout;
    electrical  Vout;
    input       clock;


          wire  Net_9;
          wire  Net_22;
          wire [7:0] Net_20;
          wire  Net_19;
          wire  Net_18;
          wire  Net_17;
          wire  Net_21;
          wire  Net_12;
          wire  Net_1;
          wire  Net_80;


	cy_clock_v1_0
		#(.id("efc55f75-9ef1-4c8c-bdd1-7454b62908c5/16079296-677d-4c97-a0f1-fd79fcfb8c33"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		BUS_CLK
		 (.clock_out(Net_1));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		DMA
		 (.drq(Net_12),
		  .trq(1'b0),
		  .nrq(Net_19));


    VDAC8_v1_90_13 VDAC8 (
        .strobe(Net_12),
        .data(8'b00000000),
        .vOut(Vout));
    defparam VDAC8.Data_Source = 0;
    defparam VDAC8.Initial_Value = 25;
    defparam VDAC8.Strobe_Mode = 1;


	cy_clock_v1_0
		#(.id("efc55f75-9ef1-4c8c-bdd1-7454b62908c5/2b3078c1-9a14-4aea-bb80-3826ca4e0c90"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("4000000000"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_21));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_12 = Net_21;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_80));


    assign Net_9 = Net_80 | Net_1;



endmodule

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: cy_vref_v1_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`endif

// ADC_SAR_v3_10(ADC_Clock=1, ADC_Clock_Frequency=12000006, ADC_Input_Range=1, ADC_Power=0, ADC_Reference=1, ADC_Resolution=12, ADC_SampleMode=2, Enable_next_out=false, Ref_Voltage=2.5, Ref_Voltage_mV=2500, rm_int=false, Sample_Precharge=6, Sample_Rate=666667, Sample_Rate_def=631579, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=ADC_SAR_v3_10, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=ADC_SAR, CY_INSTANCE_SHORT_NAME=ADC_SAR, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=ADC_SAR, )
module ADC_SAR_v3_10_15 (
    vplus,
    vminus,
    soc,
    eoc,
    aclk,
    vdac_ref,
    eos);
    inout       vplus;
    electrical  vplus;
    inout       vminus;
    electrical  vminus;
    input       soc;
    output      eoc;
    input       aclk;
    inout       vdac_ref;
    electrical  vdac_ref;
    output      eos;


          wire [3:0] vp_ctl;
          wire [3:0] vn_ctl;
    electrical  Net_255;
    electrical  Net_267;
    electrical  Net_210;
    electrical  Net_209;
          wire [11:0] Net_207;
          wire  Net_252;
          wire  Net_205;
          wire  Net_381;
    electrical  Net_368;
    electrical  Net_235;
    electrical  Net_216;
    electrical  Net_233;
          wire  Net_385;
          wire  Net_383;
          wire  Net_221;
    electrical  Net_248;
    electrical  Net_257;
    electrical  Net_149;
    electrical  Net_126;
    electrical  Net_215;
          wire  Net_188;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Net_248, Net_235);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(eoc));


    ZeroTerminal ZeroTerminal_1 (
        .z(vp_ctl[0]));

    ZeroTerminal ZeroTerminal_2 (
        .z(vp_ctl[2]));

    ZeroTerminal ZeroTerminal_3 (
        .z(vn_ctl[1]));

    ZeroTerminal ZeroTerminal_4 (
        .z(vn_ctl[3]));

    ZeroTerminal ZeroTerminal_5 (
        .z(vp_ctl[1]));

    ZeroTerminal ZeroTerminal_6 (
        .z(vp_ctl[3]));

    ZeroTerminal ZeroTerminal_7 (
        .z(vn_ctl[0]));

    ZeroTerminal ZeroTerminal_8 (
        .z(vn_ctl[2]));


	cy_clock_v1_0
		#(.id("e8f8791c-bcc2-492e-963b-6870e5dbe76c/696a0979-21fc-4185-bf38-6c79febcde7a"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("83333291.6666875"),
		  .is_direct(0),
		  .is_digital(0))
		theACLK
		 (.clock_out(Net_385),
		  .dig_domain_out(Net_381));


	// Clock_VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_188 = Net_221;

    cy_psoc5_sar_v2_0 ADC_SAR (
        .clock(Net_188),
        .sof_udb(soc),
        .clk_udb(),
        .vp_ctl_udb(vp_ctl[3:0]),
        .vn_ctl_udb(vn_ctl[3:0]),
        .vplus(vplus),
        .vminus(Net_126),
        .irq(Net_252),
        .data_out(Net_207[11:0]),
        .eof_udb(eoc),
        .pump_clock(Net_188),
        .ext_pin(Net_215),
        .vrefhi_out(Net_257),
        .vref(Net_248),
        .next_out(eos));

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_215, Net_210);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	wire [0:0] tmpOE__Bypass_net;
	wire [0:0] tmpFB_0__Bypass_net;
	wire [0:0] tmpIO_0__Bypass_net;
	wire [0:0] tmpINTERRUPT_0__Bypass_net;
	electrical [0:0] tmpSIOVREF__Bypass_net;

	cy_psoc3_pins_v1_10
		#(.id("e8f8791c-bcc2-492e-963b-6870e5dbe76c/16a808f6-2e13-45b9-bce0-b001c8655113"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
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
		  .pin_mode("A"),
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
		Bypass
		 (.oe(tmpOE__Bypass_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Bypass_net[0:0]}),
		  .analog({Net_210}),
		  .io({tmpIO_0__Bypass_net[0:0]}),
		  .siovref(tmpSIOVREF__Bypass_net),
		  .interrupt({tmpINTERRUPT_0__Bypass_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Bypass_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_126, Net_149);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 noconnect (
        .noconnect(Net_209));

	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(Net_257, Net_149);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_255));


	cy_vref_v1_0
		#(.guid("4720866E-BC14-478d-B8A0-3E44F38CADAC"),
		  .name("Vdda/2"),
		  .autoenable(1))
		vRef_Vdda_1
		 (.vout(Net_235));


    cy_analog_noconnect_v1_0 noconnect_1 (
        .noconnect(Net_368));


    assign Net_221 = Net_383 | Net_385;

    assign Net_383 = 1'h0;



endmodule

// top
module top ;

          wire  Net_917;
          wire  Net_916;
          wire  Net_911;
          wire  pay_current_bit;
    electrical  Net_910;
          wire  clk_slots;
          wire  clk_bus;
          wire  tx_slot3;
          wire  Net_909;
    electrical  Net_906;
          wire  Net_898;
          wire  tx_slot1;
          wire  tx_slot2;
    electrical  Net_897;
          wire  Net_894;
    electrical  Net_893;
          wire  tx_slot0;
          wire  Net_892;
    electrical  Net_891;
          wire  Net_888;
    electrical  Net_887;
          wire [7:0] Net_879;
          wire  Net_878;
          wire  Net_877;
          wire  Net_876;
          wire  Net_875;
          wire  Net_874;
          wire  Net_824;
          wire  Net_823;
          wire  ham_empty;
          wire  Net_822;
          wire  pay_shift_lo;
          wire  Net_821;
          wire  pay_shift_hi;
          wire  clk_shift;
          wire  pay_en;
          wire  pay_en_lo;
          wire  Net_820;
          wire  Net_819;
          wire  tx_en;
          wire  Net_818;
          wire  Net_817;
          wire  Net_816;
          wire  Net_815;
          wire  Net_814;
          wire  Net_813;
          wire  Net_812;
          wire  Net_811;
          wire  Net_810;
          wire  Net_809;
          wire  Net_808;
          wire  Net_807;
          wire  Net_806;
          wire  Net_805;
          wire  Net_678;
          wire  ham_rest_delay;
          wire  dma_ham2ser_trig;
          wire  Net_682;
          wire  ham_full;
          wire  Net_687;
          wire  Net_691;
          wire  Net_803;
          wire  Net_802;
          wire  Net_801;
          wire  Net_797;
          wire  Net_587;
          wire  ham_full_res;
          wire  Net_586;
          wire  Net_585;
          wire  Net_584;
          wire  ser_empty;
          wire  Net_583;
          wire  Net_582;
          wire  ser_rest_delay;
          wire  Net_580;
          wire  Net_579;
          wire  Net_578;
          wire  Net_616;
          wire  Net_615;
          wire  ser_current_bit;
          wire  Net_613;
          wire  ser_shift_lo;
          wire  Net_610;
          wire  Net_609;
          wire  Net_608;
          wire  Net_607;
          wire  ser_en;
          wire  Net_606;
          wire  pay_loaded;
          wire  Net_605;
          wire  ser_en_lo;
          wire  Net_603;
          wire  Net_569;
          wire  Net_568;
          wire  ser_shift_hi;
          wire  Net_567;
          wire  Net_566;
          wire  Net_565;
          wire  Net_564;
          wire  Net_562;
          wire  Net_561;
          wire  Net_560;
          wire  Net_548;
          wire  Net_547;
          wire  Net_546;
          wire  Net_545;
          wire  Net_544;
          wire  Net_543;
          wire  Net_542;
          wire  Net_541;
          wire  Net_540;
          wire  Net_539;
          wire  Net_538;
          wire  Net_537;
          wire  Net_536;
          wire  Net_445;
          wire  Net_444;
          wire  Net_443;
          wire  Net_442;
          wire  Net_441;
          wire  Net_440;
          wire  Net_439;
          wire  Net_438;
          wire  tx_init_pay;
          wire  Net_437;
          wire  pay_empty;
          wire  pay_rest_delay;
          wire  symb_ready;
          wire  symb_inj;
          wire  Net_436;
          wire  Net_446;
          wire  symb_inj_done;
          wire  Net_448;
          wire [7:0] Net_347;
          wire  Net_346;
          wire  Net_345;
          wire  Net_344;
          wire  Net_343;
          wire  Net_264;
          wire  inj_rest_delay;
          wire  Net_263;
          wire  Net_262;
          wire  Net_261;
          wire  Net_260;
          wire  Net_259;
          wire  Net_258;
          wire  Net_257;
          wire  Net_256;
          wire  Net_255;
          wire  Net_250;
          wire  Net_432;
          wire  Net_431;
          wire  Net_430;
          wire [7:0] Net_434;
          wire  Net_433;
          wire  Net_122;
          wire  Net_140;
          wire  Net_139;
          wire  Net_64;
          wire  Net_63;
          wire  Net_62;
          wire  Net_61;
          wire  Net_60;
          wire  Net_59;
          wire  Net_58;
          wire  Net_57;
          wire  tx_init;
          wire  Net_47;
          wire  Net_46;
          wire  Net_45;
          wire  Net_44;
          wire  Net_43;
          wire  Net_42;
          wire  Net_24;
          wire  Net_19;
          wire  Net_939;
          wire [2:0] Net_927;
          wire  Net_933;
          wire  Net_934;
          wire [2:0] Net_923;
          wire  Net_914;
          wire  Net_902;
          wire  Net_901;
          wire  h3;
          wire  Net_853;
          wire  pwm_en;
          wire  Net_839;
          wire [3:0] Net_841;
          wire  Net_838;
          wire [7:0] Net_826;
          wire  h0;
          wire [7:0] Net_827;
          wire  Net_765;
          wire  Net_762;
          wire  Net_763;
          wire  Net_779;
          wire  clk_rx_slots;
          wire  Net_776;
          wire  rx_slot1;
          wire  Net_774;
          wire  Net_769;
          wire  Net_761;
          wire  Net_760;
          wire  Net_759;
          wire  Net_758;
          wire  Net_789;
          wire  Net_680;
          wire  Net_790;
          wire  Net_685;
          wire  Net_791;
          wire  Net_689;
          wire  Net_793;
          wire  Net_693;
          wire  Net_750;
          wire  Net_748;
          wire  Net_745;
          wire  Net_703;
          wire  Net_704;
          wire  Net_706;
          wire  Net_708;
          wire  Net_736;
          wire  Net_617;
          wire  Net_570;
          wire  Net_500;
          wire  Net_491;
          wire  Net_490;
          wire [4:0] Net_486;
          wire  h1;
          wire [3:0] rx_slot_cnt;
          wire [4:0] Net_485;
          wire  comp_out;
          wire  Net_474;
          wire [4:0] Net_482;
          wire  Net_447;
          wire [2:0] Net_455;
          wire  Net_457;
          wire  Net_456;
          wire  Net_427;
          wire  h2;
          wire [2:0] Net_421;
          wire [2:0] Net_420;
          wire [2:0] Net_404;
          wire  Net_386;
          wire  Net_181;
          wire  Net_180;
          wire  Net_179;
          wire  Net_178;
          wire  Net_176;
          wire  rx_slot0;
          wire  Net_175;
          wire  Net_174;
          wire  Net_187;
          wire  Net_142;
          wire  Net_146;
          wire  Net_149;
          wire  Net_169;
          wire  pre_detect;
          wire [2:0] Net_360;
          wire [2:0] Net_280;
          wire  Net_354;
          wire  Net_312;
          wire  Net_348;
          wire  Net_349;
          wire  Net_350;
          wire  Net_351;
          wire [2:0] Net_279;
          wire  Net_277;
          wire [1:0] Net_209;
          wire  Net_239;
          wire  Net_221;
          wire  Net_238;
    electrical  adc_in;
          wire  Net_229;
          wire [1:0] Net_202;
          wire  Net_114;
          wire [2:0] Net_97;
          wire  Net_95;
          wire  head_en;
          wire  head_rest_delay;
          wire [2:0] Net_77;
          wire  head_res;
          wire [3:0] Net_31;
          wire  head_reset;
          wire  Net_28;
          wire  Net_29;
          wire [3:0] Net_34;

    PerCounter_0 CNT_SLOTS (
        .en(Net_28),
        .reset(Net_29),
        .clk(clk_slots),
        .cmp_val(Net_31[3:0]),
        .cnt(Net_34[3:0]),
        .cmp(Net_29));


	cy_clock_v1_0
		#(.id("237e3e8e-13a0-42ec-ad1f-d9450bec0ea9"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_1
		 (.clock_out(clk_bus));



	cy_clock_v1_0
		#(.id("26135b25-e79d-4735-b0c3-38ff7bf5661b"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("12500000000"),
		  .is_direct(0),
		  .is_digital(1))
		SLOT_CLK
		 (.clock_out(clk_slots));


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

    assign Net_28 = 1'h1;

    assign Net_31[3:0] = 4'h3;

    CyControlReg_v1_80 CREG_PAY (
        .control_1(Net_57),
        .control_2(Net_58),
        .control_3(Net_59),
        .control_0(Net_60),
        .control_4(Net_61),
        .control_5(Net_62),
        .control_6(Net_63),
        .control_7(Net_64),
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

    // -- Mux start --
    if (1)
    begin : mux_1
        reg  tmp__mux_1_reg;
        always @(Net_64 or Net_63 or Net_62 or Net_61 or Net_59 or Net_58 or Net_57 or Net_60 or Net_77)
        begin
            case (Net_77[2:0])
                3'b000 :  tmp__mux_1_reg = Net_64;
                3'b001 :  tmp__mux_1_reg = Net_63;
                3'b010 :  tmp__mux_1_reg = Net_62;
                3'b011 :  tmp__mux_1_reg = Net_61;
                3'b100 :  tmp__mux_1_reg = Net_59;
                3'b101 :  tmp__mux_1_reg = Net_58;
                3'b110 :  tmp__mux_1_reg = Net_57;
                3'b111 :  tmp__mux_1_reg = Net_60;
            endcase
        end
        assign pay_current_bit = tmp__mux_1_reg;
    end
    // -- Mux end --

    PerCounter3bit_1 SEL_PAY_OUT (
        .en(pay_en),
        .reset(Net_95),
        .clk(pay_shift_lo),
        .cmp_val(Net_97[2:0]),
        .cnt(Net_77[2:0]),
        .cmp(Net_95));

    assign Net_97[2:0] = 3'h7;


    assign pay_en = tx_slot0 & ham_empty & tx_en;


    assign pay_shift_hi = pay_en & clk_shift;


	cy_clock_v1_0
		#(.id("2cafe016-8dd3-43f1-9b15-393d9df3e2b2"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1250000000"),
		  .is_direct(0),
		  .is_digital(1))
		SHIFT_CLK
		 (.clock_out(clk_shift));



    assign pay_shift_lo = pay_en & Net_114 & pay_en_lo;


    assign Net_114 = ~clk_shift;

    // -- SRFF Start --
    reg  cy_srff_1;
    always @(posedge clk_bus)
    begin
        cy_srff_1 <= (pay_shift_hi | pay_en_lo) & ~tx_slot1;
    end
    assign pay_en_lo = cy_srff_1;
    // -- SRFF End --

    assign Net_187 = 1'h0;

    CyStatusReg_v1_90 SREG_HAM_OUT (
        .status_0(Net_187),
        .status_1(Net_174),
        .status_2(Net_175),
        .status_3(Net_176),
        .clock(clk_bus),
        .status_4(Net_178),
        .status_5(Net_179),
        .status_6(Net_180),
        .status_7(Net_181),
        .intr(Net_433),
        .status_bus(8'b0));
    defparam SREG_HAM_OUT.Bit0Mode = 0;
    defparam SREG_HAM_OUT.Bit1Mode = 0;
    defparam SREG_HAM_OUT.Bit2Mode = 0;
    defparam SREG_HAM_OUT.Bit3Mode = 0;
    defparam SREG_HAM_OUT.Bit4Mode = 0;
    defparam SREG_HAM_OUT.Bit5Mode = 0;
    defparam SREG_HAM_OUT.Bit6Mode = 0;
    defparam SREG_HAM_OUT.Bit7Mode = 0;
    defparam SREG_HAM_OUT.BusDisplay = 0;
    defparam SREG_HAM_OUT.Interrupt = 0;
    defparam SREG_HAM_OUT.MaskValue = 0;
    defparam SREG_HAM_OUT.NumInputs = 8;

    // -- LUT LUT_HAM start --
    if (1)
    begin : LUT_HAM
        reg [6:0] tmp__LUT_HAM_reg;
        wire [3:0] tmp__LUT_HAM_ins;
        assign tmp__LUT_HAM_ins = {Net_169,Net_149,Net_146,Net_142};
        always @(tmp__LUT_HAM_ins)
        begin
            case (tmp__LUT_HAM_ins)
                4'b0000 :  tmp__LUT_HAM_reg = 7'b0000000;
                4'b0001 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b0010 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b0011 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b0100 :  tmp__LUT_HAM_reg = 7'b0000000;
                4'b0101 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b0110 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b0111 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b1000 :  tmp__LUT_HAM_reg = 7'b0000000;
                4'b1001 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b1010 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b1011 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b1100 :  tmp__LUT_HAM_reg = 7'b0000000;
                4'b1101 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b1110 :  tmp__LUT_HAM_reg = 7'b0000001;
                4'b1111 :  tmp__LUT_HAM_reg = 7'b0000001;
            endcase
        end
        assign {Net_181,Net_180,Net_179,Net_178,Net_176,Net_175,Net_174} = tmp__LUT_HAM_reg;
    end
    // -- LUT LUT_HAM end --

    // -- DFF Start --
    reg  cydff_4;
    always @(posedge pay_shift_hi)
    begin
        cydff_4 <= Net_149;
    end
    assign Net_169 = cydff_4;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_3;
    always @(posedge pay_shift_hi)
    begin
        cydff_3 <= Net_146;
    end
    assign Net_149 = cydff_3;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_2;
    always @(posedge pay_shift_hi)
    begin
        cydff_2 <= Net_142;
    end
    assign Net_146 = cydff_2;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_1;
    always @(posedge pay_shift_hi)
    begin
        cydff_1 <= pay_current_bit;
    end
    assign Net_142 = cydff_1;
    // -- DFF End --

    PerCounter2bit_2 CNT_HAM_IN (
        .en(pay_en),
        .reset(Net_229),
        .clk(pay_shift_hi),
        .cmp_val(Net_202[1:0]),
        .cnt(Net_209[1:0]),
        .cmp(Net_238));

    assign Net_202[1:0] = 2'h0;


    assign Net_239 = Net_238 & Net_221;


    assign Net_221 = ~ham_rest_delay;

    assign Net_229 = 1'h0;


    assign dma_ham2ser_trig = ham_full & tx_slot1 & ser_empty;

    // -- SRFF Start --
    reg  cy_srff_2;
    always @(posedge clk_bus)
    begin
        cy_srff_2 <= (Net_239 | ham_full) & ~ham_full_res;
    end
    assign ham_full = cy_srff_2;
    // -- SRFF End --


    assign ham_empty = ~ham_full;


	cy_dma_v1_0
		#(.drq_type(2'b00))
		DMA_HAM2SER
		 (.drq(dma_ham2ser_trig),
		  .trq(1'b0),
		  .nrq(ham_full_res));


    CyControlReg_v1_80 CREG_SER (
        .control_1(Net_255),
        .control_2(Net_256),
        .control_3(Net_257),
        .control_0(Net_258),
        .control_4(Net_259),
        .control_5(Net_260),
        .control_6(Net_261),
        .control_7(Net_262),
        .clock(1'b0),
        .reset(1'b0));
    defparam CREG_SER.Bit0Mode = 0;
    defparam CREG_SER.Bit1Mode = 0;
    defparam CREG_SER.Bit2Mode = 0;
    defparam CREG_SER.Bit3Mode = 0;
    defparam CREG_SER.Bit4Mode = 0;
    defparam CREG_SER.Bit5Mode = 0;
    defparam CREG_SER.Bit6Mode = 0;
    defparam CREG_SER.Bit7Mode = 0;
    defparam CREG_SER.BitValue = 0;
    defparam CREG_SER.BusDisplay = 0;
    defparam CREG_SER.ExtrReset = 0;
    defparam CREG_SER.NumOutputs = 8;

    // -- Mux start --
    if (1)
    begin : mux_2
        reg  tmp__mux_2_reg;
        always @(Net_262 or Net_261 or Net_260 or Net_259 or Net_257 or Net_256 or Net_255 or Net_258 or Net_280)
        begin
            case (Net_280[2:0])
                3'b000 :  tmp__mux_2_reg = Net_262;
                3'b001 :  tmp__mux_2_reg = Net_261;
                3'b010 :  tmp__mux_2_reg = Net_260;
                3'b011 :  tmp__mux_2_reg = Net_259;
                3'b100 :  tmp__mux_2_reg = Net_257;
                3'b101 :  tmp__mux_2_reg = Net_256;
                3'b110 :  tmp__mux_2_reg = Net_255;
                3'b111 :  tmp__mux_2_reg = Net_258;
            endcase
        end
        assign ser_current_bit = tmp__mux_2_reg;
    end
    // -- Mux end --

    PerCounter3bit_3 SEL_HAM_OUT (
        .en(ser_en),
        .reset(Net_277),
        .clk(ser_shift_lo),
        .cmp_val(Net_279[2:0]),
        .cnt(Net_280[2:0]),
        .cmp(Net_277));

    assign Net_279[2:0] = 3'h6;

    // -- DFF Start --
    reg  cydff_5;
    always @(posedge ser_shift_hi)
    begin
        cydff_5 <= ser_current_bit;
    end
    assign Net_348 = cydff_5;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_6;
    always @(posedge ser_shift_hi)
    begin
        cydff_6 <= Net_348;
    end
    assign Net_349 = cydff_6;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_7;
    always @(posedge ser_shift_hi)
    begin
        cydff_7 <= Net_349;
    end
    assign Net_350 = cydff_7;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_8;
    always @(posedge ser_shift_hi)
    begin
        cydff_8 <= Net_350;
    end
    assign Net_351 = cydff_8;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_9;
    always @(posedge ser_shift_hi)
    begin
        cydff_9 <= Net_351;
    end
    assign Net_312 = cydff_9;
    // -- DFF End --

    CyStatusReg_v1_90 SREG_SYMB (
        .status_0(Net_348),
        .status_1(Net_349),
        .status_2(Net_350),
        .status_3(Net_351),
        .clock(clk_bus),
        .status_4(Net_312),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_346),
        .status_bus(8'b0));
    defparam SREG_SYMB.Bit0Mode = 0;
    defparam SREG_SYMB.Bit1Mode = 0;
    defparam SREG_SYMB.Bit2Mode = 0;
    defparam SREG_SYMB.Bit3Mode = 0;
    defparam SREG_SYMB.Bit4Mode = 0;
    defparam SREG_SYMB.Bit5Mode = 0;
    defparam SREG_SYMB.Bit6Mode = 0;
    defparam SREG_SYMB.Bit7Mode = 0;
    defparam SREG_SYMB.BusDisplay = 0;
    defparam SREG_SYMB.Interrupt = 0;
    defparam SREG_SYMB.MaskValue = 0;
    defparam SREG_SYMB.NumInputs = 5;


    assign ser_en = tx_slot2 & ham_empty & tx_en;


    assign ser_shift_hi = ser_en & clk_shift;


    assign ser_shift_lo = ser_en & Net_354 & ser_en_lo;


    assign Net_354 = ~clk_shift;

    // -- SRFF Start --
    reg  cy_srff_3;
    always @(posedge clk_bus)
    begin
        cy_srff_3 <= (ser_shift_hi | ser_en_lo) & ~tx_slot2;
    end
    assign ser_en_lo = cy_srff_3;
    // -- SRFF End --

    assign ser_empty = (Net_360[2:0] == Net_280[2:0]);

    assign Net_360[2:0] = 3'h0;


	cy_dma_v1_0
		#(.drq_type(2'b00))
		DMA_PAY
		 (.drq(Net_447),
		  .trq(1'b0),
		  .nrq(pay_loaded));



    assign Net_427 = ~ser_rest_delay;


    assign symb_ready = Net_446 & Net_427;

    assign Net_446 = (Net_420[2:0] == Net_421[2:0]);

    assign Net_421[2:0] = 3'h0;

    CyControlReg_v1_80 CREG_L (
        .control_1(Net_436),
        .control_2(Net_437),
        .control_3(Net_438),
        .control_0(Net_439),
        .control_4(Net_440),
        .control_5(Net_441),
        .control_6(Net_442),
        .control_7(Net_443),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_404[2:0]));
    defparam CREG_L.Bit0Mode = 0;
    defparam CREG_L.Bit1Mode = 0;
    defparam CREG_L.Bit2Mode = 0;
    defparam CREG_L.Bit3Mode = 0;
    defparam CREG_L.Bit4Mode = 0;
    defparam CREG_L.Bit5Mode = 0;
    defparam CREG_L.Bit6Mode = 0;
    defparam CREG_L.Bit7Mode = 0;
    defparam CREG_L.BitValue = 0;
    defparam CREG_L.BusDisplay = 1;
    defparam CREG_L.ExtrReset = 0;
    defparam CREG_L.NumOutputs = 3;

    PerCounter3bit_4 CNT_L (
        .en(ser_en),
        .reset(Net_386),
        .clk(ser_shift_lo),
        .cmp_val(Net_404[2:0]),
        .cnt(Net_420[2:0]),
        .cmp(Net_386));


	cy_isr_v1_0
		#(.int_type(2'b00))
		ISR_SYMB
		 (.int_signal(symb_ready));


    assign Net_456 = (Net_77[2:0] == Net_455[2:0]);


    assign pay_empty = Net_456 & Net_457;


    assign Net_457 = ~pay_rest_delay;

    assign Net_455[2:0] = 3'h0;


    assign Net_447 = pay_empty | tx_init_pay;

    // -- SRFF Start --
    reg  cy_srff_4;
    always @(posedge clk_bus)
    begin
        cy_srff_4 <= (Net_500 | symb_inj) & ~symb_inj_done;
    end
    assign symb_inj = cy_srff_4;
    // -- SRFF End --


    assign Net_500 = Net_491 & Net_490;


    assign Net_490 = ~inj_rest_delay;

    assign Net_486[4:0] = 5'h0;

    assign Net_491 = (Net_486[4:0] == Net_485[4:0]);

    assign Net_482[4:0] = 5'h13;

    PerCounter5bit_5 CNT_INJ (
        .en(ser_en),
        .reset(Net_474),
        .clk(symb_ready),
        .cmp_val(Net_482[4:0]),
        .cnt(Net_485[4:0]),
        .cmp(Net_474));


	cy_isr_v1_0
		#(.int_type(2'b00))
		ISR_INJ_CHECK
		 (.int_signal(symb_inj));


    UART_v2_50_6 UART (
        .cts_n(1'b0),
        .tx(Net_537),
        .rts_n(Net_538),
        .tx_en(Net_539),
        .clock(1'b0),
        .reset(1'b0),
        .rx(Net_542),
        .tx_interrupt(Net_543),
        .rx_interrupt(Net_544),
        .tx_data(Net_545),
        .tx_clk(Net_546),
        .rx_data(Net_547),
        .rx_clk(Net_548));
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

    CyControlReg_v1_80 CREG_INJ_DONE (
        .control_1(Net_560),
        .control_2(Net_561),
        .control_3(Net_562),
        .control_0(Net_570),
        .control_4(Net_564),
        .control_5(Net_565),
        .control_6(Net_566),
        .control_7(Net_567),
        .clock(1'b0),
        .reset(1'b0));
    defparam CREG_INJ_DONE.Bit0Mode = 0;
    defparam CREG_INJ_DONE.Bit1Mode = 0;
    defparam CREG_INJ_DONE.Bit2Mode = 0;
    defparam CREG_INJ_DONE.Bit3Mode = 0;
    defparam CREG_INJ_DONE.Bit4Mode = 0;
    defparam CREG_INJ_DONE.Bit5Mode = 0;
    defparam CREG_INJ_DONE.Bit6Mode = 0;
    defparam CREG_INJ_DONE.Bit7Mode = 0;
    defparam CREG_INJ_DONE.BitValue = 0;
    defparam CREG_INJ_DONE.BusDisplay = 0;
    defparam CREG_INJ_DONE.ExtrReset = 0;
    defparam CREG_INJ_DONE.NumOutputs = 1;

	wire [0:0] tmpOE__Rx_1_net;
	wire [0:0] tmpIO_0__Rx_1_net;
	wire [0:0] tmpINTERRUPT_0__Rx_1_net;
	electrical [0:0] tmpSIOVREF__Rx_1_net;

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
		Rx_1
		 (.oe(tmpOE__Rx_1_net),
		  .y({1'b0}),
		  .fb({Net_542}),
		  .io({tmpIO_0__Rx_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Rx_1_net),
		  .interrupt({tmpINTERRUPT_0__Rx_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Rx_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Tx_1_net;
	wire [0:0] tmpFB_0__Tx_1_net;
	wire [0:0] tmpIO_0__Tx_1_net;
	wire [0:0] tmpINTERRUPT_0__Tx_1_net;
	electrical [0:0] tmpSIOVREF__Tx_1_net;

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
		Tx_1
		 (.oe(tmpOE__Tx_1_net),
		  .y({Net_537}),
		  .fb({tmpFB_0__Tx_1_net[0:0]}),
		  .io({tmpIO_0__Tx_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Tx_1_net),
		  .interrupt({tmpINTERRUPT_0__Tx_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Tx_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign tx_en = 1'h1;

    assign ham_rest_delay = 1'h0;

    assign pay_rest_delay = 1'h0;

    assign inj_rest_delay = 1'h0;

    assign ser_rest_delay = 1'h0;

    assign tx_init_pay = 1'h0;

    PWM_v3_30_7 PWM_LED (
        .reset(1'b0),
        .clock(clk_bus),
        .tc(Net_605),
        .pwm1(Net_606),
        .pwm2(Net_607),
        .interrupt(Net_608),
        .capture(1'b0),
        .kill(1'b1),
        .enable(pwm_en),
        .trigger(pwm_en),
        .cmp_sel(1'b0),
        .pwm(Net_617),
        .ph1(Net_615),
        .ph2(Net_616));
    defparam PWM_LED.Resolution = 8;

    // -- SRFF Start --
    reg  cy_srff_5;
    always @(posedge clk_bus)
    begin
        cy_srff_5 <= (Net_570 | symb_inj_done) & ~symb_inj;
    end
    assign symb_inj_done = cy_srff_5;
    // -- SRFF End --

    CyControlReg_v1_80 CREG_INIT_TX (
        .control_1(Net_578),
        .control_2(Net_579),
        .control_3(Net_580),
        .control_0(tx_init),
        .control_4(Net_582),
        .control_5(Net_583),
        .control_6(Net_584),
        .control_7(Net_585),
        .clock(1'b0),
        .reset(1'b0));
    defparam CREG_INIT_TX.Bit0Mode = 0;
    defparam CREG_INIT_TX.Bit1Mode = 0;
    defparam CREG_INIT_TX.Bit2Mode = 0;
    defparam CREG_INIT_TX.Bit3Mode = 0;
    defparam CREG_INIT_TX.Bit4Mode = 0;
    defparam CREG_INIT_TX.Bit5Mode = 0;
    defparam CREG_INIT_TX.Bit6Mode = 0;
    defparam CREG_INIT_TX.Bit7Mode = 0;
    defparam CREG_INIT_TX.BitValue = 0;
    defparam CREG_INIT_TX.BusDisplay = 0;
    defparam CREG_INIT_TX.ExtrReset = 0;
    defparam CREG_INIT_TX.NumOutputs = 1;

	wire [0:0] tmpOE__Pin_1_net;
	wire [0:0] tmpFB_0__Pin_1_net;
	wire [0:0] tmpIO_0__Pin_1_net;
	wire [0:0] tmpINTERRUPT_0__Pin_1_net;
	electrical [0:0] tmpSIOVREF__Pin_1_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
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
		Pin_1
		 (.oe(tmpOE__Pin_1_net),
		  .y({Net_617}),
		  .fb({tmpFB_0__Pin_1_net[0:0]}),
		  .io({tmpIO_0__Pin_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_1_net),
		  .interrupt({tmpINTERRUPT_0__Pin_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign pwm_en = 1'h0;

    // -- DFF Start --
    reg  cydff_29;
    always @(posedge rx_slot0)
    begin
        cydff_29 <= Net_745;
    end
    assign Net_703 = cydff_29;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_28;
    always @(posedge rx_slot0)
    begin
        cydff_28 <= Net_748;
    end
    assign Net_745 = cydff_28;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_27;
    always @(posedge rx_slot0)
    begin
        cydff_27 <= Net_750;
    end
    assign Net_748 = cydff_27;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_26;
    always @(posedge rx_slot0)
    begin
        cydff_26 <= Net_693;
    end
    assign Net_750 = cydff_26;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_25;
    always @(posedge rx_slot0)
    begin
        cydff_25 <= Net_793;
    end
    assign Net_693 = cydff_25;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_24;
    always @(posedge rx_slot0)
    begin
        cydff_24 <= Net_689;
    end
    assign Net_793 = cydff_24;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_23;
    always @(posedge rx_slot0)
    begin
        cydff_23 <= Net_791;
    end
    assign Net_689 = cydff_23;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_22;
    always @(posedge rx_slot0)
    begin
        cydff_22 <= Net_685;
    end
    assign Net_791 = cydff_22;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_21;
    always @(posedge rx_slot0)
    begin
        cydff_21 <= Net_790;
    end
    assign Net_685 = cydff_21;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_20;
    always @(posedge rx_slot0)
    begin
        cydff_20 <= Net_680;
    end
    assign Net_790 = cydff_20;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_19;
    always @(posedge rx_slot0)
    begin
        cydff_19 <= Net_789;
    end
    assign Net_680 = cydff_19;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_18;
    always @(posedge rx_slot0)
    begin
        cydff_18 <= h3;
    end
    assign Net_789 = cydff_18;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_17;
    always @(posedge rx_slot0)
    begin
        cydff_17 <= h2;
    end
    assign h3 = cydff_17;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_16;
    always @(posedge rx_slot0)
    begin
        cydff_16 <= h1;
    end
    assign h2 = cydff_16;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_15;
    always @(posedge rx_slot0)
    begin
        cydff_15 <= h0;
    end
    assign h1 = cydff_15;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_14;
    always @(posedge rx_slot0)
    begin
        cydff_14 <= Net_758;
    end
    assign h0 = cydff_14;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_13;
    always @(posedge rx_slot0)
    begin
        cydff_13 <= Net_759;
    end
    assign Net_758 = cydff_13;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_12;
    always @(posedge rx_slot0)
    begin
        cydff_12 <= Net_760;
    end
    assign Net_759 = cydff_12;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_11;
    always @(posedge rx_slot0)
    begin
        cydff_11 <= Net_761;
    end
    assign Net_760 = cydff_11;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_10;
    always @(posedge rx_slot0)
    begin
        cydff_10 <= comp_out;
    end
    assign Net_761 = cydff_10;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_30;
    always @(posedge rx_slot0)
    begin
        cydff_30 <= Net_703;
    end
    assign Net_704 = cydff_30;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_31;
    always @(posedge rx_slot0)
    begin
        cydff_31 <= Net_704;
    end
    assign Net_706 = cydff_31;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_32;
    always @(posedge rx_slot0)
    begin
        cydff_32 <= Net_706;
    end
    assign Net_708 = cydff_32;
    // -- DFF End --

    // -- DFF Start --
    reg  cydff_33;
    always @(posedge rx_slot0)
    begin
        cydff_33 <= Net_708;
    end
    assign Net_736 = cydff_33;
    // -- DFF End --


    assign Net_765 = h3 & Net_797 & h1 & h0 & Net_758 & Net_801 & Net_802 & Net_803;


    assign Net_763 = Net_693 & Net_691 & Net_689 & Net_687 & Net_685 & Net_682 & Net_680 & Net_678;


    assign Net_762 = Net_736 & Net_769 & Net_706 & Net_774 & Net_703 & Net_776 & Net_748 & Net_779;


    assign pre_detect = Net_762 & Net_763 & Net_765;


    assign Net_769 = ~Net_708;


    assign Net_774 = ~Net_704;


    assign Net_776 = ~Net_745;


    assign Net_779 = ~Net_750;


    assign Net_678 = ~Net_789;


    assign Net_682 = ~Net_790;


    assign Net_687 = ~Net_791;


    assign Net_691 = ~Net_793;


    assign Net_797 = ~h2;


    assign Net_803 = ~Net_761;


    assign Net_802 = ~Net_760;


    assign Net_801 = ~Net_759;

    CyControlReg_v1_80 CREG_RX_SLOTS1 (
        .control_1(Net_805),
        .control_2(Net_806),
        .control_3(Net_807),
        .control_0(Net_808),
        .control_4(Net_809),
        .control_5(Net_810),
        .control_6(Net_811),
        .control_7(Net_812),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_827[7:0]));
    defparam CREG_RX_SLOTS1.Bit0Mode = 0;
    defparam CREG_RX_SLOTS1.Bit1Mode = 0;
    defparam CREG_RX_SLOTS1.Bit2Mode = 0;
    defparam CREG_RX_SLOTS1.Bit3Mode = 0;
    defparam CREG_RX_SLOTS1.Bit4Mode = 0;
    defparam CREG_RX_SLOTS1.Bit5Mode = 0;
    defparam CREG_RX_SLOTS1.Bit6Mode = 0;
    defparam CREG_RX_SLOTS1.Bit7Mode = 0;
    defparam CREG_RX_SLOTS1.BitValue = 0;
    defparam CREG_RX_SLOTS1.BusDisplay = 1;
    defparam CREG_RX_SLOTS1.ExtrReset = 0;
    defparam CREG_RX_SLOTS1.NumOutputs = 8;

    CyControlReg_v1_80 CREG_RX_SLOTS2 (
        .control_1(Net_815),
        .control_2(Net_816),
        .control_3(Net_817),
        .control_0(Net_818),
        .control_4(Net_819),
        .control_5(Net_820),
        .control_6(Net_821),
        .control_7(Net_822),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_826[7:0]));
    defparam CREG_RX_SLOTS2.Bit0Mode = 0;
    defparam CREG_RX_SLOTS2.Bit1Mode = 0;
    defparam CREG_RX_SLOTS2.Bit2Mode = 0;
    defparam CREG_RX_SLOTS2.Bit3Mode = 0;
    defparam CREG_RX_SLOTS2.Bit4Mode = 0;
    defparam CREG_RX_SLOTS2.Bit5Mode = 0;
    defparam CREG_RX_SLOTS2.Bit6Mode = 0;
    defparam CREG_RX_SLOTS2.Bit7Mode = 0;
    defparam CREG_RX_SLOTS2.BitValue = 0;
    defparam CREG_RX_SLOTS2.BusDisplay = 1;
    defparam CREG_RX_SLOTS2.ExtrReset = 0;
    defparam CREG_RX_SLOTS2.NumOutputs = 8;

    assign rx_slot0 = (rx_slot_cnt[3:0] == Net_827[3:0]);

    PerCounter_8 CNT_RX_SLOTS (
        .en(Net_838),
        .reset(Net_839),
        .clk(clk_rx_slots),
        .cmp_val(Net_841[3:0]),
        .cnt(rx_slot_cnt[3:0]),
        .cmp(Net_839));

    assign Net_838 = 1'h1;


    assign clk_rx_slots = clk_slots | Net_853;

    assign Net_841[3:0] = 4'h7;


    assign Net_853 = ~clk_slots;

    CyStatusReg_v1_90 SREG_HEAD (
        .status_0(h0),
        .status_1(h1),
        .status_2(h2),
        .status_3(h3),
        .clock(clk_bus),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_878),
        .status_bus(8'b0));
    defparam SREG_HEAD.Bit0Mode = 0;
    defparam SREG_HEAD.Bit1Mode = 0;
    defparam SREG_HEAD.Bit2Mode = 0;
    defparam SREG_HEAD.Bit3Mode = 0;
    defparam SREG_HEAD.Bit4Mode = 0;
    defparam SREG_HEAD.Bit5Mode = 0;
    defparam SREG_HEAD.Bit6Mode = 0;
    defparam SREG_HEAD.Bit7Mode = 0;
    defparam SREG_HEAD.BusDisplay = 0;
    defparam SREG_HEAD.Interrupt = 0;
    defparam SREG_HEAD.MaskValue = 0;
    defparam SREG_HEAD.NumInputs = 4;

    assign rx_slot1 = (Net_827[7:4] == rx_slot_cnt[3:0]);

    Comp_v2_0_9 COMP_SLOW (
        .Vplus(adc_in),
        .CmpOut(Net_901),
        .Vminus(Net_887),
        .clock(1'b0));

    Comp_v2_0_10 COMP_FAST (
        .Vplus(adc_in),
        .CmpOut(Net_902),
        .Vminus(Net_891),
        .clock(1'b0));

    DVDAC_v2_10_12 DAC_SLOW (
        .Vout(Net_893),
        .clock(1'b0));

    DVDAC_v2_10_14 DAC_FAST (
        .Vout(Net_897),
        .clock(1'b0));

	wire [0:0] tmpOE__Pin_2_net;
	wire [0:0] tmpFB_0__Pin_2_net;
	wire [0:0] tmpIO_0__Pin_2_net;
	wire [0:0] tmpINTERRUPT_0__Pin_2_net;
	electrical [0:0] tmpSIOVREF__Pin_2_net;

	cy_psoc3_pins_v1_10
		#(.id("77715107-f8d5-47e5-a629-0fb83101ac6b"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
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
		  .pin_mode("A"),
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
		Pin_2
		 (.oe(tmpOE__Pin_2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_2_net[0:0]}),
		  .analog({Net_893}),
		  .io({tmpIO_0__Pin_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_2_net),
		  .interrupt({tmpINTERRUPT_0__Pin_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_3_net;
	wire [0:0] tmpFB_0__Pin_3_net;
	wire [0:0] tmpIO_0__Pin_3_net;
	wire [0:0] tmpINTERRUPT_0__Pin_3_net;
	electrical [0:0] tmpSIOVREF__Pin_3_net;

	cy_psoc3_pins_v1_10
		#(.id("d49052a1-abcf-496d-89b0-66851286d2e2"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
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
		  .pin_mode("A"),
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
		Pin_3
		 (.oe(tmpOE__Pin_3_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_3_net[0:0]}),
		  .analog({Net_897}),
		  .io({tmpIO_0__Pin_3_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_3_net),
		  .interrupt({tmpINTERRUPT_0__Pin_3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_4_net;
	wire [0:0] tmpFB_0__Pin_4_net;
	wire [0:0] tmpIO_0__Pin_4_net;
	wire [0:0] tmpINTERRUPT_0__Pin_4_net;
	electrical [0:0] tmpSIOVREF__Pin_4_net;

	cy_psoc3_pins_v1_10
		#(.id("8bf766a8-88f1-40c4-8f54-cd5001c5987a"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
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
		  .pin_mode("A"),
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
		Pin_4
		 (.oe(tmpOE__Pin_4_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_4_net[0:0]}),
		  .analog({Net_887}),
		  .io({tmpIO_0__Pin_4_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_4_net),
		  .interrupt({tmpINTERRUPT_0__Pin_4_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_4_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_5_net;
	wire [0:0] tmpFB_0__Pin_5_net;
	wire [0:0] tmpIO_0__Pin_5_net;
	wire [0:0] tmpINTERRUPT_0__Pin_5_net;
	electrical [0:0] tmpSIOVREF__Pin_5_net;

	cy_psoc3_pins_v1_10
		#(.id("32cbcf25-d3bd-4efd-9daf-6ccb421b8976"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
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
		  .pin_mode("A"),
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
		Pin_5
		 (.oe(tmpOE__Pin_5_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_5_net[0:0]}),
		  .analog({Net_891}),
		  .io({tmpIO_0__Pin_5_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_5_net),
		  .interrupt({tmpINTERRUPT_0__Pin_5_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_5_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


    assign comp_out = Net_901 & Net_902;

    ADC_SAR_v3_10_15 ADC_SAR (
        .vplus(adc_in),
        .vminus(Net_906),
        .soc(clk_shift),
        .eoc(Net_914),
        .aclk(1'b0),
        .vdac_ref(Net_910),
        .eos(Net_911));


	cy_dma_v1_0
		#(.drq_type(2'b00))
		DMA_AVG
		 (.drq(Net_914),
		  .trq(1'b0),
		  .nrq(Net_917));


    BasicCounter_v1_0 CNT_HEAD (
        .en(head_en),
        .cnt(Net_923[2:0]),
        .reset(1'b0),
        .clock(rx_slot0));
    defparam CNT_HEAD.Width = 3;

    assign Net_934 = (Net_923[2:0] == Net_927[2:0]);

    assign Net_927[2:0] = 3'h0;


    assign Net_933 = ~head_rest_delay;


    assign Net_939 = Net_934 & Net_933;


	cy_isr_v1_0
		#(.int_type(2'b00))
		ISR_HEADER_READ
		 (.int_signal(Net_939));


    assign head_rest_delay = 1'h0;

    assign head_en = 1'h0;

    assign head_reset = 1'h0;



endmodule

