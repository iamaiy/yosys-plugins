library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity LED_VHDL is
Port (
	clk : in  STD_LOGIC;
	LED1 : out  STD_LOGIC;
	LED2 : out  STD_LOGIC;
	LED3 : out  STD_LOGIC;
	LED4 : out  STD_LOGIC;
	LED5 : out  STD_LOGIC;
	LED6 : out  STD_LOGIC;
	LED7 : out  STD_LOGIC;
	LED8 : out  STD_LOGIC
);
end LED_VHDL;

architecture Behavioral of LED_VHDL is

signal half_sec_pulse : std_logic;
--signal vec2 : std_logic_vector(1 downto 0);

--constant sig : std_logic := '0';
--constant vec : std_logic_vector(3 downto 0) := "0010";
--constant hex : std_logic_vector(3 downto 0) := x"FF";
--constant int : integer := 65535;
--constant nat : natural := 15;

type state is (s1, s2, s3);

--type state is (s1, s2, s3, s4, s5, s6, s7, s8);
--signal s : state := s1;

begin

--LED1 <= vec(1);

--vec2 <= vec(2 downto 1);
--vec2 <= vec(0 to 1);
--vec2(1) <= vec(0);
	
process(clk)
begin
	if rising_edge(clk) then
		--case state is
		--	when s1 =>
		--		state <= s2;
		--	when s2 =>
		--		state <= s3;
		--	when s3 =>
		--		state <= s1;
		--end case;

		half_sec_pulse <= not half_sec_pulse;
	end if;
end process;


end;
