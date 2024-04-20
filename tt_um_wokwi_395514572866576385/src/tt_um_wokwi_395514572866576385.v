/* Automatically generated from https://wokwi.com/projects/395514572866576385 */

`default_nettype none

module tt_um_wokwi_395514572866576385(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = ui_in[0];
  wire net2 = ui_in[1];
  wire net3 = ui_in[2];
  wire net4 = ui_in[3];
  wire net5 = ui_in[4];
  wire net6 = ui_in[5];
  wire net7 = ui_in[6];
  wire net8 = ui_in[7];
  wire net9;
  wire net10;
  wire net11;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14;
  wire net15;
  wire net16;
  wire net17;

  assign uo_out[0] = net1;
  assign uo_out[1] = net9;
  assign uo_out[2] = net10;
  assign uo_out[3] = net11;
  assign uo_out[4] = 0;
  assign uo_out[5] = 0;
  assign uo_out[6] = 0;
  assign uo_out[7] = 0;
  assign uio_out[0] = 0;
  assign uio_oe[0] = 0;
  assign uio_out[1] = 0;
  assign uio_oe[1] = 0;
  assign uio_out[2] = 0;
  assign uio_oe[2] = 0;
  assign uio_out[3] = 0;
  assign uio_oe[3] = 0;
  assign uio_out[4] = 0;
  assign uio_oe[4] = 0;
  assign uio_out[5] = 0;
  assign uio_oe[5] = 0;
  assign uio_out[6] = 0;
  assign uio_oe[6] = 0;
  assign uio_out[7] = 0;
  assign uio_oe[7] = 0;

  xor_cell xor1 (
    .a (net1),
    .b (net5),
    .out (net9)
  );
  xor_cell xor2 (
    .a (net3),
    .b (net7),
    .out (net14)
  );
  xor_cell xor3 (
    .a (net9),
    .b (net14),
    .out (net10)
  );
  xor_cell xor4 (
    .a (net2),
    .b (net4),
    .out (net15)
  );
  xor_cell xor5 (
    .a (net6),
    .b (net8),
    .out (net16)
  );
  xor_cell xor6 (
    .a (net15),
    .b (net16),
    .out (net17)
  );
  xor_cell xor7 (
    .a (net10),
    .b (net17),
    .out (net11)
  );
endmodule