v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 0 -40 20 {
lab=xxx}
N -80 0 -80 50 {
lab=IN}
N -40 -50 -20 -50 {
lab=VDD}
N -20 -80 -20 -50 {
lab=VDD}
N -40 -80 -20 -80 {
lab=VDD}
N -40 50 -20 50 {
lab=VSS}
N -20 50 -20 80 {
lab=VSS}
N -40 80 -20 80 {
lab=VSS}
N -40 80 -40 120 {
lab=VSS}
N -40 -120 -40 -80 {
lab=VDD}
N -130 0 -80 0 {
lab=IN}
N -80 -50 -80 0 {
lab=IN}
N -40 0 50 0 {
lab=xxx}
N -40 -20 -40 0 {
lab=xxx}
C {sg13g2_pr/sg13_lv_pmos.sym} -60 -50 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=30
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 50 2 1 {name=M2
l=0.45u
w=1.0u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -40 -120 3 0 {name=p1 lab=VDD}
C {iopin.sym} -40 120 1 0 {name=p2 lab=VSS
}
C {opin.sym} 50 0 0 0 {name=p3 lab=OUT}
C {ipin.sym} -130 0 0 0 {name=p4 lab=IN}
