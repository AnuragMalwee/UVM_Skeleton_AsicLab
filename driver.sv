// sequencer class needs to be parameterized. //takes sequences and provides to the driver.

class our_driver extends  uvm_driver # (our_packet); //param 

    `uvm_component_utils(our_driver) 


    our_interface intf; // interface instantiation
    our_packet pkt;     //packet instantiation

    

    function new(string name =  "our_driver", uvm_component  parent = null); 

        super.new(name, parent); 

    endfunction 


// All components may not need all the phases; for the sake of reusability and modularity keeping all 3 phases in all components.


    //build phase 
    function void build_phase(uvm_phase phase);   // 'phase' used as a handle name for uvm_phase 

        //build other components 

        pkt = our_packet:: type_id::create("Our_Packet");

        //### GET -intf ###
            uvm_config_db # (virtual our_interface)::get(null, "*", "intf" intf);
        
    endfunction 



    //connect phase 
    function void connect_phase(uvm_phase phase); 

        //necessary connections 

    endfunction 



    //run phase 
    task  run_phase(uvm_phase phase); 

        //main logic 

        forever begin 
            @(posedge intf.clk) 

                seq_item_port.get_next_item(pkt); 

                intf.input_1 <= pkt.input_1; //non-blocking assignment 

                intf.input_2 <= pkt.input_2; //non-blocking assignment 

                seq_item_port.item_done(); 

        end 

    endtask  
 
endclass : our_driver