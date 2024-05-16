// sequencer class needs to be parameterized.
//takes sequences and provides to the driver.

class our_sequencer extends uvm_sequencer #(our_packet); //param

    `uvm_component_utils(our_sequencer) 

    function new(string name =  "our_sequencer", uvm_component  parent = null); 

        super.new(name, parent); 

    endfunction 



// All components may not need all the phases; for the sake of reusability and modularity keeping all 3 phases in all components.


 
    //build phase 
    function void build_phase(uvm_phase phase);   // 'phase' used as a handle name for uvm_phase 

        //build other components 

    endfunction 



    //connect phase 
    function void connect_phase(uvm_phase phase); 

        //necessary connections 

    endfunction 



    //run phase 
    task  run_phase(uvm_phase phase); 

        //main logic 

    endtask 
 

endclass : our_sequencer