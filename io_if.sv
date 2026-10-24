interface io_if(input bit eclk);
	wire [31:0]io_pad;
	
	clocking drv@(posedge eclk);
		default input #1 output #1;
		inout io_pad;
	endclocking

	clocking mon@(posedge eclk);
		default input #1 output #1;
		input io_pad;
	endclocking

	modport DRV(clocking drv);
	modport MON(clocking mon);
endinterface

