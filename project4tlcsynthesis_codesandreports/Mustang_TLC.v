`timescale 1ns / 1ps

module  MustangTLC ( clk, rst_n, brake, turn_right, turn_left , right_tail_light_control, left_tail_light_control);
 //Port Declaration
input  clk, rst_n, turn_right, turn_left, brake;  
 output [0:2]  right_tail_light_control;
 output [0:2]  left_tail_light_control;
//Clock cycle count
reg [2:0] count=3'b000;
//port datatypes
 reg [0:2]  right_tail_light_control;
 reg [0:2]  left_tail_light_control;
 wire clk, rst_n, brake,turn_right, turn_left;

always @(posedge clk or negedge rst_n)
	begin
	 if(~rst_n)
	    count <= 3'b000;
	 else if(count==3'b100)
	    count <= 3'b000;
	 else
	    count <= count + 1;
	end
//Sequential Logic
 always @ (posedge clk or negedge rst_n) 
	begin
	 if (~rst_n) 
	  begin
	
        right_tail_light_control <=3'b000;
	left_tail_light_control <=3'b000;
        
	   end
	 else begin
	      if(turn_right && ~brake) //when right turn triggered
		 case(count)
	 	     3'b000: right_tail_light_control <=3'b001;
	
		     3'b001: right_tail_light_control <=3'b011;
	 
		     3'b010: right_tail_light_control <=3'b111;
	 
	 	     3'b011: right_tail_light_control <=3'b000;
	 
		 endcase
	else if(turn_left && ~brake) //when left turn triggered

	      case(count)
	 	     3'b000: left_tail_light_control <=3'b001;
	
		     3'b001: left_tail_light_control <=3'b011;
	 
		     3'b010: left_tail_light_control <=3'b111;
	 
	 	     3'b011: left_tail_light_control <=3'b000;
	 
		 endcase
	else if(brake && ~turn_right && ~turn_left) //when brake is triggered

	 begin
	  right_tail_light_control <=3'b111;
	  left_tail_light_control <=3'b111;
	end 
	else if(brake && turn_right ) //when brake and right turn is triggered
		
		case(count)
	 	     3'b000: right_tail_light_control <=3'b111;
	
		     3'b001: right_tail_light_control <=3'b110;
	 
		     3'b010: right_tail_light_control <=3'b100;
	 
	 	     3'b011: right_tail_light_control <=3'b000;
		     default: left_tail_light_control <=3'b111;
	 
		 endcase
	
	else if(brake && turn_left) //when brake and left turn is triggered
		case(count)
	 	     3'b000: left_tail_light_control <=3'b111;
	
		     3'b001: left_tail_light_control <=3'b110;
	 
		     3'b010: left_tail_light_control <=3'b100;
	 
	 	     3'b011: left_tail_light_control <=3'b000;
		     default: right_tail_light_control <=3'b111;
	 
		 endcase
   end
end
endmodule
