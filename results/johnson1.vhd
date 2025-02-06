
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_johnson is

-- define any necessary types
type VHDLOUT_TYPE is array (0 to 7) of std_logic;

end CONV_PACK_johnson;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_johnson.all;

entity johnson is

   port( clk, r : in std_logic;  out_port : out VHDLOUT_TYPE);

end johnson;

architecture SYN_verilog of johnson is

   component SAEDRVT14_INV_1
      port( A : in std_logic;  X : out std_logic);
   end component;
   
   component SAEDRVT14_FDPRBQ_V2_1
      port( D, CK, RD : in std_logic;  Q : out std_logic);
   end component;
   
   signal out_0_port, out_1_port, out_2_port, out_3_port, out_4_port, 
      out_5_port, out_6_port, out_7_port, n5, n6 : std_logic;

begin
   out_port <= ( out_0_port, out_1_port, out_2_port, out_3_port, out_4_port, 
      out_5_port, out_6_port, out_7_port );
   
   out_reg_7_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_6_port, CK => clk,
                           RD => n5, Q => out_7_port);
   out_reg_0_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => n6, CK => clk, RD => 
                           n5, Q => out_0_port);
   out_reg_1_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_0_port, CK => clk,
                           RD => n5, Q => out_1_port);
   out_reg_2_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_1_port, CK => clk,
                           RD => n5, Q => out_2_port);
   out_reg_3_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_2_port, CK => clk,
                           RD => n5, Q => out_3_port);
   out_reg_4_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_3_port, CK => clk,
                           RD => n5, Q => out_4_port);
   out_reg_5_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_4_port, CK => clk,
                           RD => n5, Q => out_5_port);
   out_reg_6_inst : SAEDRVT14_FDPRBQ_V2_1 port map( D => out_5_port, CK => clk,
                           RD => n5, Q => out_6_port);
   U9 : SAEDRVT14_INV_1 port map( A => out_7_port, X => n6);
   U10 : SAEDRVT14_INV_1 port map( A => r, X => n5);

end SYN_verilog;
