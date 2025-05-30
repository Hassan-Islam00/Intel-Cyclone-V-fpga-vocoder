// -------------------------------------------------------------
// 
// File Name: C:\Users\Hassa\Documents\GitHub\vocoder\MATLAB\MATLAB_CodeGen\codegen\envelopeModulation\hdlsrc\envelopeModulation_fixpt.sv
// Created: 2024-03-28 20:55:44
// 
// Generated by MATLAB 23.2, MATLAB Coder 23.2 and HDL Coder 23.2
// 
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Design base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// yOut_re                       ce_out        1
// yOut_im                       ce_out        1
// validOut                      ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


import envelopeModulation_fixpt_pkg::* ;

// -------------------------------------------------------------
// 
// Module: envelopeModulation_fixpt
// Source Path: envelopeModulation_fixpt
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module envelopeModulation_fixpt
          #(  parameter vector_of_signed_logic_26 inpLUT [0:23] = '{13176795, 7778716, 4110060, 2086331, 1047214, 524117, 262123, 131069, 65536, 32768, 16384, 8192, 4096, 2048,
             1024, 512, 256, 128, 64, 32, 16, 8, 4, 2}  /* sfix26 [24] */,
              parameter vector_of_signed_logic_26 inpLUT_2 [0:23] = '{13176795, 7778716, 4110060, 2086331, 1047214, 524117, 262123, 131069, 65536, 32768, 16384, 8192, 4096, 2048,
             1024, 512, 256, 128, 64, 32, 16, 8, 4, 2}  /* sfix26 [24] */)
          (  input logic clk,
             input logic reset,
             input logic clk_enable,
             input logic [11:0] tMod_re  /* ufix12 */,
             input logic [11:0] tMod_im  /* ufix12 */,
             input logic [11:0] tCarr_re  /* ufix12 */,
             input logic [11:0] tCarr_im  /* ufix12 */,
             input logic validIn,
             output logic ce_out,
             output logic signed [25:0] yOut_re  /* sfix26 */,
             output logic signed [25:0] yOut_im  /* sfix26 */,
             output logic validOut);


  logic signed [22:0] varargout_1_re;  /* sfix23 */
  logic signed [22:0] varargout_1_im;  /* sfix23 */
  logic varargout_2;
  logic signed [22:0] tmp_re;  /* sfix23 */
  logic signed [22:0] tmp_im;  /* sfix23 */
  logic signed [22:0] varargout_1_re_1;  /* sfix23 */
  logic signed [22:0] varargout_1_im_1;  /* sfix23 */
  logic varargout_2_1;
  logic signed [23:0] varargout_1;  /* sfix24 */
  logic signed [25:0] varargout_2_2;  /* sfix26_En23 */
  logic varargout_3;
  logic tmp;
  logic signed [25:0] p24tmp_cast;  /* sfix26_En22 */
  logic tmp_1;
  logic signed [25:0] p29tmp_cast;  /* sfix26_En22 */
  logic needToNegate;
  logic signed [25:0] thetaPlusOnePi;  /* sfix26_En22 */
  logic signed [25:0] p45thetaPlusOnePi_add_cast;  /* sfix26_En22 */
  logic tmp_2;
  logic needToNegate_1;
  logic tmp_3;
  logic tmp_4;
  logic signed [25:0] thetaMinusOnePi;  /* sfix26_En22 */
  logic signed [25:0] p47thetaMinusOnePi_sub_cast;  /* sfix26_En22 */
  logic tmp_5;
  logic needToNegate_2;
  logic tmp_6;
  logic tmp_7;
  logic signed [22:0] tmp_re_1;  /* sfix23 */
  logic signed [22:0] tmp_im_1;  /* sfix23 */
  logic signed [23:0] varargout_1_1;  /* sfix24 */
  logic varargout_2_3;
  logic tmp_8;
  logic signed [23:0] tmp_9;  /* sfix24 */
  logic signed [25:0] uLclFm;  /* sfix26 */
  logic signed [25:0] ytmp;  /* sfix26 */
  logic tmp_10;
  logic signed [25:0] p31tmp_cast;  /* sfix26_En22 */
  logic tmp_11;
  logic signed [25:0] tmp_12;  /* sfix26_En24 */
  logic signed [25:0] p37tmp_add_cast;  /* sfix26_En22 */
  logic signed [25:0] p37tmp_add_temp;  /* sfix26_En22 */
  logic tmp_13;
  logic signed [25:0] tmp_14;  /* sfix26_En24 */
  logic signed [25:0] p43tmp_sub_cast;  /* sfix26_En22 */
  logic signed [25:0] p43tmp_sub_temp;  /* sfix26_En22 */
  logic tmp_15;
  logic signed [25:0] p26tmp_cast;  /* sfix26_En22 */
  logic signed [25:0] tmp_16;  /* sfix26_En24 */
  logic signed [25:0] tmp_17;  /* sfix26_En24 */
  logic signed [25:0] tmp_18;  /* sfix26_En24 */
  logic signed [25:0] tmp_19;  /* sfix26_En24 */
  logic signed [25:0] tmp_20;  /* sfix26_En24 */
  logic signed [25:0] tmp_21;  /* sfix26_En24 */
  logic signed [25:0] tmp_22;  /* sfix26_En24 */
  logic signed [25:0] yn;  /* sfix26 */
  logic signed [25:0] xn;  /* sfix26 */
  logic signed [25:0] tmp_23;  /* sfix26 */
  logic signed [26:0] p16tmp_1;  /* sfix27 */
  logic signed [26:0] p16tmp_2;  /* sfix27 */
  logic signed [25:0] tmp_24;  /* sfix26 */
  logic signed [25:0] yn_1;  /* sfix26 */
  logic signed [25:0] tmp_25;  /* sfix26 */
  logic signed [26:0] p17tmp_1;  /* sfix27 */
  logic signed [26:0] p17tmp_2;  /* sfix27 */
  logic signed [25:0] tmp_26;  /* sfix26 */
  logic signed [25:0] v_re;  /* sfix26 */
  logic signed [25:0] v_im;  /* sfix26 */
  logic signed [49:0] p13v_mul_temp;  /* sfix50_En23 */
  logic signed [49:0] p13v_mul_temp_1;  /* sfix50_En23 */
  logic signed [25:0] tmp_re_2;  /* sfix26 */
  logic signed [25:0] tmp_im_2;  /* sfix26 */
  logic signed [25:0] varargout_1_re_2;  /* sfix26 */
  logic signed [25:0] varargout_1_im_2;  /* sfix26 */
  logic varargout_2_4;
  logic signed [31:0] p19_idx;  /* int32 */
  logic signed [25:0] p19_xtmp;  /* sfix26 */
  logic signed [25:0] p19_ytmp;  /* sfix26 */
  logic signed [25:0] p19_tmp;  /* sfix26_En24 */
  logic signed [25:0] p19_tmp_0;  /* sfix26 */
  logic signed [25:0] p19_tmp_1;  /* sfix26 */
  logic signed [25:0] p19_tmp_2;  /* sfix26_En24 */
  logic signed [25:0] p19_tmp_3;  /* sfix26 */
  logic signed [25:0] p19_tmp_4;  /* sfix26 */
  vector_of_signed_logic_32 p19_add_temp [0:23];  /* int32 [24] */
  vector_of_signed_logic_32 p19_add_temp_0 [0:23];  /* int32 [24] */
  vector_of_unsigned_logic_8 p19_t_0 [0:23];  /* uint8 [24] */
  vector_of_unsigned_logic_8 p19_t_1 [0:23];  /* uint8 [24] */
  logic signed [31:0] p18_idx;  /* int32 */
  logic signed [25:0] p18_xtmp;  /* sfix26 */
  logic signed [25:0] p18_ytmp;  /* sfix26 */
  logic signed [25:0] p18_tmp;  /* sfix26_En24 */
  logic signed [25:0] p18_tmp_0;  /* sfix26 */
  logic signed [25:0] p18_tmp_1;  /* sfix26 */
  logic signed [25:0] p18_tmp_2;  /* sfix26_En24 */
  logic signed [25:0] p18_tmp_3;  /* sfix26 */
  logic signed [25:0] p18_tmp_4;  /* sfix26 */
  vector_of_signed_logic_32 p18_add_temp [0:23];  /* int32 [24] */
  vector_of_signed_logic_32 p18_add_temp_0 [0:23];  /* int32 [24] */
  vector_of_unsigned_logic_8 p18_t_0 [0:23];  /* uint8 [24] */
  vector_of_unsigned_logic_8 p18_t_1 [0:23];  /* uint8 [24] */


  // 'envelopeModulation_fixpt:68' [fmo_1,fmo_2] = fft128_2(yIn,validIn);
  dsphdl_FFT u_dsphdl_FFT (.clk(clk),
                           .reset(reset),
                           .enb(clk_enable),
                           .dataIn_re(tCarr_re),  /* ufix12 */
                           .dataIn_im(tCarr_im),  /* ufix12 */
                           .validIn(validIn),
                           .dataOut_re(varargout_1_re),  /* sfix23 */
                           .dataOut_im(varargout_1_im),  /* sfix23 */
                           .validOut(varargout_2)
                           );

  // 'envelopeModulation_fixpt:140' [fmo_1,fmo_2,fmo_3] = cma2(yIn,validIn);
  assign tmp_re = varargout_1_re;
  assign tmp_im = varargout_1_im;



  // 'envelopeModulation_fixpt:49' [fmo_1,fmo_2] = fft128(yIn,validIn);
  dsphdl_FFT_block u_dsphdl_FFT_1 (.clk(clk),
                                   .reset(reset),
                                   .enb(clk_enable),
                                   .dataIn_re(tMod_re),  /* ufix12 */
                                   .dataIn_im(tMod_im),  /* ufix12 */
                                   .validIn(validIn),
                                   .dataOut_re(varargout_1_re_1),  /* sfix23 */
                                   .dataOut_im(varargout_1_im_1),  /* sfix23 */
                                   .validOut(varargout_2_1)
                                   );

  HDL_CMA_core u_dsphdl_ComplexToMagnitudeAngle (.clk(clk),
                                                 .reset(reset),
                                                 .enb(clk_enable),
                                                 .In_re(tmp_re),  /* sfix23 */
                                                 .In_im(tmp_im),  /* sfix23 */
                                                 .validIn(varargout_2_1),
                                                 .magnitude(varargout_1),  /* sfix24 */
                                                 .angle(varargout_2_2),  /* sfix26_En23 */
                                                 .validOut(varargout_3)
                                                 );

  assign p24tmp_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign tmp = p24tmp_cast > 26'sb00011001001000011111101101;



  assign p29tmp_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign tmp_1 = p29tmp_cast < 26'sb11100110110111100000010011;



  assign needToNegate = 1'b0;



  assign p45thetaPlusOnePi_add_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign thetaPlusOnePi = p45thetaPlusOnePi_add_cast + 26'sb00110010010000111111011011;



  assign tmp_2 = thetaPlusOnePi >= 26'sb11100110110111100000010011;



  // HDL code generation from MATLAB function: envelopeModulation_fixpt_trueregionp32
  assign needToNegate_1 = 1'b1;



  // HDL code generation from MATLAB function: envelopeModulation_fixpt_trueregionp27
  assign tmp_3 = (tmp_2 == 1'b0 ? needToNegate :
              needToNegate_1);



  assign tmp_4 = (tmp_1 == 1'b0 ? needToNegate :
              tmp_3);



  assign p47thetaMinusOnePi_sub_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign thetaMinusOnePi = p47thetaMinusOnePi_sub_cast - 26'sb00110010010000111111011011;



  assign tmp_5 = thetaMinusOnePi <= 26'sb00011001001000011111101101;



  // HDL code generation from MATLAB function: envelopeModulation_fixpt_trueregionp38
  assign needToNegate_2 = 1'b1;



  assign tmp_6 = (tmp_5 == 1'b0 ? needToNegate :
              needToNegate_2);



  assign tmp_7 = (tmp == 1'b0 ? tmp_4 :
              tmp_6);



  // 'envelopeModulation_fixpt:122' [fmo_1,fmo_2] = cma(yIn,validIn);
  assign tmp_re_1 = varargout_1_re_1;
  assign tmp_im_1 = varargout_1_im_1;



  // HDL code generation from MATLAB function: envelopeModulation_fixpt_trueregionp50
  HDL_CMA_core_block u_dsphdl_ComplexToMagnitudeAngle_1 (.clk(clk),
                                                         .reset(reset),
                                                         .enb(clk_enable),
                                                         .In_re(tmp_re_1),  /* sfix23 */
                                                         .In_im(tmp_im_1),  /* sfix23 */
                                                         .validIn(varargout_2_1),
                                                         .magnitude(varargout_1_1),  /* sfix24 */
                                                         .validOut(varargout_2_3)
                                                         );

  // 'envelopeModulation_fixpt:141' mag = fmo_1;
  // 'envelopeModulation_fixpt:142' angle = fmo_2;
  // 'envelopeModulation_fixpt:143' validOut = fmo_3;
  // {
  // Design Note
  // executing a function multiple times does not necessarily instantiate
  // multiple hardware modules. Rather than instantiating multiple hardware
  // modules,multiple calls to a function typically update the state variable.
  // to generate multiple hardware modules corresponding to each execution of a 
  // local function, specify two different local functions with the same code 
  // but different function names. To avoid code duplication, 
  // consider using System objects to implement the behavior in the function, 
  // and instantiate the System object™ multiple times.
  // }
  // 'envelopeModulation_fixpt:85' fftCarr_mag = fmo_2;
  // 'envelopeModulation_fixpt:86' angle = fmo_3;
  // 'envelopeModulation_fixpt:87' validOut = fmo_4;
  // 'envelopeModulation_fixpt:89' if (fftCarr_mag > fftMod_mag)
  assign tmp_8 = varargout_1 > varargout_1_1;



  assign tmp_9 = (tmp_8 == 1'b0 ? varargout_1 :
              varargout_1_1);



  assign uLclFm = {{2{tmp_9[23]}}, tmp_9};



  assign ytmp = 26'sb00000000000000000000000000;



  assign p31tmp_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign tmp_10 = p31tmp_cast < 26'sb11100110110111100000010011;



  assign tmp_11 = thetaPlusOnePi >= 26'sb11100110110111100000010011;



  assign p37tmp_add_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign p37tmp_add_temp = p37tmp_add_cast + 26'sb01100100100001111110110101;
  assign tmp_12 = {p37tmp_add_temp[23:0], 2'b00};



  assign tmp_13 = thetaMinusOnePi <= 26'sb00011001001000011111101101;



  assign p43tmp_sub_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign p43tmp_sub_temp = p43tmp_sub_cast - 26'sb01100100100001111110110101;
  assign tmp_14 = {p43tmp_sub_temp[23:0], 2'b00};



  assign p26tmp_cast = {varargout_2_2[25], varargout_2_2[25:1]};
  assign tmp_15 = p26tmp_cast > 26'sb00011001001000011111101101;



  // 'envelopeModulation_fixpt:92' [fmo_5 , fmo_6] = cordicpol2cart(angle,fftCarr_mag);
  assign tmp_16 = {varargout_2_2[24:0], 1'b0};



  assign tmp_17 = {thetaPlusOnePi[23:0], 2'b00};



  assign tmp_18 = (tmp_11 == 1'b0 ? tmp_12 :
              tmp_17);



  assign tmp_19 = (tmp_10 == 1'b0 ? tmp_16 :
              tmp_18);



  assign tmp_20 = {thetaMinusOnePi[23:0], 2'b00};



  assign tmp_21 = (tmp_13 == 1'b0 ? tmp_14 :
              tmp_20);



  assign tmp_22 = (tmp_15 == 1'b0 ? tmp_19 :
              tmp_21);



  assign yn = 26'sb00000000000000000000000000;



  always @(tmp_22, uLclFm, yn, ytmp) begin
    p19_tmp_4 = 26'sb00000000000000000000000000;
    p19_tmp_3 = 26'sb00000000000000000000000000;
    p19_tmp_2 = 26'sb00000000000000000000000000;
    p19_tmp_1 = yn;
    p19_tmp_0 = uLclFm;
    p19_tmp = tmp_22;
    p19_ytmp = ytmp;
    p19_xtmp = uLclFm;

    for(p19_idx = 32'sd0; p19_idx <= 32'sd23; p19_idx = p19_idx + 32'sd1) begin
      if (p19_tmp < 26'sb00000000000000000000000000) begin
        p19_tmp_4 = p19_tmp_1 - p19_xtmp;
        p19_tmp_3 = p19_tmp_0 + p19_ytmp;
        p19_tmp_2 = p19_tmp + inpLUT[p19_idx];
      end
      else begin
        p19_tmp_4 = p19_tmp_1 + p19_xtmp;
        p19_tmp_3 = p19_tmp_0 - p19_ytmp;
        p19_tmp_2 = p19_tmp - inpLUT[p19_idx];
      end
      p19_tmp_1 = p19_tmp_4;
      p19_tmp_0 = p19_tmp_3;
      p19_tmp = p19_tmp_2;
      p19_add_temp[p19_idx] = p19_idx + 32'sd1;
      p19_t_0[p19_idx] = p19_add_temp[p19_idx][7:0];
      p19_ytmp = p19_tmp_4 >>> p19_t_0[p19_idx];
      p19_add_temp_0[p19_idx] = p19_idx + 32'sd1;
      p19_t_1[p19_idx] = p19_add_temp_0[p19_idx][7:0];
      p19_xtmp = p19_tmp_3 >>> p19_t_1[p19_idx];
    end

    xn = p19_tmp_0;
  end



  assign p16tmp_2 = {xn[25], xn};
  assign p16tmp_1 =  - (p16tmp_2);
  assign tmp_23 = p16tmp_1[25:0];



  assign tmp_24 = (tmp_7 == 1'b0 ? xn :
              tmp_23);



  always @(tmp_22, uLclFm, yn, ytmp) begin
    p18_tmp_4 = 26'sb00000000000000000000000000;
    p18_tmp_3 = 26'sb00000000000000000000000000;
    p18_tmp_2 = 26'sb00000000000000000000000000;
    p18_tmp_1 = yn;
    p18_tmp_0 = uLclFm;
    p18_tmp = tmp_22;
    p18_ytmp = ytmp;
    p18_xtmp = uLclFm;

    for(p18_idx = 32'sd0; p18_idx <= 32'sd23; p18_idx = p18_idx + 32'sd1) begin
      if (p18_tmp < 26'sb00000000000000000000000000) begin
        p18_tmp_4 = p18_tmp_1 - p18_xtmp;
        p18_tmp_3 = p18_tmp_0 + p18_ytmp;
        p18_tmp_2 = p18_tmp + inpLUT_2[p18_idx];
      end
      else begin
        p18_tmp_4 = p18_tmp_1 + p18_xtmp;
        p18_tmp_3 = p18_tmp_0 - p18_ytmp;
        p18_tmp_2 = p18_tmp - inpLUT_2[p18_idx];
      end
      p18_tmp_1 = p18_tmp_4;
      p18_tmp_0 = p18_tmp_3;
      p18_tmp = p18_tmp_2;
      p18_add_temp[p18_idx] = p18_idx + 32'sd1;
      p18_t_0[p18_idx] = p18_add_temp[p18_idx][7:0];
      p18_ytmp = p18_tmp_4 >>> p18_t_0[p18_idx];
      p18_add_temp_0[p18_idx] = p18_idx + 32'sd1;
      p18_t_1[p18_idx] = p18_add_temp_0[p18_idx][7:0];
      p18_xtmp = p18_tmp_3 >>> p18_t_1[p18_idx];
    end

    yn_1 = p18_tmp_1;
  end



  assign p17tmp_2 = {yn_1[25], yn_1};
  assign p17tmp_1 =  - (p17tmp_2);
  assign tmp_25 = p17tmp_1[25:0];



  assign tmp_26 = (tmp_7 == 1'b0 ? yn_1 :
              tmp_25);



  assign p13v_mul_temp = tmp_24 * 24'sb010011011011101001110111;
  assign v_re = p13v_mul_temp[48:23];
  assign p13v_mul_temp_1 = tmp_26 * 24'sb010011011011101001110111;
  assign v_im = p13v_mul_temp_1[48:23];



  // 'envelopeModulation_fixpt:104' [fmo_1,fmo_2] = ifft128(yIn,validIn);
  assign tmp_re_2 = v_re;
  assign tmp_im_2 = v_im;



  dsphdl_IFFT u_dsphdl_IFFT (.clk(clk),
                             .reset(reset),
                             .enb(clk_enable),
                             .dataIn_re(tmp_re_2),  /* sfix26 */
                             .dataIn_im(tmp_im_2),  /* sfix26 */
                             .validIn(varargout_3),
                             .dataOut_re(varargout_1_re_2),  /* sfix26 */
                             .dataOut_im(varargout_1_im_2),  /* sfix26 */
                             .validOut(varargout_2_4)
                             );

  assign yOut_re = varargout_1_re_2;

  assign yOut_im = varargout_1_im_2;

  assign validOut = varargout_2_4;

  assign ce_out = clk_enable;

endmodule  // envelopeModulation_fixpt

