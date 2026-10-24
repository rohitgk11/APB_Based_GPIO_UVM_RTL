interface apb_if(input bit clk);
	logic presetn;
	logic psel;
	logic penable;
	logic [31:0]paddr;
	logic [31:0]pwdata;
	logic pwrite;
	logic [31:0]prdata;
	logic pready;
	logic irq;

	clocking drv@(posedge clk);
		default input #1 output #1;
		output presetn;
		output psel;
		output penable;
		output paddr;
		output pwdata;
		output pwrite;
		input prdata;
		input pready;
		input irq;
	endclocking

	clocking mon@(posedge clk);
		default input #1 output #1;
		input presetn;
		input psel;
		input penable;
		input paddr;
		input pwdata;
		input pwrite;
		input prdata;
		input pready;
		input irq;
	endclocking

	modport DRV(clocking drv);
	modport MON(clocking mon);
endinterface

