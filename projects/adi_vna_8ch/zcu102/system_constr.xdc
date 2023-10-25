###############################################################################

## Copyright (C) 2023-2023 Analog Devices, Inc. All rights reserved.

### SPDX short identifier: ADIBSD

###############################################################################

###############################################################################
# AD9083
###############################################################################

# ref clock
set_property  -dict {PACKAGE_PIN  G8}                       [get_ports ref_clk0_p]         ; ##  D04  FMC_HPC0 GBTCLK0 M2C_C_P
set_property  -dict {PACKAGE_PIN  G7}                       [get_ports ref_clk0_n]         ; ##  D05  FMC_HPC0_GBTCLK0_M2C_C_N

# device clock
set_property  -dict {PACKAGE_PIN  Y4  IOSTANDARD LVDS}      [get_ports glblclk_p]          ; ##  G06  FMC_HPC0_LA00_CC_P
set_property  -dict {PACKAGE_PIN  Y3  IOSTANDARD LVDS}      [get_ports glblclk_n]          ; ##  G07  FMC_HPC0_LA00_CC_N

set_property  -dict {PACKAGE_PIN  H2}                       [get_ports rx_data_p[0]]       ; ##  C06  FMC_HPC0_DP0_M2C_P
set_property  -dict {PACKAGE_PIN  H1}                       [get_ports rx_data_n[0]]       ; ##  C07  FMC_HPC0_DP0_M2C_N
set_property  -dict {PACKAGE_PIN  J4}                       [get_ports rx_data_p[1]]       ; ##  A02  FMC_HPC0_DP1_M2C_P
set_property  -dict {PACKAGE_PIN  J3}                       [get_ports rx_data_n[1]]       ; ##  A03  FMC_HPC0_DP1_M2C_N
set_property  -dict {PACKAGE_PIN  F2}                       [get_ports rx_data_p[2]]       ; ##  A06  FMC_HPC0_DP2_M2C_P
set_property  -dict {PACKAGE_PIN  F1}                       [get_ports rx_data_n[2]]       ; ##  A07  FMC_HPC0_DP2_M2C_N
set_property  -dict {PACKAGE_PIN  K2}                       [get_ports rx_data_p[3]]       ; ##  A10  FMC_HPC0_DP3_M2C_P
set_property  -dict {PACKAGE_PIN  K1}                       [get_ports rx_data_n[3]]       ; ##  A11  FMC_HPC0_DP3_M2C_N

set_property  -dict {PACKAGE_PIN  AA2  IOSTANDARD LVDS}     [get_ports rx_sync_p]          ; ##  H10  FMC_HPC0_LA04_P
set_property  -dict {PACKAGE_PIN  AA1  IOSTANDARD LVDS}     [get_ports rx_sync_n]          ; ##  H11  FMC_HPC0_LA04_N

set_property  -dict {PACKAGE_PIN  V4   IOSTANDARD LVDS}     [get_ports sysrefadc_p]        ; ##  G12  FMC_HPC0_LA08_P
set_property  -dict {PACKAGE_PIN  V3   IOSTANDARD LVDS}     [get_ports sysrefadc_n]        ; ##  G13  FMC_HPC0_LA08_N

set_property  -dict {PACKAGE_PIN  V1   IOSTANDARD LVCMOS18} [get_ports pd]                 ; ##  H08  FMC_HPC0_LA02_N
set_property  -dict {PACKAGE_PIN  U5   IOSTANDARD LVCMOS18} [get_ports rstb]               ; ##  H13  FMC_HPC0_LA07_P

# SPI
set_property  -dict {PACKAGE_PIN  V2   IOSTANDARD LVCMOS18} [get_ports fpga_csb]           ; ##  H07  FMC_HPC0_LA02_P
set_property  -dict {PACKAGE_PIN  AB4  IOSTANDARD LVCMOS18} [get_ports fpga_sck]           ; ##  D08  FMC_HPC0_LA01_CC_P
set_property  -dict {PACKAGE_PIN  AC4  IOSTANDARD LVCMOS18} [get_ports fpga_sdio]          ; ##  D09  FMC_HPC0_LA01_CC_N
set_property  -dict {PACKAGE_PIN  M10  IOSTANDARD LVCMOS18} [get_ports fpga_sdo]           ; ##  C26  FMC_HPC0_LA27_P

