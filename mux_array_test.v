module testbench;

reg [15:0]in_f;
reg [3:0]sel_f;
wire out_f;

mux_16 dut(out_f,in_f,sel_f);

initial 
begin
$monitor("in = %h, sel=%h, out=%h",in_f,sel_f,out_f);

in_f=16'hf503;
#5 sel_f=4'h2;
#5 sel_f=4'h9;
#5 sel_f=4'hf;
#5 $finish;
end
endmodule




