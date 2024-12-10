module decoder#(
    parameter n = 2
)(
    input logic [n-1:0]in,
    output logic [(1 << n) - 1: 0]out
);

    always @(*)
    begin 
        case(in)
        'b00: out = 0001;
        'b01: out = 0010;
        'b10: out = 0100;
        endcase
    end

endmodule : decoder