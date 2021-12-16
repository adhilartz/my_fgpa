`timescale 1ns / 1ps

module SevenSegment(input clk, 
  output [7:0]sevensegment,  
  output [2:0]enable                                          
 );
 

   reg [7:0]sevensegment_d,sevensegment_q;
   reg [2:0]enable_d,enable_q;
	
   integer bcd_count_d,bcd_count_q;
	integer delay_count_d,delay_count_q;
   
	
	assign enable = enable_q;
	assign sevensegment = sevensegment_q;
	
	reg [18:0]count = 0;
	reg clock = 0;
	
	
   always @(posedge clk)
			begin 
	        count = count + 1; 
	        clock = count[18];
		 end

   
	always @(posedge clock)
		begin
		      enable_q       = {{2{1'b1}} , 1'b0};
				sevensegment_q = {8{1'b0}};
				bcd_count_q    = 0;
				delay_count_q  = 0;
		 
		      enable_q       = enable_d;
				sevensegment_q = sevensegment_d;
				bcd_count_q    = bcd_count_d;
				delay_count_q  = delay_count_d;
		  end
	  
	 always @(*) begin
		  enable_d       = enable_q;                      
		  sevensegment_d = sevensegment_q;
		  bcd_count_d    = bcd_count_q;
		  delay_count_d  = delay_count_q;

        enable_d       = {enable_q[1:0],enable_q[2]};	
		  
	     if(delay_count_q == 200) begin
			   bcd_count_d = bcd_count_q + 1;
			   delay_count_d = 0; 
		  end
	     else
	         delay_count_d = delay_count_q + 1;
         

         // This module uses Common Anode configuration. Each display module is enabled one at a time
         // and corresponding segment data is output. 
                         
			//        a    
			//      ____
			//   f |    | b
			//     |_g__| 
			//   e |    | c
			//     |____| .h
			//       d
		   //	                          abcdefgh
			case (bcd_count_q)
			
			    0 : sevensegment_d = 8'b00000010;
				 1 : sevensegment_d = 8'b10011110;
				 2 : sevensegment_d = 8'b00100100;
				 3 : sevensegment_d = 8'b00001100;
				 4 : sevensegment_d = 8'b10011000;
				 5 : sevensegment_d = 8'b01001000;
				 6 : sevensegment_d = 8'b01000000;
				 7 : sevensegment_d = 8'b00011110;
				 8 : sevensegment_d = 8'b00000000;
				 9 : sevensegment_d = 8'b00011000;
				 default : sevensegment_d = 8'b00000010;
			 endcase
		end
endmodule
