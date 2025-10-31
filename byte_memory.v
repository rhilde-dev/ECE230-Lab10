//8 bit memory built using D latch, stores when state is high
module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] memory,
    output [7:0] n_mem
);
    
    always @(memory, store) begin
        if (store)
               
            memory <= data;
            
    end 
    
    assign n_mem = ~memory;
    
    
    
//    d_latch d_latch_8bit (.D(data), .enable(store), .Q(memory));
    
    //8 bit latch to store data
//        d_latch d_latch_8bit (
//            .D(data),
//            .enable(store),
//            .Q(memory)
//        );
        
    // Herein, implement D-Latch style memory
    // that stores the input data into memory
    // when store is high

    // Memory should always output the value
    // stored, and it should only change
    // when store is high

endmodule

