#!/bin/sh

for a in $(seq 9.7 0.1 10.8); do

cat > si.scf.$a.in << EOF
 &CONTROL
    prefix = 'silicon'
    outdir = 'tmp'
    pseudo_dir = './'
    verbosity = 'high'
    disk_io = 'none'
 /
 &SYSTEM    
    ibrav =  2
    celldm(1) = $a
    nat =  2
    ntyp = 1
    ecutwfc = 45
    ecutrho = 200
 /
 &ELECTRONS
 /
ATOMIC_SPECIES
   Si  28.086  Si.pbe-n-rrkjus_psl.1.0.0.UPF
ATOMIC_POSITIONS
   Si 0.00 0.00 0.00 
   Si 0.25 0.25 0.25 
K_POINTS automatic
   8 8 8 0 0 0
EOF

pw.x -in si.scf.$a.in > si.scf.$a.out

done