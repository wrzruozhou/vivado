`timescale 1ns / 1ns
//****************************************VSCODE PLUG-IN**********************************//
//----------------------------------------------------------------------------------------
// IDE :                   VSCODE plug-in 
// VSCODE plug-in version: Verilog-Hdl-Format-2.6.20240622
// VSCODE plug-in author : Jiang Percy
//----------------------------------------------------------------------------------------
//****************************************Copyright (c)***********************************//
// Copyright(C)            WRZ
// All rights reserved     
// File name:              flow_led_tb.v
// Last modified Date:     2024/07/16 18:30:31
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/16 18:30:31
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    flow_led_tb();
    reg                                 clk                        ;
    reg                                 rst_n                      ;
    wire               [   1: 0]        led                        ;



    initial
        begin
            clk <= 1'b0;
            rst_n <= 1'b0;
            #200
                    rst_n = 1   ;
        end
                                                           
    parameter                           CLK_FREQ                  = 20    ;//Mhz                       
    always # ( CLK_FREQ/2 ) clk = ~clk ;
                                                           
                                                           
flow_led u_flow_led(
    .clk                                (clk                       ),
    .rst_n                              (rst_n                     ),
    .led                                (led                       ) 
);




endmodule