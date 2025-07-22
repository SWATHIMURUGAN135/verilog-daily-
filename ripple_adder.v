module ripple_adder_4bit (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire c1, c2, c3;

    full_adder fa0 (a[0], b[0], cin,    sum[0], c1);
    full_adder fa1 (a[1], b[1], c1,     sum[1], c2);
    full_adder fa2 (a[2], b[2], c2,     sum[2], c3);
    full_adder fa3 (a[3], b[3], c3,     sum[3], cout);
endmodule
