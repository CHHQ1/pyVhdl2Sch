-- This testBench was generated by pyVhdl2Sch --
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;


-- entity declaration
ENTITY tb_test IS
END tb_test;

ARCHITECTURE behavior OF tb_test IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT test
PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : OUT STD_LOGIC
);
END COMPONENT;
-- declare inputs and initialize them
    signal a : STD_LOGIC;
    signal b : STD_LOGIC;
-- declare inouts and initialize them
-- declare outputs and initialize them
    signal c : STD_LOGIC;
constant clk_period : time := 10 ns;

BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: test PORT MAP (
    a => a,
    b => b,
    c => c
);
-- Clock process definitions( clock with 50% duty cycle is generated here.)
clk_process :process
begin
    <clk_a_remplacer> <= '0';
    wait for clk_period/2;  --for 5.0 ns signal is '0'.
    <clk_a_remplacer> <= '1';
    wait for clk_period/2;  --for 5.0 ns signal is '1'.
end process;
-- Stimulus process
stim_proc: process
begin
wait for 3*clk_period;
-- Insert your tests
   wait;
end process;
END;