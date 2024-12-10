`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 08:47:21 AM
// Design Name: 
// Module Name: tb_counter_4bit
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


module tb_counter_4bit;
    logic clk;
    logic reset_n;
    logic load;
    logic [3:0] load_data;
    logic [3:0] count;
    
    counter_4bit_2 dut (.*);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin 
        load = 0; load_data = 4'b0; 
        reset_n = 1; #10; reset_n = 0; #10; reset_n = 1;
        
        #37;
        
        load = 1; load_data = 4'b1110; #10; load = 0;
        
        #40;
        
        reset_n = 0; #6; reset_n = 1;
        load = 1; load_data = 4'b0011; #10; load = 0;
        
        #40;
        
        $finish;
    end

endmodule
