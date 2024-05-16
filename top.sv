//A static component

`include "uvm_macros.svh"

import uvm_pkg::*; 

module top(); 

    our_interface intf(); // instantiating our interface


    our_design uut();   //instantiaion of design


    //### SET - intf ###
    initial  begin
        uvm_config_db # (virtual our_interface)::set(null, "*", "intf", intf);
    end


    initial begin 
        run_test("our_test");     //run_test(): a uvm funtion to run the test component. 
    end 

endmodule //no ; for endmodule      