v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -290 300 -260 {lab=vss}
N 300 -240 920 -240 {lab=vss}
N 300 -260 300 -240 {lab=vss}
N 410 -290 410 -240 {lab=vss}
N 590 -360 590 -250 {lab=vss}
N 590 -250 590 -240 {lab=vss}
N 790 -330 790 -240 {lab=vss}
N 740 -460 880 -460 {lab=vout}
N 790 -460 790 -390 {lab=vout}
N 590 -460 680 -460 {lab=#net1}
N 590 -460 590 -420 {lab=#net1}
N 920 -520 920 -470 {lab=vout}
N 920 -520 1020 -520 {lab=vout}
N 410 -380 410 -350 {lab=vn}
N 300 -380 300 -350 {lab=vp}
N 880 -460 920 -460 {lab=vout}
N 920 -470 920 -460 {lab=vout}
C {devices/ipin.sym} 70 -90 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 100 -90 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 70 -70 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 70 -50 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 70 -30 0 0 {name=p7 lab=vinn}
C {devices/bsource.sym} 300 -320 0 0 {name=B1 VAR=V FUNC="\{V(vinp)<vcmh ? (V(vinp) < vcml ? vcml: V(vinp)) : vcmh\}" m=1
}
C {devices/bsource.sym} 410 -320 0 0 {name=B2 VAR=V FUNC="\{V(vinn)<vcmh ? (V(vinn) < vcml ? vcml: V(vinn) + vios) : vcmh\}" m=1
}
C {devices/bsource.sym} 590 -390 0 0 {name=B3 VAR=V FUNC="\{gain*(V(vp)-V(vn)) < V(vdd) ? (gain*(V(vp)-V(vn)) < V(vss) ? V(vss) : (gain*(V(vp)-V(vn)))) : V(vdd)\}" m=1
}
C {devices/res.sym} 710 -460 1 0 {name=R1
value=\{1/(2*3.1415*bw*1p)\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 790 -360 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 530 -240 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 410 -380 0 0 {name=p2 sig_type=std_logic lab=vn
}
C {devices/lab_wire.sym} 300 -380 0 0 {name=p3 sig_type=std_logic lab=vp}
C {devices/lab_wire.sym} 1020 -520 0 0 {name=p4 sig_type=std_logic lab=vout}
