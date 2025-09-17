module top #(parameter WIDTH=8)(
    input  wire clk,
    input  wire [3:0] op,
    input  wire [WIDTH-1:0] a, b,
    output wire [WIDTH-1:0] result
);
    wire gclk_arith, gclk_logic;

    // Separate enables
    wire arithmetic_enable = (op==4'b0000 || op==4'b0001 || op==4'b0111);
    wire logic_enable = (op>=4'b0010 && op<=4'b0100);

    // Instantiate clock gating
    clock_gating cg1 (.clk(clk), .en(arithmetic_enable), .gclk(gclk_arith));
    clock_gating cg2 (.clk(clk), .en(logic_enable),      .gclk(gclk_logic));

    // ALU (same module, clocked by gated clock conceptually)
    alu #(WIDTH) myalu (.op(op), .a(a), .b(b), .result(result));

endmodule
