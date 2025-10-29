module d_latch(
    input [7:0] D, //data
    input enable,
    output reg [7:0] Q,
    output [7:0] NotQ
);

    always @(D, enable) begin //maybe or it
        if (enable)
            Q <= 1;
    end

    assign NotQ = ~Q; 

endmodule

