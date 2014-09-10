// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Convert_Data_Type_block1.v
// Created: 2014-09-08 14:12:04
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Convert_Data_Type_block1
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Sin_Cos/Convert_Data_Type
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Convert_Data_Type_block1
          (
           In1,
           Out1
          );


  input   signed [17:0] In1;  // sfix18_En14
  output  signed [17:0] Out1;  // sfix18_En14




  // <S34>/Data Type Conversion
  assign Out1 = In1;

endmodule  // controllerHdl_Convert_Data_Type_block1

