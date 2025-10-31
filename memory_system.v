module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    
//    wire [7:0] arr_vec[3:0]; //stores 4 8-bit signals of data

    wire [7:0] data_in1, data_in2, data_in3, data_in4;
    wire [7:0] data_out1, data_out2, data_out3, data_out4;

    
    wire str1, str2, str3, str4; //store
    
//    wire [7:0] output_vec[3:0];
    
    //demux data
    demultiplexer demux (.data(data),.sel(addr),.A(data_in1),.B(data_in2),.C(data_in3),.D(data_in4));
    
    //demux store
    store_demux enable_demux (.data(store),.sel(addr),.A(str1),.B(str2),.C(str3),.D(str4));
    
    //The 4 bytes of memory
    byte_memory A (.data(data_in1),.store(str1),.memory(data_out1));
    byte_memory B (.data(data_in2),.store(str2),.memory(data_out2));
    byte_memory C (.data(data_in3),.store(str3),.memory(data_out3));
    byte_memory D (.data(data_in4),.store(str4),.memory(data_out4));

    multiplexer mux (.A(data_out1),.B(data_out2),.C(data_out3),.D(data_out4),.Sel(addr),.Y(memory));

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

endmodule