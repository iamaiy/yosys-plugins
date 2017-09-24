// File generic.vhd translated with vhd2vl v2.5 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 1995

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002, 2005, 2008-2010, 2015 Larry Doolittle - LBNL
//     http://doolittle.icarus.com/~larry/vhd2vl/
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

// no timescale needed

module LED_VHDL(
clk,
LED1,
LED2,
LED3,
LED4,
LED5,
LED6,
LED7,
LED8
);

input clk;
output LED1;
output LED2;
output LED3;
output LED4;
output LED5;
output LED6;
output LED7;
output LED8;

wire clk;
wire LED1;
wire LED2;
wire LED3;
wire LED4;
wire LED5;
wire LED6;
wire LED7;
wire LED8;


reg half_sec_pulse;  //signal vec2 : std_logic_vector(1 downto 0);
//constant sig : std_logic := '0';
//constant vec : std_logic_vector(3 downto 0) := "0010";
//constant hex : std_logic_vector(3 downto 0) := x"FF";
//constant int : integer := 65535;
//constant nat : natural := 15;
parameter [1:0]
  s1 = 0,
  s2 = 1,
  s3 = 2;
  //type state is (s1, s2, s3, s4, s5, s6, s7, s8);
//signal s : state := s1;

  //LED1 <= vec(1);
  //vec2 <= vec(2 downto 1);
  //vec2 <= vec(0 to 1);
  //vec2(1) <= vec(0);
  always @(posedge clk) begin
    //case state is
    //	when s1 =>
    //		state <= s2;
    //	when s2 =>
    //		state <= s3;
    //	when s3 =>
    //		state <= s1;
    //end case;
    half_sec_pulse <=  ~half_sec_pulse;
  end


endmodule
