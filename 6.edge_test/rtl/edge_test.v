`timescale 1ns / 1ps
//****************************************VSCODE PLUG-IN**********************************//
//----------------------------------------------------------------------------------------
// IDE :                   VSCODE     
// VSCODE plug-in version: Verilog-Hdl-Format-2.6.20240622
// VSCODE plug-in author : Jiang Percy
//----------------------------------------------------------------------------------------
//****************************************Copyright (c)***********************************//
// Copyright(C)            WRZ
// All rights reserved     
// File name:              
// Last modified Date:     2024/07/11 14:40:44
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/11 14:40:44
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              edge_test.v
// PATH:                   G:\_FPGA\6.edge_test\rtl\edge_test.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module edge_test(
    input                               clk                        ,
    input                               rst_n                      ,
    input a,

    output a_posedge,
    output a_negedg,
    output a_dege
);

//define reg
reg a_dly;

    always @(posedge clk or negedge rst_n)           
        begin                                        
            if(!rst_n)                               
                a_dly <= 1'b0;                                                           
            else                                     
            a_dly <= a;
        end 
                                            
    assign a_posedge = a&~a_dly;
    assign a_negedg = ~a&a_dly;
    assign a_dege = a^a_dly;
                                                                   
                                                                   
endmodule