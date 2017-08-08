library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generator is
 port(
	clk:in std_logic;
	reset:in std_LOGIC;
	wave:out std_logic_vector(7 downto 0)
	);
end generator;

architecture arch_generator of generator is
	component mystorage IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
	signal addr:std_LOGIC_VECTOR(9 downto 0):="0000000000";
	--signal tmp_clk :std_logic:='0';
begin
	u0:mystorage port map(addr,clk,wave);
	process
	begin
		wait until rising_edge(clk);
		if(reset='0')then
			addr<="0000000000";
		elsif(addr="1111111111")then
			addr<="0000000000";
		else
		 addr <= addr+1;
		end if;
		--watch<=addr;
	end process;
end arch_generator;
