//Packet - class/data class/ sequence item class
    // contains variables/singles/information needed by driver to execute pin level transactions


//basic structure of sequence_item class; used by components to communicate with each other and DUT

class our_packet extends uvm_sequence_item; 

    `uvm_object_utils(our_packet) //factory macro 

    //request items - Cause DUT requests inputs 
    rand bit [7:0] input_1; 
    rand bit [7:0] input_2; 

    //response items - Cause DUT responds via outputs 
    bit [15:0] output_3; 

    //constructor 
    function new(string name = "our_packet"); 

        //only one param needed for obj class constructor unlike component's constructor 

        super.new(name); 

    endfunction 

endclass 