
�
Command: %s
1870*	planAhead2�
xread_checkpoint -auto_incremental -incremental C:/Users/jason/233_HW6/233_HW6.srcs/utils_1/imports/synth_1/OTTER_TOP.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2]
IC:/Users/jason/233_HW6/233_HW6.srcs/utils_1/imports/synth_1/OTTER_TOP.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
|
Command: %s
53*	vivadotcl2K
7synth_design -top OTTER_Wrapper -part xc7a35ticpg236-1L2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px� 
X
Loading part %s157*device2%
xc7a35ticpg236-1L2default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
294122default:defaultZ8-7075h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2 
PC_COUNT_OUT2default:default2
1882default:default2T
>C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/OTTER_TOP.sv2default:default2
1942default:default8@Z8-8895h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1294.559 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2!
OTTER_Wrapper2default:default2
 2default:default2Q
;C:/Users/jason/Downloads/OTTER_VGA_160x120/OTTER_Wrapper.sv2default:default2
172default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	OTTER_TOP2default:default2
 2default:default2T
>C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/OTTER_TOP.sv2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2{
eC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_HW4/233_HW4.srcs/sources_1/new/ALU.sv2default:default2
212default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_HW4/233_HW4.srcs/sources_1/new/ALU.sv2default:default2
212default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BCG2default:default2
 2default:default2{
eC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_hw5/233_hw5.srcs/sources_1/new/BCG.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BCG2default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_hw5/233_hw5.srcs/sources_1/new/BCG.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BAG2default:default2
 2default:default2{
eC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_hw5/233_hw5.srcs/sources_1/new/BAG.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BAG2default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_hw5/233_hw5.srcs/sources_1/new/BAG.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CU_DCDR2default:default2
 2default:default2R
<C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/CU_DCDR.sv2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2R
<C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/CU_DCDR.sv2default:default2
552default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CU_DCDR2default:default2
 2default:default2
02default:default2
12default:default2R
<C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/CU_DCDR.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CU_FSM2default:default2
 2default:default2Q
;C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/CU_FSM.sv2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2Q
;C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/CU_FSM.sv2default:default2
862default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CU_FSM2default:default2
 2default:default2
02default:default2
12default:default2Q
;C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/CU_FSM.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	IMMED_GEN2default:default2
 2default:default2�
kC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_HW4/233_HW4.srcs/sources_1/new/IMMED_GEN.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	IMMED_GEN2default:default2
 2default:default2
02default:default2
12default:default2�
kC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233_HW4/233_HW4.srcs/sources_1/new/IMMED_GEN.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Memory2default:default2
 2default:default2q
[C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/Downloads/otter_memory_v1_07.sv2default:default2
482default:default8@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
VGA.mem2default:default2q
[C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/Downloads/otter_memory_v1_07.sv2default:default2
732default:default8@Z8-3876h px� 
�
-case statement is not full and has no default155*oasys2q
[C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/Downloads/otter_memory_v1_07.sv2default:default2
952default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Memory2default:default2
 2default:default2
02default:default2
12default:default2q
[C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/Downloads/otter_memory_v1_07.sv2default:default2
482default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PlusFour2default:default2
 2default:default2~
hC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233HW2/233HW2.srcs/sources_1/new/PlusFour.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PlusFour2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233HW2/233HW2.srcs/sources_1/new/PlusFour.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2default:default2
 2default:default2x
bC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233HW2/233HW2.srcs/sources_1/new/PC.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2default:default2
 2default:default2
02default:default2
12default:default2x
bC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/233HW2/233HW2.srcs/sources_1/new/PC.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
REGFILE2default:default2
 2default:default2w
aC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/HW3/HW3.srcs/sources_1/new/REGFILE.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
REGFILE2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/jason/233_HW6/233_HW6.srcs/sources_1/imports/jason/HW3/HW3.srcs/sources_1/new/REGFILE.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CSR2default:default2
 2default:default2U
?C:/Users/jason/233_HW7 - Copy/233_HW8.srcs/sources_1/new/CSR.sv2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2U
?C:/Users/jason/233_HW7 - Copy/233_HW8.srcs/sources_1/new/CSR.sv2default:default2
822default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CSR2default:default2
 2default:default2
02default:default2
12default:default2U
?C:/Users/jason/233_HW7 - Copy/233_HW8.srcs/sources_1/new/CSR.sv2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	OTTER_TOP2default:default2
 2default:default2
02default:default2
12default:default2T
>C:/Users/jason/233_HW6/233_HW6.srcs/sources_1/new/OTTER_TOP.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

SevSegDisp2default:default2
 2default:default2F
0C:/Users/jason/Downloads/SevSeg_SV/SevSegDisp.sv2default:default2
212default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BCD2default:default2
 2default:default2?
)C:/Users/jason/Downloads/SevSeg_SV/BCD.sv2default:default2
182default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BCD2default:default2
 2default:default2
02default:default2
12default:default2?
)C:/Users/jason/Downloads/SevSeg_SV/BCD.sv2default:default2
182default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
CathodeDriver2default:default2
 2default:default2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
222default:default8@Z8-6157h px� 
�
default block is never used226*oasys2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
462default:default8@Z8-226h px� 
�
default block is never used226*oasys2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
492default:default8@Z8-226h px� 
�
default block is never used226*oasys2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
712default:default8@Z8-226h px� 
�
default block is never used226*oasys2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
932default:default8@Z8-226h px� 
�
default block is never used226*oasys2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
1152default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
CathodeDriver2default:default2
 2default:default2
02default:default2
12default:default2I
3C:/Users/jason/Downloads/SevSeg_SV/CathodeDriver.sv2default:default2
222default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

SevSegDisp2default:default2
 2default:default2
02default:default2
12default:default2F
0C:/Users/jason/Downloads/SevSeg_SV/SevSegDisp.sv2default:default2
212default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
VGA_FB_Driver2default:default2
 2default:default2Q
;C:/Users/jason/Downloads/OTTER_VGA_160x120/vga_fb_driver.sv2default:default2
222default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

vga_driver2default:default2
 2default:default2N
8C:/Users/jason/Downloads/OTTER_VGA_160x120/vga_driver.sv2default:default2
432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

vga_driver2default:default2
 2default:default2
02default:default2
12default:default2N
8C:/Users/jason/Downloads/OTTER_VGA_160x120/vga_driver.sv2default:default2
432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	ram30k_122default:default2
 2default:default2M
7C:/Users/jason/Downloads/OTTER_VGA_160x120/ram30k_12.sv2default:default2
252default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	ram30k_122default:default2
 2default:default2
02default:default2
12default:default2M
7C:/Users/jason/Downloads/OTTER_VGA_160x120/ram30k_12.sv2default:default2
252default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
VGA_FB_Driver2default:default2
 2default:default2
02default:default2
12default:default2Q
;C:/Users/jason/Downloads/OTTER_VGA_160x120/vga_fb_driver.sv2default:default2
222default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2Q
;C:/Users/jason/Downloads/OTTER_VGA_160x120/OTTER_Wrapper.sv2default:default2
1002default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
OTTER_Wrapper2default:default2
 2default:default2
02default:default2
12default:default2Q
;C:/Users/jason/Downloads/OTTER_VGA_160x120/OTTER_Wrapper.sv2default:default2
172default:default8@Z8-6155h px� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2 
register_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
�
%s
*synth2�
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
X
%s
*synth2@
,RAM "register_reg" dissolved into registers
2default:defaulth p
x
� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2
 2default:defaultZ8-4767h px� 
R
%s
*synth2:
&	1: Write port has constant address. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
I
%s
*synth21
RAM dissolved into registers
2default:defaulth p
x
� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1294.559 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1294.559 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1294.559 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0432default:default2
1294.5592default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2W
AC:/Users/jason/233_HW7/233_HW7.srcs/constrs_1/new/constraints.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2W
AC:/Users/jason/233_HW7/233_HW7.srcs/constrs_1/new/constraints.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2U
AC:/Users/jason/233_HW7/233_HW7.srcs/constrs_1/new/constraints.xdc2default:default23
.Xil/OTTER_Wrapper_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1351.2112default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1351.2112default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Loading part: xc7a35ticpg236-1L
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
PS_reg2default:default2
CU_FSM2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 ST_INIT |                              000 | 00000000000000000000000000000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                ST_FETCH |                              001 | 00000000000000000000000000000001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 ST_EXEC |                              010 | 00000000000000000000000000000010
2default:defaulth p
x
� 
�
%s
*synth2s
_            ST_WRITEBACK |                              011 | 00000000000000000000000000000011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 ST_INTR |                              100 | 00000000000000000000000000000100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
PS_reg2default:default2

sequential2default:default2
CU_FSM2default:defaultZ8-3354h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2(
"Memory:/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
22default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
22default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
12default:default2-
"ram30k_12:/r_memory_reg"2default:defaultZ8-7030h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:16 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 34    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 39    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
l
%s
*synth2T
@	             512K Bit	(16384 X 32 bit)          RAMs := 1     
2default:defaulth p
x
� 
l
%s
*synth2T
@	             358K Bit	(30624 X 12 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input 1024 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  16 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 23    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  19 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 35    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 18    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default24
 "OTTER_PROCESSOR/mem/memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
22default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
22default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
12default:default2@
,"OTTER_Wrapper/VGA/framebuffer/r_memory_reg"2default:defaultZ8-7030h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
FSM_sequential_PS_reg[2]2default:default2
CU_FSM2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
d
%s*synth2L
8
Block RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+--------------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name         | RTL Object                   | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+--------------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|OTTER_PROCESSOR/mem | memory_reg                   | 16 K x 32(READ_FIRST)  | W | R | 16 K x 32(WRITE_FIRST) |   | R | Port A and B     | 0      | 16     | 
2default:defaulth px� 
�
%s*synth2�
�|OTTER_Wrapper       | VGA/framebuffer/r_memory_reg | 29 K x 12(READ_FIRST)  | W |   | 29 K x 12(WRITE_FIRST) |   | R | Port A and B     | 1      | 10     | 
2default:defaulth px� 
�
%s*synth2�
�+--------------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:33 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:33 . Memory (MB): peak = 1351.211 ; gain = 56.652
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!
Block RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name         | RTL Object                   | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|OTTER_PROCESSOR/mem | memory_reg                   | 16 K x 32(READ_FIRST)  | W | R | 16 K x 32(WRITE_FIRST) |   | R | Port A and B     | 0      | 16     | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|OTTER_Wrapper       | VGA/framebuffer/r_memory_reg | 29 K x 12(READ_FIRST)  | W |   | 29 K x 12(WRITE_FIRST) |   | R | Port A and B     | 1      | 10     | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_12default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_12default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_22default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_22default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_32default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_32default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_42default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_42default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_52default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_52default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_62default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_62default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_72default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_72default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_82default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_82default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_92default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys29
%OTTER_PROCESSOR/mem/memory_reg_bram_92default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_102default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_102default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_112default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_112default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_122default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_122default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_132default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_132default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_142default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_142default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_152default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2:
&OTTER_PROCESSOR/mem/memory_reg_bram_152default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_12default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_22default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_32default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_42default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_52default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_62default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_72default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_82default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#VGA/framebuffer/r_memory_reg_bram_92default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys28
$VGA/framebuffer/r_memory_reg_bram_102default:default2
Block2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:35 . Memory (MB): peak = 1369.785 ; gain = 75.227
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1382.629 ; gain = 88.070
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1382.629 ; gain = 88.070
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1382.629 ; gain = 88.070
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1382.629 ; gain = 88.070
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1383.602 ; gain = 89.043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1383.602 ; gain = 89.043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     3|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |    77|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |    11|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     |   227|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     |   614|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     |   358|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |   555|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     |  1611|
2default:defaulth px� 
F
%s*synth2.
|9     |MUXF7    |   400|
2default:defaulth px� 
F
%s*synth2.
|10    |MUXF8    |    63|
2default:defaulth px� 
F
%s*synth2.
|11    |RAMB18E1 |     1|
2default:defaulth px� 
F
%s*synth2.
|12    |RAMB36E1 |    26|
2default:defaulth px� 
F
%s*synth2.
|18    |FDRE     |  1308|
2default:defaulth px� 
F
%s*synth2.
|19    |FDSE     |     4|
2default:defaulth px� 
F
%s*synth2.
|20    |IBUF     |    22|
2default:defaulth px� 
F
%s*synth2.
|21    |OBUF     |    42|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1383.602 ; gain = 89.043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:38 . Memory (MB): peak = 1383.602 ; gain = 32.391
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1383.602 ; gain = 89.043
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0552default:default2
1395.7382default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5672default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1400.4182default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
16a3ade52default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1692default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:372default:default2
00:00:442default:default2
1400.4182default:default2
105.8592default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2X
DC:/Users/jason/233_HW7 - Copy/233_HW8.runs/synth_1/OTTER_Wrapper.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
pExecuting : report_utilization -file OTTER_Wrapper_utilization_synth.rpt -pb OTTER_Wrapper_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Dec  6 00:39:20 20242default:defaultZ17-206h px� 


End Record