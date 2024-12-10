module d_latch_asyn_rstn(
    input logic clk,
    input logic reset_n,
    input logic D,
    output logic Q, 
    output logic Qn 
);
    // Used behavioural because the simulation stuck 
    always @(clk, D, reset_n) begin
        if (!reset_n)
            Q = 0;
        else if (clk)
            Q = D;
    end
    assign Qn = ~Q;
    
    // Correct solution using dataflow:
    
//    logic S, R;

//    assign S = D;
//    assign R = ~D;

//    logic nand1_o, nand2_o, Q1;
//    assign nand1_o = ~(S & clk);
//    assign nand2_o = ~(R & clk);
    
//    assign Q1 = ~(nand1_o & Qn);
//    assign Q = reset_n & Q1;
//    assign Qn = ~(nand2_o & Q);
    
endmodule                                                                                                                                                            