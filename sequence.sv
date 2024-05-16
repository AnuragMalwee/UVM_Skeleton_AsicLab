// Sequence uvm-object class
    //randomizes the packet class and sends it to driver using sequencer.

class our_sequence extends uvm_sequence; 

    `uvm_object_utils(our_sequence) //factory macro 

    
    function new(string name = "our_sequence"); 
        super.new(name); 
    endfunction 

    
    task body(); 
    //7. Sequence class utilizes packet class to generate stimulus

        pkt = our_packet::type_id::create("Our_Packet");

        repeat(10)
        begin
            start_item(pkt);
                pkt.randomize(); 
            finish_item(pkt);
        end

    endtask 

endclass 