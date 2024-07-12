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
// Last modified Date:     2024/07/11 11:51:07
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/11 11:51:07
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              count.v
// PATH:                   G:\_FPGA\5.counter\rtl\count.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module count(
    input                               sys_clk                    ,
    input                               sys_rst_n                  ,

    output reg         [  25: 0]        cnt                        ,
    output     reg                      out                         
);

    always @(posedge sys_clk or negedge sys_rst_n)
        begin
            if(!sys_rst_n)
           begin
                cnt <= 26'b0;
                out <= 1'b0;
                end
            else begin
                cnt <= cnt + 26'b1;
            if (cnt >= 26'b0010_1111_1010_1111_0000_1000_0000)
                out = 1'b1;
                else
                out = 1'b0;
                end
        end
                                                                   
                                                                   
endmodule