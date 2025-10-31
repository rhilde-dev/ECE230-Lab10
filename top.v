module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    d_latch_1_bit part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .enable(btnC)
    );
    memory_system part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule