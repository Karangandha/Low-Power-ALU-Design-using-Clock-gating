module clock_gating (
    input  wire clk,
    input  wire en,
    output wire gclk
);
    reg latch;
    always @(clk or en)
        if (!clk) latch = en;  // latch enable only when clk=0
    assign gclk = clk & latch;
endmodule
