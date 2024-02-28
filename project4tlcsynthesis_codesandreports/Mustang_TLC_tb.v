`timescale 1ns / 1ps

module Mustang_TLC_tb();
//
//Parameter Declarations
//
parameter finishtime=5;

//
//DUT INPUTS
//
reg clk;
reg rst_n;
reg brake;
reg turn_right;
reg turn_left;
//DUT OUTPUTS

wire [2:0] right_tail_light_control;
wire [2:0] left_tail_light_control;

//DUT INSTANCES
 MustangTLC DUT( .clk(clk), .rst_n(rst_n), .brake(brake), .turn_right(turn_right), .turn_left(turn_left), .right_tail_light_control(right_tail_light_control), .left_tail_light_control(left_tail_light_control));


 // Clock Generation
  always begin
    #50 clk = ~clk;
  end

  // Output Monitor
  always @(right_tail_light_control, left_tail_light_control,brake) begin
    $display("At time %t: right_tail_light_control=%b, left_tail_light_control=%b",
             $time, right_tail_light_control, left_tail_light_control);
  end
 
  // Function to Compare Expected and Actual Outputs
  task compare_outputs(input [2:0] exp_right, input [2:0] exp_left);
    if (right_tail_light_control !== exp_right || left_tail_light_control !== exp_left) begin
      $display("ERROR: Expected right_tail_light_control=%b, left_tail_light_control=%b; Got %b, %b",
               exp_right, exp_left, right_tail_light_control, left_tail_light_control);
        end else begin
	 $display("PASSED:At time %t,Expected and Actual Outputs match.",$time);
    end
  endtask

  initial begin
    clk = 0;
    rst_n = 0;
    brake = 0;
    turn_right = 0;
    turn_left = 0;
   
    #100 rst_n = 1;
   
    // Test right turn only
    #50 turn_right = 1; #50 compare_outputs(3'b001, 3'b000);
    #100 compare_outputs(3'b011, 3'b000);
    #100 compare_outputs(3'b111, 3'b000);
    #100 compare_outputs(3'b000, 3'b000);
    #100 turn_right = 0;

    // Test left turn only
    #50 turn_left = 1; #25 compare_outputs(3'b000, 3'b001);
    #100 compare_outputs(3'b000, 3'b011);
    #100 compare_outputs(3'b000, 3'b111);
    #100 compare_outputs(3'b000, 3'b000);
    #100 turn_left = 0;

    // Test brake only
    #50 brake = 1; #50 compare_outputs(3'b111, 3'b111);
    #50 brake = 0;

    // Test brake and right turn
    #50 brake = 1; turn_right = 1; #25 compare_outputs(3'b111, 3'b111);
    #50 compare_outputs(3'b110, 3'b111);
    #100 compare_outputs(3'b100, 3'b111);
    #100 compare_outputs(3'b000, 3'b111);
    

    // Test brake and left turn
    #50 brake = 1; turn_left = 1; #100 compare_outputs(3'b111, 3'b111);
    #100 compare_outputs(3'b110, 3'b111);
    #100 compare_outputs(3'b100, 3'b111);
    #100 compare_outputs(3'b000, 3'b111);
    #100 brake = 0; turn_left = 0;
   
    $finish;
  end

endmodule


