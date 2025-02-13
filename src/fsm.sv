module FSM
(
input logic clk, 
input logic rst,
input logic 1start,
input logic 10start,
input logic pause); 

 typdef enum logic [2:0] {CLEAR, 1RUN, 10RUN, PAUSE} State;
 
 State currentState, nextState;


  always_ff &(posedge clk)
  if(rest) currentState <= CLEAR;
  else currentState <= nextState;



  always_comb

   case(currentState)
    
    CLEAR: if(10start) nextState = 10RUN;
           else if(1start) nextState = 1RUN;
           else nextState = CLEAR;
    
    1RUN:  if(pause) nextstate = PAUSE;
           else if (rst) nextstate = CLEAR;
           else begin
             nextState = 1RUN
             //Module
           end
 
    
  

endmodule
