`timescale 1ns / 1ps
module sinemaker(Clk,data);
    input Clk;
    output [7:0] data;	 
    reg [16:0] i;  
	 
	
    initial begin
        i = 0;
    end
    
    always@ (posedge(Clk))
    begin
        i = i+ 1;
    end
	 
	 //assign data=i[15:8];

	sin_rom uut (
		.clka(Clk), 
		.addra(i[15:11]), 
		.douta(data)
	);
endmodule
