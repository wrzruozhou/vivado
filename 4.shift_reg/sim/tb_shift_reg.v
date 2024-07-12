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
// File name:              shift_reg_tb.v
// Last modified Date:     2024/07/10 16:32:23
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/10 16:32:23
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    shift_reg_tb();
    reg                                        sys_clk                    ;
    reg                                        sys_rst_n                  ;
    reg                                        a                          ;
    wire                                       y                          ;



    initial
        begin
            sys_clk = 1'b1;
            sys_rst_n <= 1'b0;
            a <= 1'b0;
            #200
            sys_rst_n <= 1'b1;
            #100
            a <= 1'b1;
            #100
            a <= 1'b0; 
        end                                                
                                                                                
    always # 10 sys_clk = ~sys_clk ;              
                                                           
                                                           
shift_reg u_shift_reg(
    .sys_clk                            (sys_clk                   ),
    .sys_rst_n                          (sys_rst_n                 ),
    .a                                  (a                         ),
    .y                                  (y                         )
);




endmodule                                                  