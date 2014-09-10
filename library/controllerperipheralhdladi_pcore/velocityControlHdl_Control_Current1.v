// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\velocityControlHdl\velocityControlHdl_Control_Current1.v
// Created: 2014-08-25 21:11:09
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: velocityControlHdl_Control_Current1
// Source Path: velocityControlHdl/Control_DQ_Currents/Control_Current1
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module velocityControlHdl_Control_Current1
          (
           CLK_IN,
           reset,
           enb_1_2000_0,
           Reest,
           Err,
           param_current_p_gain,
           param_current_i_gain,
           Out
          );


  input   CLK_IN;
  input   reset;
  input   enb_1_2000_0;
  input   Reest;
  input   signed [17:0] Err;  // sfix18_En14
  input   signed [17:0] param_current_p_gain;  // sfix18_En10
  input   signed [17:0] param_current_i_gain;  // sfix18_En2
  output  signed [17:0] Out;  // sfix18_En12


  wire signed [35:0] Product2_out1;  // sfix36_En24
  wire signed [35:0] Convert_Data_Type1_out1;  // sfix36_En23
  wire signed [17:0] Constant2_out1;  // sfix18_En31
  wire signed [35:0] Product_out1;  // sfix36_En33
  wire signed [17:0] pre_integrator;  // sfix18_En15
  wire signed [35:0] pre_integrator_1;  // sfix36_En29
  wire signed [35:0] Constant_out1;  // sfix36_En29
  wire signed [35:0] u;  // sfix36_En23
  wire PI_Sat_out2;
  wire Clamp_out1;
  wire switch_compare_1;
  wire signed [35:0] Switch_out1;  // sfix36_En29
  wire signed [31:0] I_term;  // sfix32_En26
  wire signed [36:0] Add_add_cast;  // sfix37_En29
  wire signed [36:0] Add_add_cast_1;  // sfix37_En29
  wire signed [36:0] Add_add_temp;  // sfix37_En29
  wire signed [31:0] Add_out1;  // sfix32_En26
  wire signed [39:0] Sum1_add_cast;  // sfix40_En26
  wire signed [39:0] Sum1_add_cast_1;  // sfix40_En26
  wire signed [39:0] Sum1_add_temp;  // sfix40_En26
  wire signed [35:0] u_sat;  // sfix36_En23
  wire signed [17:0] D_Data_Type_out1;  // sfix18_En12

  // Control Current


  // <S8>/Product2
  assign Product2_out1 = param_current_p_gain * Err;



  // <S8>/Convert_Data_Type1
  velocityControlHdl_Convert_Data_Type1_block   u_Convert_Data_Type1   (.In1(Product2_out1),  // sfix36_En24
                                                                        .Out1(Convert_Data_Type1_out1)  // sfix36_En23
                                                                        );

  // <S8>/Constant2
  assign Constant2_out1 = 18'sb010100111110001011;



  // <S8>/Product
  assign Product_out1 = param_current_i_gain * Constant2_out1;



  // <S8>/Maintain_Range
  velocityControlHdl_Maintain_Range_block   u_Maintain_Range   (.In1(Product_out1),  // sfix36_En33
                                                                .Out1(pre_integrator)  // sfix18_En15
                                                                );

  // <S8>/Product1
  assign pre_integrator_1 = Err * pre_integrator;



  // <S8>/Constant
  assign Constant_out1 = 36'sh000000000;



  // <S8>/Clamp
  velocityControlHdl_Clamp_block   u_Clamp   (.preIntegrator(pre_integrator_1),  // sfix36_En29
                                              .preSat(u),  // sfix36_En23
                                              .saturated(PI_Sat_out2),
                                              .Clamp(Clamp_out1)
                                              );

  assign switch_compare_1 = (Clamp_out1 > 1'b0 ? 1'b1 :
              1'b0);



  // <S8>/Switch
  assign Switch_out1 = (switch_compare_1 == 1'b0 ? pre_integrator_1 :
              Constant_out1);



  // <S8>/Add
  assign Add_add_cast = Switch_out1;
  assign Add_add_cast_1 = {{2{I_term[31]}}, {I_term, 3'b000}};
  assign Add_add_temp = Add_add_cast + Add_add_cast_1;
  assign Add_out1 = ((Add_add_temp[36] == 1'b0) && (Add_add_temp[35:34] != 2'b00) ? 32'sb01111111111111111111111111111111 :
              ((Add_add_temp[36] == 1'b1) && (Add_add_temp[35:34] != 2'b11) ? 32'sb10000000000000000000000000000000 :
              $signed(Add_add_temp[34:3])));



  // <S8>/Reset_Delay
  velocityControlHdl_Reset_Delay_block   u_Reset_Delay   (.CLK_IN(CLK_IN),
                                                          .reset(reset),
                                                          .enb_1_2000_0(enb_1_2000_0),
                                                          .Reset_1(Reest),
                                                          .In(Add_out1),  // sfix32_En26
                                                          .Out(I_term)  // sfix32_En26
                                                          );

  // <S8>/Sum1
  assign Sum1_add_cast = {Convert_Data_Type1_out1[35], {Convert_Data_Type1_out1, 3'b000}};
  assign Sum1_add_cast_1 = I_term;
  assign Sum1_add_temp = Sum1_add_cast + Sum1_add_cast_1;
  assign u = Sum1_add_temp[38:3];



  // <S8>/PI_Sat
  velocityControlHdl_PI_Sat_block   u_PI_Sat   (.In1(u),  // sfix36_En23
                                                .Out1(u_sat),  // sfix36_En23
                                                .saturated(PI_Sat_out2)
                                                );

  // <S8>/D_Data_Type
  assign D_Data_Type_out1 = u_sat[28:11];



  assign Out = D_Data_Type_out1;

endmodule  // velocityControlHdl_Control_Current1

