LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE work.TrafficLight;

ENTITY TrafficLight_testbench IS
END TrafficLight_testbench;

ARCHITECTURE behavior OF TrafficLight_testbench IS 
	
	--For Input
	signal clk:std_logic;
	signal clr:std_logic:='1';
	
	--For Output
	signal lights:std_logic_vector(5 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: ENTITY TrafficLight PORT MAP(clk,clr,lights);

 
  ClkGen:process
  constant Period: time:= 1000ms;
  begin
     clk <= '0';
     wait for period/2;
     clk <= '1';
     wait for period/2;
  end process ClkGen;

	tb : PROCESS
	BEGIN
		-- Place stimulus here	
		
		clr <= '0';
		
	WAIT FOR 20000ms;
		clr <= '0';
    
	WAIT FOR 20000ms;
		clr <= '0';
	
	WAIT FOR 20000ms;
		clr <= '0';
	
	WAIT FOR 20000ms;
		clr <= '0';
	
	WAIT FOR 20000ms;
		clr <= '0';
	
	WAIT FOR 20000ms;
		clr <= '0';
	
	WAIT FOR 20000ms;
		clr <= '1';
	
	WAIT FOR 20000ms;
		clr <= '0';
	
	WAIT FOR 20000ms;
		clr <= '0';
	
	
    wait; -- will wait forever
	END PROCESS tb;

END behavior;
