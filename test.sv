//A dynamic compoent; Created by 'top' module

class our_test extends uvm_test;     //uvm_test is an existing uvm class 

    // our_test class extends uvm_test 
    // so 'our_test' is child class of 'uvm_test'  


    `uvm_component_utils(our_test)   //Registering our_test class with UVM Factory (a library) 


    //instantiate classes
    // 2 ways to create objs
        // 1. function 'new';
        // 2. factory 'create' method - using this here - in build phase
    
    our_env env;
    


    //constructor
    function new ( string name = "our_test", uvm_component parent = null); 

        super.new(name, parent);    //super.new() refers to parent class 'uvm_test's' constructor

    endfunction 


// All components may not need all the phases; for the sake of reusability and modularity keeping all 3 phases in all components.


    //build phase
    function void build_phase(uvm_phase phase);   // 'phase' used as a handle name for uvm_phase 

        //build other components 

        //build env class here 
            env = our_env::type_id::create("env", this); //create new env obj

    endfunction

    
    
    //connect phase 
    function void connect_phase(uvm_phase phase); 

        //necessary connections 

    endfunction 
    


    //run phase 
    task  run_phase(uvm_phase phase); 
    
    // run phase is only phase which can contains lot of time-consuming statements, hence it's a task and not a function

        // #######   main logic   #######

    endtask 


    //methods 
    //properties 

endclass 