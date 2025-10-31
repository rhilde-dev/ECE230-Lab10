module d_latch_1_bit(
    input D, //data
    input enable,
    output reg Q,
    output NotQ
);

    always @(D, enable) begin 
        if (enable) begin
            Q <= D;
        end 
    end

    assign NotQ = ~Q; 

endmodule