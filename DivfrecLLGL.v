module DivfrecLLGL(C_50MHz,C_1Hz);
	input C_50MHz;
	output reg C_1Hz = 1;
	
	
	reg[24:0] contador =0;
	
	always @(posedge C_50MHz)
	begin 
		contador = contador+1;
		if(contador == 30_000_000)
		begin 
			contador = 0;
			C_1Hz = ~C_1Hz;
		end
	end
	
endmodule 