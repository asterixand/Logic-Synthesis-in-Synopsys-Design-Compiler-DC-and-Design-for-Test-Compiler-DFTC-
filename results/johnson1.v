/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Sun Feb  2 12:30:00 2025
/////////////////////////////////////////////////////////////


module johnson ( clk, r, out );
  output [0:7] out;
  input clk, r;
  wire   n5, n6;

  SAEDRVT14_FDPRBQ_V2_1 out_reg_7_ ( .D(out[6]), .CK(clk), .RD(n5), .Q(out[7])
         );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_0_ ( .D(n6), .CK(clk), .RD(n5), .Q(out[0]) );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_1_ ( .D(out[0]), .CK(clk), .RD(n5), .Q(out[1])
         );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_2_ ( .D(out[1]), .CK(clk), .RD(n5), .Q(out[2])
         );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_3_ ( .D(out[2]), .CK(clk), .RD(n5), .Q(out[3])
         );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_4_ ( .D(out[3]), .CK(clk), .RD(n5), .Q(out[4])
         );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_5_ ( .D(out[4]), .CK(clk), .RD(n5), .Q(out[5])
         );
  SAEDRVT14_FDPRBQ_V2_1 out_reg_6_ ( .D(out[5]), .CK(clk), .RD(n5), .Q(out[6])
         );
  SAEDRVT14_INV_1 U9 ( .A(out[7]), .X(n6) );
  SAEDRVT14_INV_1 U10 ( .A(r), .X(n5) );
endmodule

