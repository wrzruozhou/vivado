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
// File name:              edge_test_tb.v
// Last modified Date:     2024/07/11 14:44:42
// Last Version:           V1.0
// Descriptions:           
//----------------------------------------------------------------------------------------
// Created by:             WRZ
// Created date:           2024/07/11 14:44:42
// Version:                V1.0
// Descriptions:           
//                         
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module    edge_test_tb();
    reg                                        clk                        ;
    reg                                        rst_n                      ;
    reg                                        a                          ;
    wire                                       a_posedge                  ;
    wire                                       a_negedg                   ;
    wire                                       a_dege                     ;



    initial
        begin
            clk <= 1'b1;
            rst_n <= 1'b0;
            a <= 1'b0;
            #200                                             
                    rst_n <= 1'b1   ;                          
            #20                                            
                    a <= 1'b1   ;
            #100
                    a <= 1'b0;
        end                                                
              
    always # 10 clk = ~clk ;              
                                                           
                                                           
edge_test u_edge_test(
    .clk                                (clk                       ),
    .rst_n                              (rst_n                     ),
    .a                                  (a                         ),
    .a_posedge                          (a_posedge                 ),
    .a_negedg                           (a_negedg                  ),
    .a_dege                             (a_dege                    )
);




endmodule                                                  