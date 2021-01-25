library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
LIBRARY lpm;
USE lpm.lpm_components.all;


entity ALU is 

    generic (
        DATA_WIDTH : natural := 8
    );

port ( 
	D11, D12, FI, IC1 :in  std_logic_vector((DATA_WIDTH-1) downto 0);
   Do1, Fo:out   std_logic_vector((DATA_WIDTH-1) downto 0));
					 
end entity;


architecture ALU_arch of ALU is 

	signal D1, D2: signed ((DATA_WIDTH-1) downto 0);
	signal IC    : natural range 0 to 2**DATA_WIDTH - 1;
	signal Do    : signed ((DATA_WIDTH-1) downto 0);

	signal logicShift : unsigned ((DATA_WIDTH-1) downto 0);
	signal SBuff : signed (((DATA_WIDTH * 2 )-1)downto 0);
	signal CoutAddSub : STD_LOGIC ;
	signal add_sub : STD_LOGIC ;

	signal intermed: signed (DATA_WIDTH downto 0);
	signal mul:signed ((DATA_WIDTH-1) downto 0);


	component LPM_ADD_SUB
        generic (LPM_WIDTH : natural; 
		LPM_DIRECTION : string := "UNUSED";
		LPM_REPRESENTATION: string := "SIGNED";
		LPM_PIPELINE : natural := 0;
		LPM_TYPE : string := L_ADD_SUB;
		LPM_HINT : string := "UNUSED");
	port (DATAA : in std_logic_vector(DATA_WIDTH-1 downto 0);
		DATAB : in std_logic_vector(DATA_WIDTH-1 downto 0);
		ACLR : in std_logic := '0';
		CLOCK : in std_logic := '0';
		CLKEN : in std_logic := '1';
		CIN : in std_logic := 'Z';
		ADD_SUB : std_logic := '1';
		RESULT : out std_logic_vector(DATA_WIDTH-1 downto 0);
		COUT : out std_logic;
		OVERFLOW : out std_logic);
	end component;

		


	begin 

	-- Ovf sign carry zero parity int2 int1 int0 
	IC<=natural(to_integer(signed(IC1)));
	D1<=signed(D11);
	D2<=signed(D12);


	lpm_add_sub_component : lpm_add_sub
		GENERIC MAP ( lpm_width =>(DATA_WIDTH-2) ,
		lpm_type => "LPM_ADD_SUB",
		LPM_REPRESENTATION => "SIGNED",
		lpm_hint => "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO" )
	PORT MAP ( dataa => D11,
		add_sub => add_sub,
		datab => D12,
		cin => Fi(6),
		cout => CoutAddSub);



	func: process(IC1)is
	begin


	case IC is




	when  0 =>   --NOP/Move treb de mai gandit aici :)
	Fo<=Fi;
	Do1<=std_logic_vector(D1);




	when  1 =>  -- ADD
		add_sub <= '1';
		intermed <= ('0' & D1) + ('0' & D2);
		Do<=intermed(DATA_WIDTH - 1 downto 0);
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		Fo(6)<=CoutAddSub;--Carry flag_lpm

		-- carry flag no lpm
		if(intermed(8) = '1') then
			Fo(0)<= '1';
		else 
			Fo(0)<= '0';
		end if;


		-- overflow
		--if( (D1(7) = D2(7)) ) then
		if( (D1(7) = D2(7)) and (Do(7) /= D2(7)) ) then
			Fo(4)<= '1';
		else 
			Fo(4)<= '0';
		end if;


		if(Do = 0)then
			Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1






	when  2 =>  --SUB
		add_sub <= '0';
		intermed <= (D1(DATA_WIDTH-1) & D1)-(D2(DATA_WIDTH-1) & D2);
		Do<=intermed(DATA_WIDTH - 1 downto 0);
		Do1<=std_logic_vector(Do);


		Fo(7)<= Do(7);--sign flag
		Fo(6)<=CoutAddSub;--Carry flag

		-- carry flag no lpm
		if(intermed(8) = '1') then
			Fo(0)<= '1';--Int 0
		else 
			Fo(0)<= '0';--Int 0
		end if;

		--- (-) - = 
		--+ (-) - = 
		--+ (-) + = 


		-- overflow
		--if( (intermed < ((((2**DATA_WIDTH)/2)-1)) ) or ( intermed > (((2**DATA_WIDTH)/2)-1) ) ) then

		if( (D1(7) = D2(7)) and (Do(7) /= D2(7)) ) then
			Fo(4)<= '1';
		else 
			Fo(4)<= '0';
		end if;



			
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1



	when  3 =>  --AND
		Do1<= D11 and D12;
		--Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0




	when  4 =>  -- OR
		Do<= D1 or D2;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0



	when  5 =>  --XOR
		Do<= D1 xor D2;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0

	--------------------------Neo




	when  6 => -- left artihmetic
		Do <= shift_left(D1,1);
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0



	when  7 => -- right artihmetic
		Do <= shift_right(D1,1);
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0




	when  8 => -- left logic
		logicShift <= shift_left(unsigned(D1),1);
		Do1<=std_logic_vector(logicShift);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0




	when  9 => -- right logic
		logicShift <= shift_right(unsigned(D1),1);
		Do1<=std_logic_vector(logicShift);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0



	--------------------------Dimon




	when  10 =>  --ABS
		Do<= abs(D1);
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0




	when  11 =>  --NOR
		Do<= D1 nor D2;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0




	when  12 =>  --NAND
		Do<= D1 nand D2;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(6)<= '0';--carry
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0


	--------------------------Ion





	when  13 =>   --MUL
		SBuff<= D1*D2; 
		Do<=SBuff(DATA_WIDTH - 1 downto 0);
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag

		mul <= SBuff((DATA_WIDTH*2)-1 downto DATA_WIDTH);
		-- carry flag
		if(mul /= 0) then
			Fo(6)<= '1';--Int 0
		else 
			Fo(6)<= '0';--Int 0
		end if;

		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0





	when  14 =>  --DIV
		Do<= D1 / D2;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0


	--------------------------Felix




	when  15 =>   --ROR
		Do <= D1 ror 1;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0





	when  16 =>    --ROL
		Do <= D1 rol 1;
		Do1<=std_logic_vector(Do);
		Fo(7)<= Do(7);--sign flag
		if(Do = 0)then
		Fo(5)<= '1';--zero flag
		else
			Fo(5)<= '0';
		end if;
		Fo(4)<= '0';--overflow
		Fo(3)<= '0';--Int 3
		Fo(2)<= '0';--Int 2
		Fo(1)<= '0';--Int 1
		Fo(0)<= '0';--Int 0

	--------------------------Iulik



	WHEN OTHERS => 
	Do <= D1;	
	end case;

	end process func;
end architecture ALU_arch;
