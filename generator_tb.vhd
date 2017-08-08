LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY generator_tb IS
END generator_tb;
architecture rtl of generator_tb is
	component generator is
	port(
	clk:in std_logic;
	reset:in std_LOGIC;
	wave:out std_logic_vector(7 downto 0)
	);
	end component;
	signal clk_n:std_logic;
	signal reset_n:std_LOGIC:='1';
	signal wave_n:std_logic_VECTOR(7 downto 0);
begin
	u0:generator port map(clk_n,reset_n,wave_n);
	process
	begin
	clk_n <= '0';
	wait for 10 ns;
	clk_n <= '1';
	wait for 10 ns;
	end process;
end rtl;
