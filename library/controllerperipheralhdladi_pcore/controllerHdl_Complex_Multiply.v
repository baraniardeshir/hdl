// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Complex_Multiply.v
// Created: 2014-09-08 14:12:04
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Complex_Multiply
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Sin_Cos/Complex_Multiply
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Complex_Multiply
          (
           In1_re,
           In1_im,
           In2_re,
           In2_im,
           Re,
           Im
          );


  input   signed [17:0] In1_re;  // sfix18_En16
  input   signed [17:0] In1_im;  // sfix18_En16
  input   signed [17:0] In2_re;  // sfix18_En16
  input   signed [17:0] In2_im;  // sfix18_En16
  output  signed [35:0] Re;  // sfix36_En32
  output  signed [35:0] Im;  // sfix36_En32


  wire signed [35:0] Product_out1;  // sfix36_En32
  wire signed [35:0] Product1_out1;  // sfix36_En32
  wire signed [35:0] Add1_out1;  // sfix36_En32
  wire signed [35:0] Product2_out1;  // sfix36_En32
  wire signed [35:0] Product3_out1;  // sfix36_En32
  wire signed [35:0] Add2_out1;  // sfix36_En32


  // <S33>/Product
  // 
  // <S33>/Complex to Real-Imag1
  // 
  // <S33>/Complex to Real-Imag2
  assign Product_out1 = In1_re * In2_re;



  // <S33>/Product1
  assign Product1_out1 = In1_im * In2_im;



  // <S33>/Add1
  assign Add1_out1 = Product_out1 - Product1_out1;



  assign Re = Add1_out1;

  // <S33>/Product2
  assign Product2_out1 = In1_re * In2_im;



  // <S33>/Product3
  assign Product3_out1 = In1_im * In2_re;



  // <S33>/Add2
  assign Add2_out1 = Product2_out1 + Product3_out1;



  assign Im = Add2_out1;

endmodule  // controllerHdl_Complex_Multiply

