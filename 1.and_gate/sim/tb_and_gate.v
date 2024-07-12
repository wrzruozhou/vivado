`timescale 1ns / 1ps
//****************************************VSCODE PLUG-IN**********************************//
//----------------------------------------------------------------------------------------
// IDE :                   VSCODE plug-in 
// VSCODE plug-in version: Verilog-Hdl-Format-2.6.20240622
// VSCODE plug-in author : Jiang Percy
//----------------------------------------------------------------------------------------
//****************************************Copyright (c)***********************************//
// Copyright(C)            WRZ
// All rights reserved     
// File name:              and_gate_tb.v
// Last modified Date:     2024/07/04 18:15:26
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/04 18:15:26
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    and_gate_tb();
    reg                                        A                          ;
    reg                                        B                          ;
    wire                                       Y                          ;



    initial
        begin
            #100                                             
                A = 1'b0;
                B = 1'b0;
                #100                                             
                A = 1'b0;
                B = 1'b1;
                #100                                             
                A = 1'b1;
                B = 1'b0;
                #100                                             
                A = 1'b1;
                B = 1'b1;    
        end
and_gate u_and_gate(
    .A                                  (A                         ),
    .B                                  (B                         ),
    .Y                                  (Y                         )
);




endmodule                                                  