-- This testBench was generated by pyVhdl2Sch --
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;


-- entity declaration
ENTITY tb_None IS
END tb_None;

ARCHITECTURE behavior OF tb_None IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT None
PORT (
);
END COMPONENT;
-- declare inputs and initialize them
-- declare inouts and initialize them
-- declare outputs and initialize them
constant clk_period : time := 10 ns;

BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: None PORT MAP (
);
-- Clock process definitions( clock with 50% duty cycle is generated here.)
clk_process :process
begin
    <clk_a_remplacer> <= '0';
    wait for clk_period/2;  --for 5 ns signal is '0'.
    <clk_a_remplacer> <= '1';
    wait for clk_period/2;  --for 5 ns signal is '1'.
end process;
-- Stimulus process
stim_proc: process
begin
wait for 3*clk_period;
-- Insert your tests
   wait;
end process;
END;