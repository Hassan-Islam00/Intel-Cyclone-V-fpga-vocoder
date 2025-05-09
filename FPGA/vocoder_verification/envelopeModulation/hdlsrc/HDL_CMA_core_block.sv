// -------------------------------------------------------------
// 
// File Name: C:\Users\Hassa\Documents\GitHub\vocoder\MATLAB\MATLAB_CodeGen\codegen\envelopeModulation\hdlsrc\HDL_CMA_core_block.sv
// Created: 2024-03-28 20:55:43
// 
// Generated by MATLAB 23.2, MATLAB Coder 23.2 and HDL Coder 23.2
// 
// 
// -------------------------------------------------------------


import envelopeModulation_fixpt_pkg::* ;

// -------------------------------------------------------------
// 
// Module: HDL_CMA_core_block
// Source Path: envelopeModulation_fixpt/HDL_CMA_core
// Hierarchy Level: 1
// 
// Complex to Magnitude-Angle
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module HDL_CMA_core_block
          (  input logic clk,
             input logic reset,
             input logic enb,
             input logic signed [22:0] In_re  /* sfix23 */,
             input logic signed [22:0] In_im  /* sfix23 */,
             input logic validIn,
             output logic signed [23:0] magnitude  /* sfix24 */,
             output logic validOut);


  logic [24:0] Delay_ValidIn_reg;  /* ufix1 [25] */
  logic ValidOutDelayed;
  logic signed [23:0] qMapReal;  /* sfix24 */
  logic signed [23:0] In1Register;  /* sfix24 */
  logic signed [23:0] qMapImag;  /* sfix24 */
  logic signed [23:0] In2Register;  /* sfix24 */
  logic signed [23:0] XQMapped;  /* sfix24 */
  logic signed [23:0] yQMapped;  /* sfix24 */
  logic signed [23:0] xin1;  /* sfix24 */
  logic signed [23:0] yin1;  /* sfix24 */
  logic [5:0] shift1;  /* ufix6 */
  logic signed [23:0] xout1;  /* sfix24 */
  logic signed [23:0] yout1;  /* sfix24 */
  logic signed [23:0] xin2;  /* sfix24 */
  logic signed [23:0] yin2;  /* sfix24 */
  logic [5:0] shift2;  /* ufix6 */
  logic signed [23:0] xout2;  /* sfix24 */
  logic signed [23:0] yout2;  /* sfix24 */
  logic signed [23:0] xin3;  /* sfix24 */
  logic signed [23:0] yin3;  /* sfix24 */
  logic [5:0] shift3;  /* ufix6 */
  logic signed [23:0] xout3;  /* sfix24 */
  logic signed [23:0] yout3;  /* sfix24 */
  logic signed [23:0] xin4;  /* sfix24 */
  logic signed [23:0] yin4;  /* sfix24 */
  logic [5:0] shift4;  /* ufix6 */
  logic signed [23:0] xout4;  /* sfix24 */
  logic signed [23:0] yout4;  /* sfix24 */
  logic signed [23:0] xin5;  /* sfix24 */
  logic signed [23:0] yin5;  /* sfix24 */
  logic [5:0] shift5;  /* ufix6 */
  logic signed [23:0] xout5;  /* sfix24 */
  logic signed [23:0] yout5;  /* sfix24 */
  logic signed [23:0] xin6;  /* sfix24 */
  logic signed [23:0] yin6;  /* sfix24 */
  logic [5:0] shift6;  /* ufix6 */
  logic signed [23:0] xout6;  /* sfix24 */
  logic signed [23:0] yout6;  /* sfix24 */
  logic signed [23:0] xin7;  /* sfix24 */
  logic signed [23:0] yin7;  /* sfix24 */
  logic [5:0] shift7;  /* ufix6 */
  logic signed [23:0] xout7;  /* sfix24 */
  logic signed [23:0] yout7;  /* sfix24 */
  logic signed [23:0] xin8;  /* sfix24 */
  logic signed [23:0] yin8;  /* sfix24 */
  logic [5:0] shift8;  /* ufix6 */
  logic signed [23:0] xout8;  /* sfix24 */
  logic signed [23:0] yout8;  /* sfix24 */
  logic signed [23:0] xin9;  /* sfix24 */
  logic signed [23:0] yin9;  /* sfix24 */
  logic [5:0] shift9;  /* ufix6 */
  logic signed [23:0] xout9;  /* sfix24 */
  logic signed [23:0] yout9;  /* sfix24 */
  logic signed [23:0] xin10;  /* sfix24 */
  logic signed [23:0] yin10;  /* sfix24 */
  logic [5:0] shift10;  /* ufix6 */
  logic signed [23:0] xout10;  /* sfix24 */
  logic signed [23:0] yout10;  /* sfix24 */
  logic signed [23:0] xin11;  /* sfix24 */
  logic signed [23:0] yin11;  /* sfix24 */
  logic [5:0] shift11;  /* ufix6 */
  logic signed [23:0] xout11;  /* sfix24 */
  logic signed [23:0] yout11;  /* sfix24 */
  logic signed [23:0] xin12;  /* sfix24 */
  logic signed [23:0] yin12;  /* sfix24 */
  logic [5:0] shift12;  /* ufix6 */
  logic signed [23:0] xout12;  /* sfix24 */
  logic signed [23:0] yout12;  /* sfix24 */
  logic signed [23:0] xin13;  /* sfix24 */
  logic signed [23:0] yin13;  /* sfix24 */
  logic [5:0] shift13;  /* ufix6 */
  logic signed [23:0] xout13;  /* sfix24 */
  logic signed [23:0] yout13;  /* sfix24 */
  logic signed [23:0] xin14;  /* sfix24 */
  logic signed [23:0] yin14;  /* sfix24 */
  logic [5:0] shift14;  /* ufix6 */
  logic signed [23:0] xout14;  /* sfix24 */
  logic signed [23:0] yout14;  /* sfix24 */
  logic signed [23:0] xin15;  /* sfix24 */
  logic signed [23:0] yin15;  /* sfix24 */
  logic [5:0] shift15;  /* ufix6 */
  logic signed [23:0] xout15;  /* sfix24 */
  logic signed [23:0] yout15;  /* sfix24 */
  logic signed [23:0] xin16;  /* sfix24 */
  logic signed [23:0] yin16;  /* sfix24 */
  logic [5:0] shift16;  /* ufix6 */
  logic signed [23:0] xout16;  /* sfix24 */
  logic signed [23:0] yout16;  /* sfix24 */
  logic signed [23:0] xin17;  /* sfix24 */
  logic signed [23:0] yin17;  /* sfix24 */
  logic [5:0] shift17;  /* ufix6 */
  logic signed [23:0] xout17;  /* sfix24 */
  logic signed [23:0] yout17;  /* sfix24 */
  logic signed [23:0] xin18;  /* sfix24 */
  logic signed [23:0] yin18;  /* sfix24 */
  logic [5:0] shift18;  /* ufix6 */
  logic signed [23:0] xout18;  /* sfix24 */
  logic signed [23:0] yout18;  /* sfix24 */
  logic signed [23:0] xin19;  /* sfix24 */
  logic signed [23:0] yin19;  /* sfix24 */
  logic [5:0] shift19;  /* ufix6 */
  logic signed [23:0] xout19;  /* sfix24 */
  logic signed [23:0] yout19;  /* sfix24 */
  logic signed [23:0] xin20;  /* sfix24 */
  logic signed [23:0] yin20;  /* sfix24 */
  logic [5:0] shift20;  /* ufix6 */
  logic signed [23:0] xout20;  /* sfix24 */
  logic signed [23:0] yout20;  /* sfix24 */
  logic signed [23:0] xin21;  /* sfix24 */
  logic signed [23:0] yin21;  /* sfix24 */
  logic [5:0] shift21;  /* ufix6 */
  logic signed [23:0] xout21;  /* sfix24 */
  logic signed [23:0] yout21;  /* sfix24 */
  logic signed [23:0] xin22;  /* sfix24 */
  logic signed [23:0] yin22;  /* sfix24 */
  logic [5:0] shift22;  /* ufix6 */
  logic signed [23:0] xout22;  /* sfix24 */
  logic signed [23:0] yout22;  /* sfix24 */
  logic reset_outval;
  logic signed [23:0] xin23;  /* sfix24 */
  logic signed [39:0] CSD_Gain_Factor_mul_temp;  /* sfix40_En15 */
  logic signed [38:0] CSD_Gain_Factor_cast;  /* sfix39_En15 */
  logic signed [23:0] xoutscaled;  /* sfix24 */
  logic signed [23:0] zeroC;  /* sfix24 */
  logic signed [23:0] outSwitchMag;  /* sfix24 */
  logic signed [23:0] xin24;  /* sfix24 */
  logic validOut_1;


  always_ff @(posedge clk or posedge reset)
    begin : Delay_ValidIn_process
      if (reset == 1'b1) begin
        Delay_ValidIn_reg <= '{25{1'b0}};
      end
      else begin
        if (enb) begin
          Delay_ValidIn_reg[0] <= validIn;
          Delay_ValidIn_reg[32'sd24:32'sd1] <= Delay_ValidIn_reg[32'sd23:32'sd0];
        end
      end
    end

  assign ValidOutDelayed = Delay_ValidIn_reg[24];



  assign qMapReal = {In_re[22], In_re};



  always_ff @(posedge clk or posedge reset)
    begin : DelayRealInput_process
      if (reset == 1'b1) begin
        In1Register <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          In1Register <= qMapReal;
        end
      end
    end



  assign qMapImag = {In_im[22], In_im};



  always_ff @(posedge clk or posedge reset)
    begin : DelayImagInput_process
      if (reset == 1'b1) begin
        In2Register <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          In2Register <= qMapImag;
        end
      end
    end



  Quadrant_Mapper_block u_QuadrantMapper (.clk(clk),
                                          .reset(reset),
                                          .enb(enb),
                                          .xin(In1Register),  /* sfix24 */
                                          .yin(In2Register),  /* sfix24 */
                                          .xout(XQMapped),  /* sfix24 */
                                          .yout(yQMapped)  /* sfix24 */
                                          );

  always_ff @(posedge clk or posedge reset)
    begin : DelayQuadMapper1_process
      if (reset == 1'b1) begin
        xin1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin1 <= XQMapped;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : DelayQuadMapper2_process
      if (reset == 1'b1) begin
        yin1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin1 <= yQMapped;
        end
      end
    end



  assign shift1 = 6'b000001;



  CordicKernelMag_block u_Iteration (.xin(xin1),  /* sfix24 */
                                     .yin(yin1),  /* sfix24 */
                                     .idx(shift1),  /* ufix6 */
                                     .xout(xout1),  /* sfix24 */
                                     .yout(yout1)  /* sfix24 */
                                     );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline1_process
      if (reset == 1'b1) begin
        xin2 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin2 <= xout1;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline1_1_process
      if (reset == 1'b1) begin
        yin2 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin2 <= yout1;
        end
      end
    end



  assign shift2 = 6'b000010;



  CordicKernelMag_block u_Iteration_1 (.xin(xin2),  /* sfix24 */
                                       .yin(yin2),  /* sfix24 */
                                       .idx(shift2),  /* ufix6 */
                                       .xout(xout2),  /* sfix24 */
                                       .yout(yout2)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline2_process
      if (reset == 1'b1) begin
        xin3 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin3 <= xout2;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline2_1_process
      if (reset == 1'b1) begin
        yin3 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin3 <= yout2;
        end
      end
    end



  assign shift3 = 6'b000011;



  CordicKernelMag_block u_Iteration_2 (.xin(xin3),  /* sfix24 */
                                       .yin(yin3),  /* sfix24 */
                                       .idx(shift3),  /* ufix6 */
                                       .xout(xout3),  /* sfix24 */
                                       .yout(yout3)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline3_process
      if (reset == 1'b1) begin
        xin4 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin4 <= xout3;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline3_1_process
      if (reset == 1'b1) begin
        yin4 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin4 <= yout3;
        end
      end
    end



  assign shift4 = 6'b000100;



  CordicKernelMag_block u_Iteration_3 (.xin(xin4),  /* sfix24 */
                                       .yin(yin4),  /* sfix24 */
                                       .idx(shift4),  /* ufix6 */
                                       .xout(xout4),  /* sfix24 */
                                       .yout(yout4)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline4_process
      if (reset == 1'b1) begin
        xin5 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin5 <= xout4;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline4_1_process
      if (reset == 1'b1) begin
        yin5 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin5 <= yout4;
        end
      end
    end



  assign shift5 = 6'b000101;



  CordicKernelMag_block u_Iteration_4 (.xin(xin5),  /* sfix24 */
                                       .yin(yin5),  /* sfix24 */
                                       .idx(shift5),  /* ufix6 */
                                       .xout(xout5),  /* sfix24 */
                                       .yout(yout5)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline5_process
      if (reset == 1'b1) begin
        xin6 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin6 <= xout5;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline5_1_process
      if (reset == 1'b1) begin
        yin6 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin6 <= yout5;
        end
      end
    end



  assign shift6 = 6'b000110;



  CordicKernelMag_block u_Iteration_5 (.xin(xin6),  /* sfix24 */
                                       .yin(yin6),  /* sfix24 */
                                       .idx(shift6),  /* ufix6 */
                                       .xout(xout6),  /* sfix24 */
                                       .yout(yout6)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline6_process
      if (reset == 1'b1) begin
        xin7 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin7 <= xout6;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline6_1_process
      if (reset == 1'b1) begin
        yin7 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin7 <= yout6;
        end
      end
    end



  assign shift7 = 6'b000111;



  CordicKernelMag_block u_Iteration_6 (.xin(xin7),  /* sfix24 */
                                       .yin(yin7),  /* sfix24 */
                                       .idx(shift7),  /* ufix6 */
                                       .xout(xout7),  /* sfix24 */
                                       .yout(yout7)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline7_process
      if (reset == 1'b1) begin
        xin8 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin8 <= xout7;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline7_1_process
      if (reset == 1'b1) begin
        yin8 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin8 <= yout7;
        end
      end
    end



  assign shift8 = 6'b001000;



  CordicKernelMag_block u_Iteration_7 (.xin(xin8),  /* sfix24 */
                                       .yin(yin8),  /* sfix24 */
                                       .idx(shift8),  /* ufix6 */
                                       .xout(xout8),  /* sfix24 */
                                       .yout(yout8)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline8_process
      if (reset == 1'b1) begin
        xin9 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin9 <= xout8;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline8_1_process
      if (reset == 1'b1) begin
        yin9 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin9 <= yout8;
        end
      end
    end



  assign shift9 = 6'b001001;



  CordicKernelMag_block u_Iteration_8 (.xin(xin9),  /* sfix24 */
                                       .yin(yin9),  /* sfix24 */
                                       .idx(shift9),  /* ufix6 */
                                       .xout(xout9),  /* sfix24 */
                                       .yout(yout9)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline9_process
      if (reset == 1'b1) begin
        xin10 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin10 <= xout9;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline9_1_process
      if (reset == 1'b1) begin
        yin10 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin10 <= yout9;
        end
      end
    end



  assign shift10 = 6'b001010;



  CordicKernelMag_block u_Iteration_9 (.xin(xin10),  /* sfix24 */
                                       .yin(yin10),  /* sfix24 */
                                       .idx(shift10),  /* ufix6 */
                                       .xout(xout10),  /* sfix24 */
                                       .yout(yout10)  /* sfix24 */
                                       );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline10_process
      if (reset == 1'b1) begin
        xin11 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin11 <= xout10;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline10_1_process
      if (reset == 1'b1) begin
        yin11 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin11 <= yout10;
        end
      end
    end



  assign shift11 = 6'b001011;



  CordicKernelMag_block u_Iteration_10 (.xin(xin11),  /* sfix24 */
                                        .yin(yin11),  /* sfix24 */
                                        .idx(shift11),  /* ufix6 */
                                        .xout(xout11),  /* sfix24 */
                                        .yout(yout11)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline11_process
      if (reset == 1'b1) begin
        xin12 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin12 <= xout11;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline11_1_process
      if (reset == 1'b1) begin
        yin12 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin12 <= yout11;
        end
      end
    end



  assign shift12 = 6'b001100;



  CordicKernelMag_block u_Iteration_11 (.xin(xin12),  /* sfix24 */
                                        .yin(yin12),  /* sfix24 */
                                        .idx(shift12),  /* ufix6 */
                                        .xout(xout12),  /* sfix24 */
                                        .yout(yout12)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline12_process
      if (reset == 1'b1) begin
        xin13 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin13 <= xout12;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline12_1_process
      if (reset == 1'b1) begin
        yin13 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin13 <= yout12;
        end
      end
    end



  assign shift13 = 6'b001101;



  CordicKernelMag_block u_Iteration_12 (.xin(xin13),  /* sfix24 */
                                        .yin(yin13),  /* sfix24 */
                                        .idx(shift13),  /* ufix6 */
                                        .xout(xout13),  /* sfix24 */
                                        .yout(yout13)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline13_process
      if (reset == 1'b1) begin
        xin14 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin14 <= xout13;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline13_1_process
      if (reset == 1'b1) begin
        yin14 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin14 <= yout13;
        end
      end
    end



  assign shift14 = 6'b001110;



  CordicKernelMag_block u_Iteration_13 (.xin(xin14),  /* sfix24 */
                                        .yin(yin14),  /* sfix24 */
                                        .idx(shift14),  /* ufix6 */
                                        .xout(xout14),  /* sfix24 */
                                        .yout(yout14)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline14_process
      if (reset == 1'b1) begin
        xin15 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin15 <= xout14;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline14_1_process
      if (reset == 1'b1) begin
        yin15 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin15 <= yout14;
        end
      end
    end



  assign shift15 = 6'b001111;



  CordicKernelMag_block u_Iteration_14 (.xin(xin15),  /* sfix24 */
                                        .yin(yin15),  /* sfix24 */
                                        .idx(shift15),  /* ufix6 */
                                        .xout(xout15),  /* sfix24 */
                                        .yout(yout15)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline15_process
      if (reset == 1'b1) begin
        xin16 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin16 <= xout15;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline15_1_process
      if (reset == 1'b1) begin
        yin16 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin16 <= yout15;
        end
      end
    end



  assign shift16 = 6'b010000;



  CordicKernelMag_block u_Iteration_15 (.xin(xin16),  /* sfix24 */
                                        .yin(yin16),  /* sfix24 */
                                        .idx(shift16),  /* ufix6 */
                                        .xout(xout16),  /* sfix24 */
                                        .yout(yout16)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline16_process
      if (reset == 1'b1) begin
        xin17 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin17 <= xout16;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline16_1_process
      if (reset == 1'b1) begin
        yin17 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin17 <= yout16;
        end
      end
    end



  assign shift17 = 6'b010001;



  CordicKernelMag_block u_Iteration_16 (.xin(xin17),  /* sfix24 */
                                        .yin(yin17),  /* sfix24 */
                                        .idx(shift17),  /* ufix6 */
                                        .xout(xout17),  /* sfix24 */
                                        .yout(yout17)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline17_process
      if (reset == 1'b1) begin
        xin18 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin18 <= xout17;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline17_1_process
      if (reset == 1'b1) begin
        yin18 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin18 <= yout17;
        end
      end
    end



  assign shift18 = 6'b010010;



  CordicKernelMag_block u_Iteration_17 (.xin(xin18),  /* sfix24 */
                                        .yin(yin18),  /* sfix24 */
                                        .idx(shift18),  /* ufix6 */
                                        .xout(xout18),  /* sfix24 */
                                        .yout(yout18)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline18_process
      if (reset == 1'b1) begin
        xin19 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin19 <= xout18;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline18_1_process
      if (reset == 1'b1) begin
        yin19 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin19 <= yout18;
        end
      end
    end



  assign shift19 = 6'b010011;



  CordicKernelMag_block u_Iteration_18 (.xin(xin19),  /* sfix24 */
                                        .yin(yin19),  /* sfix24 */
                                        .idx(shift19),  /* ufix6 */
                                        .xout(xout19),  /* sfix24 */
                                        .yout(yout19)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline19_process
      if (reset == 1'b1) begin
        xin20 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin20 <= xout19;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline19_1_process
      if (reset == 1'b1) begin
        yin20 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin20 <= yout19;
        end
      end
    end



  assign shift20 = 6'b010100;



  CordicKernelMag_block u_Iteration_19 (.xin(xin20),  /* sfix24 */
                                        .yin(yin20),  /* sfix24 */
                                        .idx(shift20),  /* ufix6 */
                                        .xout(xout20),  /* sfix24 */
                                        .yout(yout20)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline20_process
      if (reset == 1'b1) begin
        xin21 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin21 <= xout20;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline20_1_process
      if (reset == 1'b1) begin
        yin21 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin21 <= yout20;
        end
      end
    end



  assign shift21 = 6'b010101;



  CordicKernelMag_block u_Iteration_20 (.xin(xin21),  /* sfix24 */
                                        .yin(yin21),  /* sfix24 */
                                        .idx(shift21),  /* ufix6 */
                                        .xout(xout21),  /* sfix24 */
                                        .yout(yout21)  /* sfix24 */
                                        );

  always_ff @(posedge clk or posedge reset)
    begin : Pipeline21_process
      if (reset == 1'b1) begin
        xin22 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin22 <= xout21;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline21_1_process
      if (reset == 1'b1) begin
        yin22 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          yin22 <= yout21;
        end
      end
    end



  assign shift22 = 6'b010110;



  CordicKernelMag_block u_Iteration_21 (.xin(xin22),  /* sfix24 */
                                        .yin(yin22),  /* sfix24 */
                                        .idx(shift22),  /* ufix6 */
                                        .xout(xout22),  /* sfix24 */
                                        .yout(yout22)  /* sfix24 */
                                        );

  assign reset_outval =  ~ ValidOutDelayed;



  always_ff @(posedge clk or posedge reset)
    begin : Pipeline22_process
      if (reset == 1'b1) begin
        xin23 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin23 <= xout22;
        end
      end
    end



  // CSD Encoding (28141) : 1001'001'00001'01'01; Cost (Adders) = 5
  assign CSD_Gain_Factor_mul_temp = (((($signed({xin23, 15'b000000000000000}) - $signed({xin23, 12'b000000000000})) - $signed({xin23, 9'b000000000})) - $signed({xin23, 4'b0000})) - $signed({xin23, 2'b00})) + xin23;
  assign CSD_Gain_Factor_cast = CSD_Gain_Factor_mul_temp[38:0];
  assign xoutscaled = CSD_Gain_Factor_cast[38:15];



  assign zeroC = 24'sb000000000000000000000000;



  assign outSwitchMag = (reset_outval == 1'b0 ? xoutscaled :
              zeroC);



  always_ff @(posedge clk or posedge reset)
    begin : Output_Register_process
      if (reset == 1'b1) begin
        xin24 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          xin24 <= outSwitchMag;
        end
      end
    end



  assign magnitude = xin24;

  always_ff @(posedge clk or posedge reset)
    begin : DelayValidOut_process
      if (reset == 1'b1) begin
        validOut_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          validOut_1 <= ValidOutDelayed;
        end
      end
    end



  assign validOut = validOut_1;

endmodule  // HDL_CMA_core_block

