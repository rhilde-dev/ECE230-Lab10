module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
    
    wire [7:0] arr_vec[3:0]; //stores 4 8-bit signals of data
    
    wire str[3:0]; //store
    
    //demux data
    demultiplexer demux (.data(data),.sel(addr),.A(arr_vec[0]),.B(arr_vec[1]),.C(arr_vec[2]),.D(arr_vec[3]));
    
    //demux store
    store_demux enable_demux (.data(store),.sel(addr),.A(str[0]),.B(str[1]),.C(str[2]),.D(str[3]));
    
    //The 4 bytes of memory
    byte_memory A (.data(data),.store(str[0]),.memory(arr_vec[0]));
    byte_memory B (.data(data),.store(str[1]),.memory(arr_vec[1]));
    byte_memory C (.data(data),.store(str[2]),.memory(arr_vec[2]));
    byte_memory D (.data(data),.store(str[3]),.memory(arr_vec[3]));

    multiplexer mux (.A(arr_vec[0]),.B(arr_vec[1]),.C(arr_vec[2]),.D(arr_vec[3]),.Sel(addr),.Y(memory));

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule

