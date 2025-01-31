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
// File name:              decoder3_8_tb.v
// Last modified Date:     2024/07/09 16:34:09
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/09 16:34:09
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    decoder3_8_tb();
    reg                                        A                          ;
    reg                                        B                          ;
    reg                                        C                          ;
    wire                      [   7: 0]        out                        ;



    initial
        begin
             A = 0;B = 0;C = 0;
             #200
             A= 0 ;B = 0;C = 1;
             #200
             A= 0 ;B = 1;C = 0;
             #200
             A= 0 ;B = 1;C = 1;
             #200
             A= 1 ;B = 0;C = 0;
             #200
             A= 1 ;B = 0;C = 1;
             #200
             A= 1 ;B = 1;C = 0;
             #200
             A= 1 ;B = 1;C = 1;
        end                                                
                                                           
decoder3_8 u_decoder3_8(
    .A                                  (A                         ),
    .B                                  (B                         ),
    .C                                  (C                         ),
    .out                                (out                       )
);




endmodule                                                  