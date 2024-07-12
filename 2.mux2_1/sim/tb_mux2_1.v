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
// File name:              mux2_1_tb.v
// Last modified Date:     2024/07/09 14:11:27
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/09 14:11:27
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    mux2_1_tb();
    reg                                        in1                        ;
    reg                                        in2                        ;
    reg                                        sel                        ;
    wire                                       out                        ;



    initial
        begin
            #100                                             
                    in1 = 0;
                    in2 = 0;                          
                    sel = 0;
            #100                                             
                    in1 = 0;
                    in2 = 0;                          
                    sel = 1;
            #100                                             
                    in1 = 1;
                    in2 = 0;                          
                    sel = 0;
                #100                                             
                    in1 = 1;
                    in2 = 0;                          
                    sel = 1;
                #100                                             
                    in1 = 0;
                    in2 = 1;                          
                    sel = 0;
                #100                                             
                    in1 = 0;
                    in2 = 1;                          
                    sel = 1;
                #100                                             
                    in1 = 1;
                    in2 = 1;                          
                    sel = 0;
                #100                                             
                    in1 = 1;
                    in2 = 1;                          
                    sel = 1;
        end                                                
                                                           
                                                           
mux2_1 u_mux2_1(
    .in1                                (in1                       ),
    .in2                                (in2                       ),
    .sel                                (sel                       ),
    .out                                (out                       )
);




endmodule                                                  