set_property  -dict {PACKAGE_PIN  U6    IOSTANDARD LVCMOS18} [get_ports spiad_sck]         ; ##  H35  FMC_HPC0_LA30_N
set_property  -dict {PACKAGE_PIN  T6    IOSTANDARD LVCMOS18} [get_ports spiad_sdi]         ; ##  H32  FMC_HPC0_LA28_N
set_property  -dict {PACKAGE_PIN  U11   IOSTANDARD LVCMOS18} [get_ports spiad_sdo]         ; ##  H37  FMC_HPC0_LA32_P
set_property  -dict {PACKAGE_PIN  L13   IOSTANDARD LVCMOS18} [get_ports adcmon_csb]        ; ##  H22  FMC_HPC0_LA19_P

###############################################################################
# AD9173
###############################################################################

# ref clock
set_property  -dict {PACKAGE_PIN  L8}                       [get_ports br40_ext_p]         ; ##  B20  FMC_HPC0_GBTCLK1_M2C_C_P
set_property  -dict {PACKAGE_PIN  L7}                       [get_ports br40_ext_n]         ; ##  B21  FMC_HPC0_GBTCLK1_M2C_C_N

#set_property  -dict {PACKAGE_PIN  G4}                       [get_ports dac_data_p[7]]      ; ##  C02  FMC_HPC0_DP0_C2M_P       SERDESP<7>  swapped polarity
#set_property  -dict {PACKAGE_PIN  G3}                       [get_ports dac_data_n[7]]      ; ##  C03  FMC_HPC0_DP0_C2M_N       SERDESN<7>  swapped polarity
#set_property  -dict {PACKAGE_PIN  H6}                       [get_ports dac_data_p[6]]      ; ##  A22  FMC_HPC0_DP1_C2M_P       SERDESP<6>
#set_property  -dict {PACKAGE_PIN  H5}                       [get_ports dac_data_n[6]]      ; ##  A23  FMC_HPC0_DP1_C2M_N       SERDESN<6>
#set_property  -dict {PACKAGE_PIN  F6}                       [get_ports dac_data_p[5]]      ; ##  A26  FMC_HPC0_DP2_C2M_P       SERDESP<5>
#set_property  -dict {PACKAGE_PIN  F5}                       [get_ports dac_data_n[5]]      ; ##  A27  FMC_HPC0_DP2_C2M_N       SERDESN<5>
#set_property  -dict {PACKAGE_PIN  K6}                       [get_ports dac_data_p[4]]      ; ##  A30  FMC_HPC0_DP3_C2M_P       SERDESP<4>
#set_property  -dict {PACKAGE_PIN  K5}                       [get_ports dac_data_n[4]]      ; ##  A31  FMC_HPC0_DP3_C2M_N       SERDESN<4>
set_property  -dict {PACKAGE_PIN  N4}                       [get_ports dac_data_p[3]]      ; ##  B32  FMC_HPC0_DP7_C2M_P       SERDESN<3>  swapped polarity
set_property  -dict {PACKAGE_PIN  N3}                       [get_ports dac_data_n[3]]      ; ##  B33  FMC_HPC0_DP7_C2M_N       SERDESP<3>  swapped polarity
set_property  -dict {PACKAGE_PIN  M6}                       [get_ports dac_data_p[2]]      ; ##  A34  FMC_HPC0_DP4_C2M_P       SERDESN<2>
set_property  -dict {PACKAGE_PIN  M5}                       [get_ports dac_data_n[2]]      ; ##  A35  FMC_HPC0_DP4_C2M_N       SERDESP<2>
set_property  -dict {PACKAGE_PIN  R4}                       [get_ports dac_data_p[1]]      ; ##  B36  FMC_HPC0_DP6_C2M_P       SERDESN<1>  swapped polarity
set_property  -dict {PACKAGE_PIN  R3}                       [get_ports dac_data_n[1]]      ; ##  B37  FMC_HPC0_DP6_C2M_N       SERDESP<1>  swapped polarity
set_property  -dict {PACKAGE_PIN  P6}                       [get_ports dac_data_p[0]]      ; ##  A38  FMC_HPC0_DP5_C2M_P       SERDESN<0>  swapped polarity
set_property  -dict {PACKAGE_PIN  P5}                       [get_ports dac_data_n[0]]      ; ##  A39  FMC_HPC0_DP5_C2M_N       SERDESP<0>  swapped polarity

set_property  -dict {PACKAGE_PIN  V8   IOSTANDARD LVDS}     [get_ports sync0_n]            ; ##  G33  FMC_HPC0_LA31_P  #P/N swapped polarity
set_property  -dict {PACKAGE_PIN  V7   IOSTANDARD LVDS}     [get_ports sync0_p]            ; ##  G34  FMC_HPC0_LA31_N

set_property  -dict {PACKAGE_PIN  V12  IOSTANDARD LVDS}     [get_ports sync1_n]            ; ##  G36  FMC_HPC0_LA33_P  #P/N swapped polarity
set_property  -dict {PACKAGE_PIN  V11  IOSTANDARD LVDS}     [get_ports sync1_p]            ; ##  G37  FMC_HPC0_LA33_N

