`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 11:34:51 AM
// Design Name: 
// Module Name: tb_K2
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


module tb_K2;
    logic clk;
    logic resetn;
    
    core dut (.*);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin 
        resetn = 1; #10; resetn = 0; #10; resetn = 1;
        
        #37;
        

        resetn = 0; #6; resetn = 1;
        
        #40;
        
        $finish;
    end

endmodule
