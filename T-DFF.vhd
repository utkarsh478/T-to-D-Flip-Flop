library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_to_D_FlipFlop is
    Port ( 
        D : in STD_LOGIC;
        CLK : in STD_LOGIC;
        Q : out STD_LOGIC
    );
end T_to_D_FlipFlop;

architecture Behavioral of T_to_D_FlipFlop is
    signal T : STD_LOGIC;
    signal Q_internal : STD_LOGIC;
begin
    -- Combinational logic to convert D input to T input
    T <= D xor Q_internal;
    
    -- Process to implement T flip-flop
    process(CLK)
    begin
        if rising_edge(CLK) then
            if T = '1' then
                Q_internal <= not Q_internal;
            end if;
        end if;
    end process;
    
    Q <= Q_internal;
end Behavioral;