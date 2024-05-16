class our_env extends uvm_env; 

    `uvm_component_utils(our_env)   //registering with uvm factory 


    //instantiate classes 
    our_agent agnt; 



    //constructor 
    function new (string name = "our_env", uvm_component parent = null); 

        super.new(name, parent); 

    endfunction 


// All components may not need all the phases; for the sake of reusability and modularity keeping all 3 phases in all components.


    //build phase 
    function void build_phase(uvm_phase phase);   // 'phase' used as a handle name for uvm_phase 

        //build other components 

        //build agent class here
        agnt = our_agent::type_id::create("agnt", this);   //create new agent obj

    endfunction 



    //connect phase 
    function void connect_phase(uvm_phase phase); 

        //necessary connections 

    endfunction 



    //run phase 
    task  run_phase(uvm_phase phase); 

        //main logic 

    endtask 


endclass: our_env 