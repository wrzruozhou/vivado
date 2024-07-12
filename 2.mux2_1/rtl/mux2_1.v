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
// Last modified Date:     2024/07/09 14:07:52
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/09 14:07:52
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              mux2_1.v
// PATH:                   G:\_FPGA\mux2_1\rtl\mux2_1.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module mux2_1(
    input                               in1                        ,
    input                               in2                        ,
    input                               sel                        ,

    output reg                          out                         
);

   // assign                              out                       = (sel == 1'b0)?in1:in2;
always @(*)           
    begin                                        
        if(sel == 1'b0)                               
                      out =      in1;                     
        else if(sel == 1'b1)
        out = in2;                                  
    end                                                                                                        
                                                                   
endmodule