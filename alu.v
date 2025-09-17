module alu #(parameter WIDTH = 8) (
    input  [3:0] op,
    input  [WIDTH-1:0] a, b,
    output reg [WIDTH-1:0] result
);
    always @(*) begin
        case(op)
            4'b0000: result = a + b;
            4'b0001: result = a - b;
            4'b0010: result = a & b;
            4'b0011: result = a | b;
            4'b0100: result = a ^ b;
            4'b0101: result = a << 1;
            4'b0110: result = a >> 1;
            4'b0111: result = a * b; // optional extra op
            default: result = {WIDTH{1'b0}};
        endcase
    end
endmodule
