`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 10:29:59 AM
// Design Name: 
// Module Name: tb_latch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_latch;
    logic clk;
    logic reset_n;
    logic D;
    logic Q;
    logic Qn;
    
    d_latch_asyn_rstn dut (.*);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin 
        D = 0;
        reset_n = 1; #10; reset_n = 0; #10; reset_n = 1;
        
        #37;
        
        D =1; #9; D= 0; #5; D = 1;
        
        
        #40;
        
        $finish;
    end

endmodule
