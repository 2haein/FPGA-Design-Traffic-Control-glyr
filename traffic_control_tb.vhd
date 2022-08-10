library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity traffic_control_tb is
end entity traffic_control_tb;

architecture arch_traffic_control_tb of traffic_control_tb is
    signal clk_s,rst_s : std_logic;
    signal G_s,Y_s,R_s,L_s : std_logic;
    
    component traffic_control is
        port(clk,rst : in std_logic;
        g,y,r,l : out std_logic);
    end component;

begin 
    map0 : traffic_control port map (clk_s,rst_s,G_s,Y_s,R_s,L_s);
clocking : process begin
    clk_s <= '0';
    wait for 10 ns;
    clk_s <= '1';
    wait for 10 ns;
end process;

reseting : process begin
    rst_s <= '1';
    wait for 5 ns;
    rst_s <= '0';
    wait for 995 ns;
end process;

end arch_traffic_control_tb;
