library ieee;
use ieee.std_logic_1164.all;

entity traffic_control is
    port(clk,rst:in std_logic;
    g,y,r,l:out std_logic);
end entity traffic_control;

architecture arch_traffic_control of traffic_control is
    signal gout,yout,rout,lout : std_logic;
    signal gin,yin,rin,lin : std_logic;
    signal en : std_logic;

    component dff is
        port( d,en,rst,clk : in std_logic;
                q : out std_logic);
    end component dff;

begin
    en <= '1';
    map_g : dff port map(gin,en,rst,clk,gout);
    map_y : dff port map(yin,en,rst,clk,yout);
    map_r : dff port map(rin,en,rst,clk,rout);
    map_l : dff port map(lin,en,rst,clk,lout);

    gin <= (gout and lout and not yout and not rout) or (not gout and not lout and not yout and rout);
    yin <= gout and not lout and not yout and not rout;
    rin <= (not gout and not lout and not yout and not rout) or (not gout and not lout and yout and not rout);
    lin <= not gout and not lout and not yout and rout;

    g <= gout;
    y <= yout;
    r <= yout;
    l <= lout;

end arch_traffic_control;

