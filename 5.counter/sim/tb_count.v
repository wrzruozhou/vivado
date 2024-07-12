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
// File name:              count_tb.v
// Last modified Date:     2024/07/11 11:53:38
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/11 11:53:38
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    count_tb();
    reg                                        sys_clk                    ;
    reg                                        sys_rst_n                  ;
    wire                      [   25: 0]        cnt                        ;
    wire out;



    initial
        begin
            sys_clk = 1'b0;
            sys_rst_n = 1'b0;
            #200
            sys_rst_n <= 1;
        end                                                
                                                        
    always # 1 sys_clk = ~sys_clk ;              
                                                           
                                                           
count u_count(
    .sys_clk                            (sys_clk                   ),
    .sys_rst_n                          (sys_rst_n                 ),
    .cnt                                (cnt                       ),
    .out    (out)
);




endmodule                                                  