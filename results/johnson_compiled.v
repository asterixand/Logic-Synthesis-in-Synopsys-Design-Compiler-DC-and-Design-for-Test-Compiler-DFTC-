/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP5-5
// Date      : Mon Aug 13 07:27:05 2018
/////////////////////////////////////////////////////////////


module johnson ( clk, r, out );
  output [0:7] out;
  input clk, r;
  wire   n1, n2;

  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_7_ ( .D(out[6]), .CK(clk), .RD(n1), .Q(
        out[7]) );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_0_ ( .D(n2), .CK(clk), .RD(n1), .Q(out[0])
         );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_1_ ( .D(out[0]), .CK(clk), .RD(n1), .Q(
        out[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_2_ ( .D(out[1]), .CK(clk), .RD(n1), .Q(
        out[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_3_ ( .D(out[2]), .CK(clk), .RD(n1), .Q(
        out[3]) );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_4_ ( .D(out[3]), .CK(clk), .RD(n1), .Q(
        out[4]) );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_5_ ( .D(out[4]), .CK(clk), .RD(n1), .Q(
        out[5]) );
  SAEDRVT14_FDPRBQ_V2_0P5 out_reg_6_ ( .D(out[5]), .CK(clk), .RD(n1), .Q(
        out[6]) );
  SAEDRVT14_INV_S_0P75 U3 ( .A(r), .X(n1) );
  SAEDRVT14_INV_1 U5 ( .A(out[7]), .X(n2) );
endmodule

