-- Quartus II VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_adder_subtractor is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		a		: in signed ((DATA_WIDTH-1) downto 0);
		b		: in signed ((DATA_WIDTH-1) downto 0);
		operacao : in signed (4 downto 0);
		result	: out signed ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of signed_adder_subtractor is
begin

	process(a,b,add_sub)
	begin
		-- Add if "add_sub" is 1, else subtract
		if (add_sub = '1') then
			result <= unsigned(a) + unsigned(b);
		else
			result <= unsigned(a) - (b);
		end if;
	end process;

end rtl;