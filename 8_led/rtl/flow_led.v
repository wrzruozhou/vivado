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
// Last modified Date:     2024/07/16 18:21:57
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/16 18:21:57
// mail      :             2350808537@qq.com
// Version:                V1.0
// TEXT NAME:              flow_led.v
// PATH:                   G:\_FPGA\8_led\rtl\flow_led.v
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module flow_led(
    input                               clk                        ,
    input                               rst_n                      ,

    output reg         [   1: 0]        led                         
);

    reg                [  24: 0]        cnt                        ;


//对cnt进行控制
//因为时间以ns为单位，所有0.5s时间太长了，所以，最好，修改一下不要太长了
always @(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            cnt <= 25'h0;
        //else if(cnt < (25'd2500_0000 - 25'd1))
        else if(cnt < (25'd25 - 25'd1))
            cnt <= cnt + 1'b1;
        else
            cnt <= 25'b0;
    end

//对led灯进行控制
    always @(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            led <= 2'b1;
        // else if(cnt == (25'd2500_0000 - 25'd1))                              
        else if(cnt == (25'd25 - 25'd1))
            led <= {led[0],led[1]};
        else
            led <= led;
    end


                                                                   
                                                                   
endmodule