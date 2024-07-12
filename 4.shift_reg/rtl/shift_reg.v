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
// Last modified Date:     2024/07/09 19:01:50
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/09 19:01:50
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              shift_reg.v
// PATH:                   G:\_FPGA\4.shift_reg\rtl\shift_reg.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module shift_reg(
    input                               sys_clk                    ,
    input                               sys_rst_n                  ,
    input                               a                          ,

    output                              y                           
);

    reg                                 a_reg1                     ;
    reg                                 a_reg2                     ;
    reg                                 a_reg3                     ;
    reg                                 a_reg4                     ;

always @(posedge sys_clk or negedge sys_rst_n)
    begin
        if(!sys_rst_n)
        begin
            
                                   
            a_reg1 <= 1'b0;
            a_reg2 <= 1'b0;
            a_reg3 <= 1'b0;
            a_reg4 <= 1'b0;
            end
        else begin
            a_reg1 <= a;
            a_reg2 <= a_reg1;
            a_reg3 <= a_reg2;
            a_reg4 <= a_reg3;
        end
    end

    assign                              y                         = a_reg4;
                                                                   
                                                                   
endmodule