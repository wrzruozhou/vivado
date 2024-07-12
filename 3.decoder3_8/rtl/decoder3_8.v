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
// Last modified Date:     2024/07/09 16:29:30
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/09 16:29:30
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              decoder3_8.v
// PATH:                   G:\_FPGA\3.decoder3_8\rtl\decoder3_8.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

//module decoder3_8(
//    input                               A                        ,
//    input                               B                          ,
//    input                               C                          ,

//    output reg         [   7: 0]        out                        
//);

//wire [2:0] sel;

//assign sel ={A,B,C} ;

//    always @(*)           
//        begin                                        
//            case (sel)
//              3'b000  : out = 8'b00000001;
//              3'b001  : out = 8'b00000010;
//              3'b010  : out = 8'b00000100;
//              3'b011  : out = 8'b00001000;
//              3'b100  : out = 8'b00010000;
//              3'b101  : out = 8'b00100000;
//              3'b110  : out = 8'b01000000;
//              3'b111  : out = 8'b11111111;
//                default: ;
//            endcase  
//        end                                          
                                                                   
                                                                   
//endmodule

module latch(
input a,
input b,
output reg y
);
always@(*) begin
case (a)
0: y = b;
default : y = 0;
endcase
end
endmodule