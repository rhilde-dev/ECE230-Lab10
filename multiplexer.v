//ternary_mux_8_bits
module multiplexer(
    input [7:0] A, B, C, D, 
    input Enable,
    input [1:0] Sel,
    output [7:0] Y
    );
    
    assign Y = (Sel == 2'b00) && Enable ? A : // If 0
               (Sel == 2'b01) && Enable ? B : // If 1
               (Sel == 2'b10) && Enable ? C : 
               (Sel == 2'b11) && Enable ? D:
               8'b00000000; //If 2, then... else 3

endmodule
