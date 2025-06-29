v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 10 270 10 {
lab=Vs}
N 270 10 270 40 {
lab=Vs}
N 250 40 270 40 {
lab=Vs}
N 250 40 250 80 {
lab=Vs}
N 160 10 210 10 {
lab=Vg}
N 250 -40 250 -20 {
lab=Vd}
C {sg13g2_pr/sg13_lv_nmos.sym} 230 10 2 1 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=
}
C {iopin.sym} 250 -40 3 0 {name=p1 lab=Vd}
C {iopin.sym} 250 80 1 0 {name=p2 lab=Vs
}
C {ipin.sym} 160 10 0 0 {name=p4 lab=Vg}
