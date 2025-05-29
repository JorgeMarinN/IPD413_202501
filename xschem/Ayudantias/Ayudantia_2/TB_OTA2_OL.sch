v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
L 4 -10 -330 100 -330 {}
L 4 100 -430 100 -330 {}
L 4 -30 -430 100 -430 {}
L 4 -30 -430 -30 -330 {}
L 4 -30 -330 -10 -330 {}
T {OTA Miller} -1410 -720 0 0 0.8 0.8 {}
T {Esto es tanto para lv_nmos como para lv_pmos
l_min = 0.13u
w_min = 0.15u; w_max = 10u

hvMOS
l_min_HVnmos = 0.45u; l_min_HVpmos = 0.4
w_min_HVnmos = 0.3u;w_min_HVpmos = 0.3u;w_max = 10u;
} -1400 -660 0 0 0.4 0.4 {}
N -1310 -90 -1310 -60 {
lab=VDD}
N -1310 0 -1310 20 {
lab=GND}
N -430 -370 -430 -340 {
lab=VDD}
N -290 -370 -290 -340 {
lab=VSS}
N -1200 -90 -1200 -60 {
lab=VSS}
N -1200 0 -1200 20 {
lab=GND}
N -560 -40 -560 -20 {
lab=VSS}
N -270 20 -270 50 {
lab=Vibias}
N -40 -100 -40 -60 {
lab=#net1}
N -190 -160 -40 -160 {
lab=VOUT}
N -380 -470 -40 -470 {
lab=VOUT}
N -40 -470 -40 -160 {
lab=VOUT}
N -650 -200 -650 -150 {
lab=VIN}
N -650 -200 -530 -200 {
lab=VIN}
N -750 -470 -750 -200 {
lab=Ve}
N -750 -200 -720 -200 {
lab=Ve}
N -790 -200 -750 -200 {
lab=Ve}
N -750 -470 -440 -470 {
lab=Ve}
N -900 -200 -850 -200 {
lab=VCM}
N -560 -120 -560 -100 {
lab=VCM}
N -560 -120 -530 -120 {
lab=VCM}
N -660 -200 -650 -200 {
lab=VIN}
N -650 -90 -650 -70 {
lab=VSS}
N -1080 -100 -1080 -60 { lab=VIN}
N -1080 0 -1080 40 { lab=vsen}
N -1080 100 -1080 140 { lab=VCM}
N -270 110 -270 140 {
lab=VSS}
C {lab_pin.sym} -430 -368 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -1310 -30 0 0 {name=VDD value=\{VDD\} savecurrent=false}
C {lab_pin.sym} -1310 -90 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} -1310 20 0 0 {name=l2 lab=GND}
C {code.sym} -1270 -420 0 0 {name=Sim_Param only_toplevel=false 

value="
*.param VDD = 3.3
.param Ibias = 100u
.param Pi = 3.14159265

.param VAC  = 10m
.param fin  = 9.765625e5

*.ic v(Vo) = 0

* OP Parameters & Singals to save
.save all

*.option temp = 125
*.option temp = -40
.option temp = 27

"}
C {code.sym} -1400 -420 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
*.lib cornerMOShv.lib mos_ff
*.lib cornerMOSlv.lib mos_ff
*.lib cornerMOShv.lib mos_ss
*.lib cornerMOSlv.lib mos_ss
*.lib cornerMOShv.lib mos_sf
*.lib cornerMOSlv.lib mos_sf
*.lib cornerMOShv.lib mos_fs
*.lib cornerMOSlv.lib mos_fs

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
*.lib $::SG13G2_MODELS/diodes.lib
"}
C {launcher.sym} -870 -90 0 0 {name=h1
descr="Annotate OP" 
*tclcommand="set show_hidden_texts 1; xschem annotate_op"
tclcommand="xschem annotate_op"}
C {isource.sym} -270 80 0 0 {name=I0 value=DC\{ibias\}}
C {res.sym} -410 -470 1 0 {name=R3
*value=5k
value=1000k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -560 -70 0 0 {name=V3 value=DC\{VCM\}}
C {lab_pin.sym} -290 -368 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {vsource.sym} -1200 -30 0 0 {name=VSS value=0 savecurrent=false}
C {lab_pin.sym} -1200 -90 0 0 {name=VSS1 sig_type=std_logic lab=VSS
value=0}
C {gnd.sym} -1200 20 0 0 {name=VSS2 lab=GND
value=0}
C {capa.sym} -650 -120 0 1 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -690 -200 1 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {res.sym} -820 -200 1 0 {name=R1
value=3k
footprint=1206
device=resistor
m=1}
C {capa.sym} -40 -130 0 0 {name=C1
m=1
value=\{Cl\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -40 -58 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -900 -200 0 0 {name=VSS3 sig_type=std_logic lab=VCM
value=0}
C {lab_pin.sym} -560 -120 0 0 {name=VSS4 sig_type=std_logic lab=VCM
value=0}
C {lab_pin.sym} -650 -70 0 0 {name=VSS5 sig_type=std_logic lab=VSS
value=0}
C {lab_pin.sym} -560 -20 0 0 {name=VSS6 sig_type=std_logic lab=VSS
value=0}
C {lab_pin.sym} -40 -210 0 0 {name=VSS7 sig_type=std_logic lab=VOUT
value=0}
C {vsource.sym} -1080 70 0 0 {name=V4 value="sin(0 \{VAC\} \{fin\}) dc 0 ac 1"}
C {capa.sym} -1080 -30 2 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -1080 140 3 0 {name=l20 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -1080 -100 2 1 {name=l21 sig_type=std_logic lab=VIN}
C {lab_wire.sym} -1080 10 3 0 {name=l24 sig_type=std_logic lab=vsen}
C {lab_pin.sym} -580 -200 1 0 {name=l1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} -270 140 0 0 {name=VSS8 sig_type=std_logic lab=VSS
value=0}
C {lab_pin.sym} -770 -200 3 0 {name=l3 sig_type=std_logic lab=Ve}
C {lab_pin.sym} -270 30 0 0 {name=Vibias sig_type=std_logic lab=Vibias
value=0}
C {devices/code.sym} -1395 -265 0 0 {name=AC_sim only_toplevel=false spice_ignore=0

value="

.control
  set color0 = white
  *IPD413
 ac dec 200 1 1000Meg
 settype decibel VOUT
 *setplot ac1
 
 let phase_val = (180/PI)*cph(VOUT)
 let phase_margin_val = 180 + 180/PI*cph(VOUT)
 settype phase phase_val
 *meas ac PM find phase_margin_val when vdb(VOUT)=0
 meas ac PM find phase_val when vdb(VOUT)=0
 meas ac GM find vdb(vout) when vp(vout)=0
 *meas ac GM2 find vdb(vout) when vp(vout)=-180
 meas ac GBW WHEN vdb(VOUT)=0
 meas ac DCG find vdb(vout) at=1
 let DCG_BW = \{DCG\} - 3
 meas ac BW WHEN vdb(VOUT)=\{DCG_BW\}
 
 let Av = 10^(DCG/20)
 print Av 

 plot vdb(VOUT)
 plot phase_val
 plot phase_val vdb(VOUT)


 *wrdata /foss/designs/IPD413_2023_HW3_git/Data/data_phaseOTA1.dat phase_val
 *wrdata /foss/designs/IPD413_2023_HW3_git/Data/data_VdbOTA1.dat vdb(out)

 reset
  *DACI
  *ac dec 100 1 10G
  *setplot ac1
  *meas ac GBW when vdb(vout)=0
  *meas ac DCG find vdb(vout) at=1
  *meas ac PM find vp(vout) when vdb(vout)=0
  *print PM*180/PI
  *meas ac GM find vdb(vout) when vp(vout)=0

  *plot vdb(vout) 
  *plot \{vp(vout)*180/PI\}
  *plot vdb(vout) \{vp(vout)*180/PI\}
.endc


.end
"}
C {devices/code.sym} -1265 -265 0 0 {name=OP_sim_lv only_toplevel=false spice_ignore=0

value="

.param VDD = 1.2
.param VCM = 0.6

.control
reset
  op
  setplot op1
  unset filetype
  * VM1
  let VsdM1 = v(x1.VA) - v(x1.VB)
  let VsgM1 = v(x1.VA) - v(VCM)
  let VthM1 = @n.x1.xm1.nsg13_lv_pmos[vth]
  let VovM1 = VsgM1 - VthM1
  let gmM1 = @n.x1.xm1.nsg13_lv_pmos[gm]	
  let gdsM1 = @n.x1.xm1.nsg13_lv_pmos[gds]	
  let RoM1 = 1/gdsM1
  let CggM1 = @n.x1.xm1.nsg13_lv_pmos[cgg]	
  * VM2
  let VsdM2 = v(x1.VA) - v(x1.VC)
  let VsgM2 = v(x1.VA) - v(VIN)
  let VthM2 = @n.x1.xm2.nsg13_lv_pmos[vth]
  let VovM2 = VsgM2 - VthM2
  let gmM2 = @n.x1.xm2.nsg13_lv_pmos[gm]	
  let IdM2 = @n.x1.xm2.nsg13_lv_pmos[ids]
  let gdsM2 = @n.x1.xm2.nsg13_lv_pmos[gds]	
  let RoM2 = 1/gdsM2
  let gmIdM2 = gmM2/IdM2
  * VM3
  let VdsM3 = v(x1.VB) - v(VSS)
  let VthM3 = @n.x1.xm3.nsg13_lv_nmos[vth]
  let gmM3 = @n.x1.xm3.nsg13_lv_nmos[gm]	
  let gdsM3 = @n.x1.xm3.nsg13_lv_nmos[gds]	
  let RoM3 = 1/gdsM3
  * VM4
  let VdsM4 = v(x1.VC) - v(VSS)
  let VgsM4 = v(x1.VB) - v(VSS)
  let VthM4 = @n.x1.xm4.nsg13_lv_nmos[vth]
  let VovM4 = VgsM4 - VthM4
  let gmM4 = @n.x1.xm4.nsg13_lv_nmos[gm]	
  let gdsM4 = @n.x1.xm4.nsg13_lv_nmos[gds]	
  let RoM4 = 1/gdsM4
  * VM5
  
  let VsdM5 = v(VDD) - v(x1.VA)
  let VsgM5 = v(VDD) - v(Vibias)
  let VthM5 = @n.x1.xm5.nsg13_lv_pmos[vth]
  let VovM5 = VsgM5 - VthM5
  let gmM5 = @n.x1.xm5.nsg13_lv_pmos[gm]	
  let gdsM5 = @n.x1.xm5.nsg13_lv_pmos[gds]	
  let RoM5 = 1/gdsM5
  * VM6
  let VdsM6 = v(VOUT) - v(VSS)
  let VgsM6 = v(x1.VC) - v(VSS)
  let VthM6 = @n.x1.xm6.nsg13_lv_nmos[vth]
  let VovM6 = VgsM6 - VthM6
  let gmM6 = @n.x1.xm6.nsg13_lv_nmos[gm]	
  let IdM6 = @n.x1.xm6.nsg13_lv_nmos[ids]
  let gdsM6 = @n.x1.xm6.nsg13_lv_nmos[gds]	
  let CggM6 = @n.x1.xm6.nsg13_lv_nmos[cgg]	
  let RoM6 = 1/gdsM6
  let gmIdM6 = gmM6/IdM6
  * VM7
  let VsdM7 = v(VDD) - v(VOUT)
  let VsgM7 = v(VDD) - v(Vibias)
  let VthM7 = @n.x1.xm7.nsg13_lv_pmos[vth]
  let VovM7 = VsgM7 - VthM7
  let gmM7 = @n.x1.xm7.nsg13_lv_pmos[gm]	
  let gdsM7 = @n.x1.xm7.nsg13_lv_pmos[gds]	
  let RoM7 = 1/gdsM7
  * VM8
  let VsdM8 = v(VDD) - v(Vibias)
  let VthM8 = @n.x1.xm8.nsg13_lv_pmos[vth]
  let VovM8 = VsdM8 - VthM8
  let gmM8 = @n.x1.xm8.nsg13_lv_pmos[gm]	
  let gdsM8 = @n.x1.xm8.nsg13_lv_pmos[gds]	
  let RoM8 = 1/gdsM8
  * VMR
  let VdsMR = v(x1.VC) - v(x1.VsMR)
  let gdsMR = @n.x1.xm9.nsg13_lv_nmos[gds]
  let RoMR = 1/gdsMR

  let Ro24 = 1/(gdsM2+gdsM4)
  let Ro67 = 1/(gdsM7+gdsM6)
  let Av1 = gmM1/(gdsM2+gdsM4)
  let Av2 = gmM6/(gdsM7+gdsM6)
  let Av = Av1*Av2
  let BW = (gdsM2+gdsM4)/(2*pi*Av2*\{Cc\})
  let gdsM2_gdsM4 = gdsM2+gdsM4 
  let w22 = gmM6/((CggM6+\{Cl\}))
  *let w2 = gmM6/((\{Cl\})*(1+CggM6/\{Cc\}))
  *let w2 = gmM6/(2*pi*\{Cl\}*(1+CggM6/\{Cc\}))
  let w2 = gmM6/(\{Cl\}*(1+CggM6/\{Cc\}))
  let cggM6_cc = CggM6/\{Cc\}
  let GBW = gmM1/(2*pi*\{Cc\})
  *let GBW2 = gmM1/\{Cc\}
  let DCG = 20*log10(Av)
  *let fnd = gmM6/(2*pi*\{Cl\})
  
  let Cc_eq = gmM2/\{GBW_Objetivo\}
  let Cc = \{Cc\}
  let gm12_Objetivo = \{GBW_Objetivo\}*\{Cc\}
  let idm12_Objetivo = gm12_Objetivo/10
  *let gm6_Objetivo = 3*\{GBW_Objetivo\}*\{Cl\}
  *let gm6_Objetivo = 3*\{GBW_Objetivo\}*(\{Cl\}*(1+CggM6/\{Cc\}))
  *let gm6_Objetivo = 3*\{GBW_Objetivo\}*(\{Cl\}*(1+CggM6/\{Cc\}))/(2*pi)
   let gm6_Objetivo = 3*\{GBW_Objetivo\}*(CggM6+\{Cl\})/(2*pi)
   let idm6_Objetivo = gm6_Objetivo/10

  print Av1 Av2 Av DCG
  print BW GBW w2
  print Cc
  print w2 w22
  
   
  write TB_OTA2_OL.raw
.endc

.end
"}
C {code.sym} -740 -640 0 0 {name=MillerOTA_6Mhz60dB only_toplevel=false spice_ignore=1

value="
.param temp=27

.param m_M8 = 200
.param m_M5 = 18
.param m_M7 = 4500
.param w_M8 =1u 
.param w_M7 =1u
.param w_M5 =1u
.param l_M875 = 1u

.param m_M12 = 3
.param w_M12 =1u
.param l_M12 = 1u

.param m_M34 = 4
.param w_M34 =1u 
.param l_M34 = 9u

.param m_M6 = 420
.param w_M6 =1u 
.param l_M6 = 1u

.param m_R = 1
*.param w_R =10u 
.param w_R = 0.15u
.param l_R = 0.13u

*.param Cc = 0.1p
.param Cc = 0.4p
.param Cl = 20p
.csparam Cl = \{Cl\}
.csparam Cc = \{Cc\}

"}
C {../Ayudantia_2/OTA2_lv.sym} -370 -160 0 0 {name=x1 spice_ignore=0}
C {code.sym} -1150 -420 0 0 {name=MillerOTA_Param only_toplevel=false spice_ignore=1

value="
.param temp=27

.param m_M8 = 1
.param m_M7 = 1
.param m_M5 = 1
.param w_M8 =0.15u 
.param w_M7 =0.15u
.param w_M5 =0.15u
.param l_M875 = 0.13u

.param m_M12 = 1 
.param w_M12 =0.15u
.param l_M12 = 0.13u

.param m_M34 = 1
.param w_M34 =0.15u 
.param l_M34 = 0.13u

.param m_M6 = 1
.param w_M6 =0.15u 
.param l_M6 = 0.13u

.param Cc = 0.1p
.param Cl = 5p
.csparam Cl = \{Cl\}
.csparam Cc = \{Cc\}

* Requisitos de diseño
.param Cl = 5p
.csparam Cl = \{Cl\}
.param GBW_Objetivo= 2*Pi*100Meg
.csparam GBW_Objetivo = \{GBW_Objetivo\}

.param Cc = Cl*0.01
.csparam Cc = \{Cc\}

"}
C {ngspice_get_value.sym} 80 -385 0 1 {name=r23 node=gm12_Objetivo
descr="gm12_Objetivo= "}
C {ngspice_get_value.sym} 80 -350 0 1 {name=r4 node=gm6_Objetivo
descr="gm6_Objetivo= "}
C {code.sym} -570 -640 0 0 {name=MillerOTA_57MHz63dB only_toplevel=false spice_ignore=1

value="
.param temp=27

.param m_M8 = 400
.param m_M7 = 185
.param m_M5 = 8
.param w_M8 =1u 
.param w_M7 =1u
.param w_M5 =1u
.param l_M875 =2u

.param m_M12 = 3
.param w_M12 =1u
.param l_M12 = 0.3u

.param m_M34 = 1
.param w_M34 =0.15u 
.param l_M34 = 1.5u

.param m_M6 = 5
.param w_M6 =1u 
.param l_M6 = 0.7u


* Requisitos de diseño
.param Cl = 5p
.csparam Cl = \{Cl\}
.param GBW_Objetivo= 2*Pi*30Meg
.csparam GBW_Objetivo = \{GBW_Objetivo\}

.param Cc = Cl*0.01
.csparam Cc = \{Cc\}

"}
