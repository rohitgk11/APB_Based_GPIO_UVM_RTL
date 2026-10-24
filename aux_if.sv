interface aux_if(input bit clk);
	logic [31:0]aux_in;
	
	clocking drv@(posedge clk);
		default input #1 output #1;
		output aux_in;
	endclocking

	clocking mon@(posedge clk);
		default input #1 output #1;
		input aux_in;
	endclocking

	modport DRV(clocking drv);
	modport MON(clocking mon);
endinterface

