module ripple_adder_tb;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    ripple_adder_4bit uut (a, b, cin, sum, cout);

    initial begin
        $display("A    B    Cin | Sum  Cout");
        $monitor("%b %b   %b   | %b   %b", a, b, cin, sum, cout);

        a = 4'b0001; b = 4'b0011; cin = 0; #10;
        a = 4'b1010; b = 4'b0110; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;

        $finish;
    end

endmodule
