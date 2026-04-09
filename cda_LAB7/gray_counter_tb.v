module gray_counter_tb;
    reg        clk, reset;
    wire [2:0] Q;

    gray_counter uut (
        .clk   (clk),
        .reset (reset),
        .Q     (Q)
    );

    // 10 ns period clock
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("gray_counter.vcd");
        $dumpvars(0, gray_counter_tb);

        reset = 1;
        #12;          // hold reset for just over one rising edge
        reset = 0;

        #160;         // run for more than two full counter cycles
        $finish;
    end

    initial
        $monitor("%0t  clk=%b  reset=%b  Q=%b", $time, clk, reset, Q);
endmodule
