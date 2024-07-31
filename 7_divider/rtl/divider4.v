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
// Last modified Date:     2024/07/13 16:41:39
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/13 16:41:39
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              divider4.v
// PATH:                   G:\_FPGA\7_divider\rtl\divider4.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module divider4(
    input                               clk                        ,
    input                               rst_n                      ,

    output reg                          out                         
);

    reg                [   1: 0]        cnt                        ;

    always @(posedge clk or negedge rst_n)
        begin
            if(!rst_n)
                cnt <= 2'b0;
            else if(cnt == 2'b1)
            cnt <= 0;
            else
            cnt <= cnt + 1;
        end
                                        
        always @(posedge clk or negedge rst_n)
            begin
                if(!rst_n)
                    out <= 0;
                else if(cnt == 2'b1)
                    out <= ~out;
            end
                                                                   
endmodule