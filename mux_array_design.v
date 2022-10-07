module mux_4_1(out,in,sel);

input [3:0] in;
input [1:0] sel;
output out;
assign out=in[sel];

endmodule


module mux_16(out_f,in_f,sel_f);

input [15:0]in_f;
input [3:0]sel_f;
output out_f;
wire [3:0]t;

mux_4_1 mux1(t[0],in_f[3:0],sel_f[1:0]);
mux_4_1 mux2(t[1],in_f[7:4],sel_f[1:0]);
mux_4_1 mux3(t[2],in_f[11:8],sel_f[1:0]);
mux_4_1 mux4(t[3],in_f[15:12],sel_f[1:0]);
mux_4_1 mux5(out_f,t,sel_f[3:2]);

endmodule




