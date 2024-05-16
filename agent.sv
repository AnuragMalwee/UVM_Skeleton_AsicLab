class our_agent extends uvm_agent; 

    `uvm_component_utils(our_agent)   //registering with uvm factory 

    //instantiate classes 
    our_sequencer     seqr; 
    our_driver        drv; 
    our_monitor       mon; 


    //constructor 
    function new (string name = "our_agent", uvm_component parent = null); 

        super.new(name,parent); 

    endfunction 
    

// All components may not need all the phases; for the sake of reusability and modularity keeping all 3 phases in all components.


    //build phase 
    function void build_phase(uvm_phase phase);   // 'phase' used as a handle name for uvm_phase 

        //build other components 

        //build sequencer, driver, monitor class here 

        seqr = our_sequencer::type_id::create("seqr", this);   //create new agent obj 
        drv = our_driver::type_id::create("drv", this);   //create new driver obj 
        mon = our_monitor::type_id::create("mon", this);   //create new monitor obj 

    endfunction 



    //connect phase 
    function void connect_phase(uvm_phase phase); 

        //necessary connections 

            drv.seq_item_port.connect(seqr.seq_item_export)
                
                //name_of_port (in built port) of driver = seq_item_port 
                //name_of_port (in built port) of sequencer = seq_item_export 

    endfunction 



    //run phase 
    task  run_phase(uvm_phase phase); 

        //main logic 

    endtask 


endclass: our_agent 