set_property  -dict {PACKAGE_PIN  AA7  IOSTANDARD LVDS}     [get_ports sysrefdac_p]        ; ##  H04  FMC_HPC0_CLK0_M2C_P
set_property  -dict {PACKAGE_PIN  AA6  IOSTANDARD LVDS}     [get_ports sysrefdac_n]        ; ##  H05  FMC_HPC0_CLK0_M2C_N

# SPI
set_property  -dict {PACKAGE_PIN  Y10  IOSTANDARD LVCMOS18} [get_ports fmcdac_sck]         ; ##  H19  FMC_HPC0_LA15_P
set_property  -dict {PACKAGE_PIN  AB5  IOSTANDARD LVCMOS18} [get_ports fmcdac_mosi]        ; ##  H17  FMC_HPC0_LA11_N
set_property  -dict {PACKAGE_PIN  Y9   IOSTANDARD LVCMOS18} [get_ports fmcdac_miso]        ; ##  H20  FMC_HPC0_LA15_N
set_property  -dict {PACKAGE_PIN  AB6  IOSTANDARD LVCMOS18} [get_ports fmcdac_cs1]         ; ##  H16  FMC_HPC0_LA11_P

###############################################################################
# AD9528
###############################################################################

# set_property  -dict {PACKAGE_PIN  U8   IOSTANDARD LVCMOS18} [get_ports fpga_adclk_refsel]  ; ##  G31  FMC_HPC0_LA29_N

###############################################################################
# GPIOs
###############################################################################

set_property  -dict {PACKAGE_PIN  AB3  IOSTANDARD LVCMOS18} [get_ports lmix_rstn]          ; ##  D11  FMC_HPC0_LA05_P
set_property  -dict {PACKAGE_PIN  AC8  IOSTANDARD LVCMOS18} [get_ports smix_rstn]          ; ##  D18  FMC_HPC0_LA13_N

set_property  -dict {PACKAGE_PIN  N11  IOSTANDARD LVCMOS18} [get_ports adl5960x_sync1]     ; ##  D21  FMC_HPC0_LA17_N_CC

set_property  -dict {PACKAGE_PIN  Y2   IOSTANDARD LVCMOS18} [get_ports adcmon_rstn]        ; ##  G9  FMC_HPC0_LA03_P

set_property  -dict {PACKAGE_PIN  V6   IOSTANDARD LVCMOS18} [get_ports adccnv]             ; ##  H34  FMC_HPC0_LA30_P

set_property  -dict {PACKAGE_PIN  T11   IOSTANDARD LVCMOS18} [get_ports spare_gpiox]       ; ##  H38  FMC_HPC0_LA32_N

###############################################################################
# SPIs
###############################################################################

set_property  -dict {PACKAGE_PIN  Y12  IOSTANDARD LVCMOS18} [get_ports fpga_bus0_sck]           ; ##  G18  FMC_HPC0_LA16_P
set_property  -dict {PACKAGE_PIN  W7   IOSTANDARD LVCMOS18} [get_ports fpga_bus0_sdi]           ; ##  G15  FMC_HPC0_LA12_P
set_property  -dict {PACKAGE_PIN  W6   IOSTANDARD LVCMOS18} [get_ports fpga_bus0_sdo]           ; ##  G16  FMC_HPC0_LA12_N
set_property  -dict {PACKAGE_PIN  N13  IOSTANDARD LVCMOS18} [get_ports fpga_bus0_cs_4372]       ; ##  G21  FMC_HPC0_LA20_P
set_property  -dict {PACKAGE_PIN  U4   IOSTANDARD LVCMOS18} [get_ports fpga_bus0_csb_9528]      ; ##  H14  FMC_HPC0_LA07_N
set_property  -dict {PACKAGE_PIN  M13  IOSTANDARD LVCMOS18 PULLUP TRUE} [get_ports seq_shdnn]   ; ##  G22  FMC_HPC0_LA20_N

