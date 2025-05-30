// -------------------------------------------------------------
// 
// File Name: C:\Users\Hassa\Documents\GitHub\vocoder\MATLAB\MATLAB_CodeGen\codegen\envelopeModulation\hdlsrc\RADIX22FFT_SDF2_2_block.sv
// Created: 2024-03-28 20:55:43
// 
// Generated by MATLAB 23.2, MATLAB Coder 23.2 and HDL Coder 23.2
// 
// 
// -------------------------------------------------------------


import envelopeModulation_fixpt_pkg::* ;

// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDF2_2_block
// Source Path: envelopeModulation_fixpt/dsphdl.FFT/RADIX22FFT_SDF2_2
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDF2_2_block
          (  input logic clk,
             input logic reset,
             input logic enb,
             input logic signed [13:0] dout_1_1_re  /* sfix14 */,
             input logic signed [13:0] dout_1_1_im  /* sfix14 */,
             input logic dout_1_1_vld,
             input logic [7:0] rd_2_Addr  /* ufix8 */,
             input logic rd_2_Enb,
             input logic proc_2_enb,
             input logic multiply_2_J,
             input logic softReset,
             output logic signed [14:0] dout_2_1_re  /* sfix15 */,
             output logic signed [14:0] dout_2_1_im  /* sfix15 */,
             output logic dout_2_1_vld,
             output logic dinXTwdl_2_1_vld);


  logic signed [14:0] din_re;  /* sfix15 */
  logic signed [14:0] din_im;  /* sfix15 */
  logic btfin_vld;
  logic saveEnb;
  logic dinVld;
  logic x_vld;
  logic x_vld_dly;
  logic signed [14:0] wrData_im;  /* sfix15 */
  logic [7:0] wrAddr;  /* ufix8 */
  logic wrEnb;
  logic signed [14:0] x_im;  /* sfix15 */
  logic signed [14:0] x_im_dly;  /* sfix15 */
  logic signed [14:0] wrData_re;  /* sfix15 */
  logic signed [14:0] x_re;  /* sfix15 */
  logic signed [14:0] x_re_dly;  /* sfix15 */
  logic Radix22ButterflyG2_procEnb_dly;
  logic Radix22ButterflyG2_procEnb_dly1;
  logic Radix22ButterflyG2_procEnb_dly2;
  logic signed [15:0] Radix22ButterflyG2_btf1_re_reg;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_btf1_im_reg;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_btf2_re_reg;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_btf2_im_reg;  /* sfix16 */
  logic signed [14:0] Radix22ButterflyG2_din_re_dly;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_din_im_dly;  /* sfix15 */
  logic Radix22ButterflyG2_din_vld_dly;
  logic signed [14:0] Radix22ButterflyG2_x_re_dly;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_x_im_dly;  /* sfix15 */
  logic Radix22ButterflyG2_x_vld_dly;
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_re_dly1;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_im_dly1;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_re_dly2;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_im_dly2;  /* sfix15 */
  logic Radix22ButterflyG2_multiply_J_dly1;
  logic Radix22ButterflyG2_procEnb_dly_next;
  logic Radix22ButterflyG2_procEnb_dly1_next;
  logic Radix22ButterflyG2_procEnb_dly2_next;
  logic signed [15:0] Radix22ButterflyG2_btf1_re_reg_next;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_btf1_im_reg_next;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_btf2_re_reg_next;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_btf2_im_reg_next;  /* sfix16 */
  logic signed [14:0] Radix22ButterflyG2_din_re_dly_next;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_din_im_dly_next;  /* sfix15 */
  logic Radix22ButterflyG2_din_vld_dly_next;
  logic signed [14:0] Radix22ButterflyG2_x_re_dly_next;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_x_im_dly_next;  /* sfix15 */
  logic Radix22ButterflyG2_x_vld_dly_next;
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_re_dly1_next;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_im_dly1_next;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_re_dly2_next;  /* sfix15 */
  logic signed [14:0] Radix22ButterflyG2_dinXTwdl_im_dly2_next;  /* sfix15 */
  logic Radix22ButterflyG2_multiply_J_dly1_next;
  logic signed [14:0] xf_re;  /* sfix15 */
  logic signed [14:0] xf_im;  /* sfix15 */
  logic xf_vld;
  logic signed [14:0] dinf_re;  /* sfix15 */
  logic signed [14:0] dinf_im;  /* sfix15 */
  logic dinf_vld;
  logic signed [14:0] btf1_re;  /* sfix15 */
  logic signed [14:0] btf1_im;  /* sfix15 */
  logic signed [14:0] btf2_re;  /* sfix15 */
  logic signed [14:0] btf2_im;  /* sfix15 */
  logic btfout_vld;
  logic signed [15:0] Radix22ButterflyG2_t_0;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_1;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_2;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_3;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_4;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_5;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_6;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_7;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_8;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_9;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_10;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_11;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_12;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_13;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_14;  /* sfix16 */
  logic signed [15:0] Radix22ButterflyG2_t_15;  /* sfix16 */


  assign din_re = {dout_1_1_re[13], dout_1_1_re};



  assign din_im = {dout_1_1_im[13], dout_1_1_im};



  assign btfin_vld = dout_1_1_vld & proc_2_enb;



  assign saveEnb =  ~ btfin_vld;



  assign dinVld = dout_1_1_vld & saveEnb;



  always_ff @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        x_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld <= rd_2_Enb;
        end
      end
    end



  always_ff @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        x_vld_dly <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld_dly <= x_vld;
        end
      end
    end



  SimpleDualPortRAM_generic #(.AddrWidth(8),
                              .DataWidth(15)
                              )
                            u_dataMEM_im_0_2 (.clk(clk),
                                              .enb(enb),
                                              .wr_din(wrData_im),
                                              .wr_addr(wrAddr),
                                              .wr_en(wrEnb),
                                              .rd_addr(rd_2_Addr),
                                              .dout(x_im)
                                              );

  always_ff @(posedge clk or posedge reset)
    begin : intdelay_2_process
      if (reset == 1'b1) begin
        x_im_dly <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          x_im_dly <= x_im;
        end
      end
    end



  SimpleDualPortRAM_generic #(.AddrWidth(8),
                              .DataWidth(15)
                              )
                            u_dataMEM_re_0_2 (.clk(clk),
                                              .enb(enb),
                                              .wr_din(wrData_re),
                                              .wr_addr(wrAddr),
                                              .wr_en(wrEnb),
                                              .rd_addr(rd_2_Addr),
                                              .dout(x_re)
                                              );

  always_ff @(posedge clk or posedge reset)
    begin : intdelay_3_process
      if (reset == 1'b1) begin
        x_re_dly <= 15'sb000000000000000;
      end
      else begin
        if (enb) begin
          x_re_dly <= x_re;
        end
      end
    end



  // Radix22ButterflyG2
  always_ff @(posedge clk or posedge reset)
    begin : Radix22ButterflyG2_process
      if (reset == 1'b1) begin
        Radix22ButterflyG2_procEnb_dly <= 1'b0;
        Radix22ButterflyG2_procEnb_dly1 <= 1'b0;
        Radix22ButterflyG2_procEnb_dly2 <= 1'b0;
        Radix22ButterflyG2_btf1_re_reg <= 16'sb0000000000000000;
        Radix22ButterflyG2_btf1_im_reg <= 16'sb0000000000000000;
        Radix22ButterflyG2_btf2_re_reg <= 16'sb0000000000000000;
        Radix22ButterflyG2_btf2_im_reg <= 16'sb0000000000000000;
        Radix22ButterflyG2_din_re_dly <= 15'sb000000000000000;
        Radix22ButterflyG2_din_im_dly <= 15'sb000000000000000;
        Radix22ButterflyG2_din_vld_dly <= 1'b0;
        Radix22ButterflyG2_x_re_dly <= 15'sb000000000000000;
        Radix22ButterflyG2_x_im_dly <= 15'sb000000000000000;
        Radix22ButterflyG2_x_vld_dly <= 1'b0;
        Radix22ButterflyG2_dinXTwdl_re_dly1 <= 15'sb000000000000000;
        Radix22ButterflyG2_dinXTwdl_im_dly1 <= 15'sb000000000000000;
        Radix22ButterflyG2_dinXTwdl_re_dly2 <= 15'sb000000000000000;
        Radix22ButterflyG2_dinXTwdl_im_dly2 <= 15'sb000000000000000;
        Radix22ButterflyG2_multiply_J_dly1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Radix22ButterflyG2_procEnb_dly <= Radix22ButterflyG2_procEnb_dly_next;
          Radix22ButterflyG2_procEnb_dly1 <= Radix22ButterflyG2_procEnb_dly1_next;
          Radix22ButterflyG2_procEnb_dly2 <= Radix22ButterflyG2_procEnb_dly2_next;
          Radix22ButterflyG2_btf1_re_reg <= Radix22ButterflyG2_btf1_re_reg_next;
          Radix22ButterflyG2_btf1_im_reg <= Radix22ButterflyG2_btf1_im_reg_next;
          Radix22ButterflyG2_btf2_re_reg <= Radix22ButterflyG2_btf2_re_reg_next;
          Radix22ButterflyG2_btf2_im_reg <= Radix22ButterflyG2_btf2_im_reg_next;
          Radix22ButterflyG2_din_re_dly <= Radix22ButterflyG2_din_re_dly_next;
          Radix22ButterflyG2_din_im_dly <= Radix22ButterflyG2_din_im_dly_next;
          Radix22ButterflyG2_din_vld_dly <= Radix22ButterflyG2_din_vld_dly_next;
          Radix22ButterflyG2_x_re_dly <= Radix22ButterflyG2_x_re_dly_next;
          Radix22ButterflyG2_x_im_dly <= Radix22ButterflyG2_x_im_dly_next;
          Radix22ButterflyG2_x_vld_dly <= Radix22ButterflyG2_x_vld_dly_next;
          Radix22ButterflyG2_dinXTwdl_re_dly1 <= Radix22ButterflyG2_dinXTwdl_re_dly1_next;
          Radix22ButterflyG2_dinXTwdl_im_dly1 <= Radix22ButterflyG2_dinXTwdl_im_dly1_next;
          Radix22ButterflyG2_dinXTwdl_re_dly2 <= Radix22ButterflyG2_dinXTwdl_re_dly2_next;
          Radix22ButterflyG2_dinXTwdl_im_dly2 <= Radix22ButterflyG2_dinXTwdl_im_dly2_next;
          Radix22ButterflyG2_multiply_J_dly1 <= Radix22ButterflyG2_multiply_J_dly1_next;
        end
      end
    end

  always @(Radix22ButterflyG2_btf1_im_reg, Radix22ButterflyG2_btf1_re_reg,
       Radix22ButterflyG2_btf2_im_reg, Radix22ButterflyG2_btf2_re_reg,
       Radix22ButterflyG2_dinXTwdl_im_dly1, Radix22ButterflyG2_dinXTwdl_im_dly2,
       Radix22ButterflyG2_dinXTwdl_re_dly1, Radix22ButterflyG2_dinXTwdl_re_dly2,
       Radix22ButterflyG2_din_im_dly, Radix22ButterflyG2_din_re_dly,
       Radix22ButterflyG2_din_vld_dly, Radix22ButterflyG2_multiply_J_dly1,
       Radix22ButterflyG2_procEnb_dly, Radix22ButterflyG2_procEnb_dly1,
       Radix22ButterflyG2_procEnb_dly2, Radix22ButterflyG2_x_im_dly,
       Radix22ButterflyG2_x_re_dly, Radix22ButterflyG2_x_vld_dly, btfin_vld,
       dinVld, din_im, din_re, multiply_2_J, x_im_dly, x_re_dly, x_vld_dly) begin
    Radix22ButterflyG2_t_0 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_1 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_2 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_3 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_4 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_5 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_6 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_7 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_8 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_9 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_10 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_11 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_12 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_13 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_14 = 16'sb0000000000000000;
    Radix22ButterflyG2_t_15 = 16'sb0000000000000000;
    Radix22ButterflyG2_x_re_dly_next = x_re_dly;
    Radix22ButterflyG2_x_im_dly_next = x_im_dly;
    Radix22ButterflyG2_x_vld_dly_next = x_vld_dly;
    Radix22ButterflyG2_din_re_dly_next = din_re;
    Radix22ButterflyG2_din_im_dly_next = din_im;
    Radix22ButterflyG2_din_vld_dly_next = dinVld;
    Radix22ButterflyG2_procEnb_dly2_next = Radix22ButterflyG2_procEnb_dly1;
    Radix22ButterflyG2_procEnb_dly1_next = Radix22ButterflyG2_procEnb_dly;
    Radix22ButterflyG2_procEnb_dly_next = btfin_vld;
    if (Radix22ButterflyG2_multiply_J_dly1) begin
      Radix22ButterflyG2_t_0 = {x_re_dly[14], x_re_dly};
      Radix22ButterflyG2_t_1 = {Radix22ButterflyG2_dinXTwdl_im_dly2[14], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_t_0 + Radix22ButterflyG2_t_1;
      Radix22ButterflyG2_t_2 = {x_re_dly[14], x_re_dly};
      Radix22ButterflyG2_t_3 = {Radix22ButterflyG2_dinXTwdl_im_dly2[14], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_t_2 - Radix22ButterflyG2_t_3;
      Radix22ButterflyG2_t_4 = {x_im_dly[14], x_im_dly};
      Radix22ButterflyG2_t_5 = {Radix22ButterflyG2_dinXTwdl_re_dly2[14], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_t_4 + Radix22ButterflyG2_t_5;
      Radix22ButterflyG2_t_6 = {x_im_dly[14], x_im_dly};
      Radix22ButterflyG2_t_7 = {Radix22ButterflyG2_dinXTwdl_re_dly2[14], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_t_6 - Radix22ButterflyG2_t_7;
    end
    else begin
      Radix22ButterflyG2_t_8 = {x_re_dly[14], x_re_dly};
      Radix22ButterflyG2_t_9 = {Radix22ButterflyG2_dinXTwdl_re_dly2[14], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_t_8 + Radix22ButterflyG2_t_9;
      Radix22ButterflyG2_t_10 = {x_re_dly[14], x_re_dly};
      Radix22ButterflyG2_t_11 = {Radix22ButterflyG2_dinXTwdl_re_dly2[14], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_t_10 - Radix22ButterflyG2_t_11;
      Radix22ButterflyG2_t_12 = {x_im_dly[14], x_im_dly};
      Radix22ButterflyG2_t_13 = {Radix22ButterflyG2_dinXTwdl_im_dly2[14], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_t_12 + Radix22ButterflyG2_t_13;
      Radix22ButterflyG2_t_14 = {x_im_dly[14], x_im_dly};
      Radix22ButterflyG2_t_15 = {Radix22ButterflyG2_dinXTwdl_im_dly2[14], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_t_14 - Radix22ButterflyG2_t_15;
    end
    Radix22ButterflyG2_dinXTwdl_re_dly2_next = Radix22ButterflyG2_dinXTwdl_re_dly1;
    Radix22ButterflyG2_dinXTwdl_im_dly2_next = Radix22ButterflyG2_dinXTwdl_im_dly1;
    Radix22ButterflyG2_dinXTwdl_re_dly1_next = din_re;
    Radix22ButterflyG2_dinXTwdl_im_dly1_next = din_im;
    Radix22ButterflyG2_multiply_J_dly1_next = multiply_2_J;
    xf_re = Radix22ButterflyG2_x_re_dly;
    xf_im = Radix22ButterflyG2_x_im_dly;
    xf_vld = Radix22ButterflyG2_x_vld_dly;
    dinf_re = Radix22ButterflyG2_din_re_dly;
    dinf_im = Radix22ButterflyG2_din_im_dly;
    dinf_vld = Radix22ButterflyG2_din_vld_dly;
    btf1_re = Radix22ButterflyG2_btf1_re_reg[14:0];
    btf1_im = Radix22ButterflyG2_btf1_im_reg[14:0];
    btf2_re = Radix22ButterflyG2_btf2_re_reg[14:0];
    btf2_im = Radix22ButterflyG2_btf2_im_reg[14:0];
    btfout_vld = Radix22ButterflyG2_procEnb_dly2;
  end



  SDFCommutator2_block u_SDFCOMMUTATOR_2 (.clk(clk),
                                          .reset(reset),
                                          .enb(enb),
                                          .dout_1_1_vld(dout_1_1_vld),
                                          .xf_re(xf_re),  /* sfix15 */
                                          .xf_im(xf_im),  /* sfix15 */
                                          .xf_vld(xf_vld),
                                          .dinf_re(dinf_re),  /* sfix15 */
                                          .dinf_im(dinf_im),  /* sfix15 */
                                          .dinf_vld(dinf_vld),
                                          .btf1_re(btf1_re),  /* sfix15 */
                                          .btf1_im(btf1_im),  /* sfix15 */
                                          .btf2_re(btf2_re),  /* sfix15 */
                                          .btf2_im(btf2_im),  /* sfix15 */
                                          .btfout_vld(btfout_vld),
                                          .softReset(softReset),
                                          .wrData_re(wrData_re),  /* sfix15 */
                                          .wrData_im(wrData_im),  /* sfix15 */
                                          .wrAddr(wrAddr),  /* ufix8 */
                                          .wrEnb(wrEnb),
                                          .dout_2_1_re(dout_2_1_re),  /* sfix15 */
                                          .dout_2_1_im(dout_2_1_im),  /* sfix15 */
                                          .dout_2_1_vld(dout_2_1_vld)
                                          );

  assign dinXTwdl_2_1_vld = btfin_vld;

endmodule  // RADIX22FFT_SDF2_2_block

