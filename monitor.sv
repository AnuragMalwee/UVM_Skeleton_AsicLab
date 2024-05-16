class our_monitor extends  uvm_monitor 

    `uvm_component_utils(our_monitor) 

    
    our_interface intf; //interface instantiation

    our_packet pkt;     // packet instantiation

    uvm_analysis_port # (our_sequence) mon_port; //packet class name = our_sequence


    function new(string name =  "our_monitor", uvm_component  parent = null); 

        super.new(name, parent); 

    endfunction 


// All components may not need all the phases; for the sake of reusability and modularity keeping all 3 phases in all components.


    //build phase 
    function void build_phase(uvm_phase phase);   // 'phase' used as a handle name for uvm_phase 

        //build other components 
        
        pkt = our_packet::type_id::create("Our Packet");

        //### GET - intf ###
        uvm_config_db #(virtual our_interface)::get(null, "*", "intf", intf)

        mon_port = new("Monitor Port", this);   //driver and sequencer - already have a port built into them (?). We can just connect them to appropriate ports.

    endfunction 



    //connect phase 
    function void connect_phase(uvm_phase phase); 

        //necessary connections 

    endfunction 



    //run phase 
    task  run_phase(uvm_phase phase); 

        //main logic 

        forever begin 
        
            @(posedge intf.clk); 

            pkt.input_1 <= intf.input_1; 
            pkt.input_2 <= intf.input_2; 

        end 

    endtask 

 
endclass : our_monitor