set_property  -dict {PACKAGE_PIN  M11  IOSTANDARD LVCMOS18} [get_ports fpga_bus1_sck]       ; ##  G27  FMC_HPC0_LA25_P
set_property  -dict {PACKAGE_PIN  M15  IOSTANDARD LVCMOS18} [get_ports fpga_bus1_sdi]       ; ##  G24  FMC_HPC0_LA22_P
set_property  -dict {PACKAGE_PIN  M14  IOSTANDARD LVCMOS18} [get_ports fpga_bus1_sdo]       ; ##  G25  FMC_HPC0_LA22_N
set_property  -dict {PACKAGE_PIN  L11  IOSTANDARD LVCMOS18} [get_ports fpga_bus1_cs1]       ; ##  G28  FMC_HPC0_LA25_N
set_property  -dict {PACKAGE_PIN  U9   IOSTANDARD LVCMOS18} [get_ports fpga_bus1_cs2]       ; ##  G30  FMC_HPC0_LA29_P
set_property  -dict {PACKAGE_PIN  Y1   IOSTANDARD LVCMOS18} [get_ports fpga_gpio_csb]       ; ##  G10  FMC_HPC0_LA03_N*

set_property  -dict {PACKAGE_PIN  W1   IOSTANDARD LVCMOS18} [get_ports spim_sck]           ; ##  D15  FMC_HPC0_LA09_N
set_property  -dict {PACKAGE_PIN  W2   IOSTANDARD LVCMOS18} [get_ports spim_mosi]          ; ##  D14  FMC_HPC0_LA09_P
set_property  -dict {PACKAGE_PIN  AB8  IOSTANDARD LVCMOS18} [get_ports spim_miso]          ; ##  D17  FMC_HPC0_LA13_P
set_property  -dict {PACKAGE_PIN  AC3  IOSTANDARD LVCMOS18} [get_ports spim_csb_sig]       ; ##  D12  FMC_HPC0_LA05_N
set_property  -dict {PACKAGE_PIN  P11  IOSTANDARD LVCMOS18} [get_ports spim_csb_lo]        ; ##  D20  FMC_HPC0_LA17_P_CC

set_property  -dict {PACKAGE_PIN  L16  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_sck]  ; ##  D23  FMC_HPC0_LA23_P
set_property  -dict {PACKAGE_PIN  K16  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_sdio] ; ##  D24  FMC_HPC0_LA23_N
set_property  -dict {PACKAGE_PIN  L15  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn1] ; ##  D26  FMC_HPC0_LA26_P
set_property  -dict {PACKAGE_PIN  K15  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn2] ; ##  D27  FMC_HPC0_LA26_N
set_property  -dict {PACKAGE_PIN  AC2  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn3] ; ##  C10  FMC_HPC0_LA06_P
set_property  -dict {PACKAGE_PIN  AC1  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn4] ; ##  C11  FMC_HPC0_LA06_N
set_property  -dict {PACKAGE_PIN  W5   IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn5] ; ##  C14  FMC_HPC0_LA10_P
set_property  -dict {PACKAGE_PIN  W4   IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn6] ; ##  C15  FMC_HPC0_LA10_N
set_property  -dict {PACKAGE_PIN  AC7  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn7] ; ##  C18  FMC_HPC0_LA14_P
set_property  -dict {PACKAGE_PIN  AC6  IOSTANDARD LVCMOS18} [get_ports spi_adl5960_1_csn8] ; ##  C19  FMC_HPC0_LA14_N

set_property  -dict {PACKAGE_PIN  K13  IOSTANDARD LVCMOS18} [get_ports fpga_busf_sfl]      ; ##  H23  FMC_HPC0_LA19_N
set_property  -dict {PACKAGE_PIN  P12  IOSTANDARD LVCMOS18} [get_ports fpga_busf_csb]      ; ##  H25  FMC_HPC0_LA21_P
set_property  -dict {PACKAGE_PIN  N12  IOSTANDARD LVCMOS18} [get_ports fpga_busf_sdo]      ; ##  H26  FMC_HPC0_LA21_N
set_property  -dict {PACKAGE_PIN  L12  IOSTANDARD LVCMOS18} [get_ports fpga_busf_sdi]      ; ##  H28  FMC_HPC0_LA24_P
set_property  -dict {PACKAGE_PIN  K12  IOSTANDARD LVCMOS18} [get_ports fpga_busf_sck]      ; ##  H29  FMC_HPC0_LA24_N

set_property  -dict {PACKAGE_PIN  L10  IOSTANDARD LVCMOS18} [get_ports ndac_sck]           ; ##  C27  FMC_HPC0_LA27_N
set_property  -dict {PACKAGE_PIN  T7   IOSTANDARD LVCMOS18} [get_ports ndac_csb]           ; ##  H31  FMC_HPC0_LA28_P
set_property  -dict {PACKAGE_PIN  AA12 IOSTANDARD LVCMOS18} [get_ports ndac_sdi]           ; ##  G19  FMC_HPC0_LA16_N

# fix xcvr location assignment
set_property LOC GTHE4_CHANNEL_X1Y10  [get_cells -hierarchical -filter {NAME =~ *util_ad9083_xcvr/inst/i_xch_0/i_gthe4_channel}]


