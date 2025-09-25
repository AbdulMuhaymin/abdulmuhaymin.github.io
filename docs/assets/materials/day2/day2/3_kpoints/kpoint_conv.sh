#!/bin/sh

for k in 2 4 6 8 10; do

cat > si.scf.$k.in << EOF
 &CONTROL
    prefix = 'silicon'
    outdir = 'tmp'
    pseudo_dir = './'
    verbosity = 'high'
    disk_io = 'none'
 /
 &SYSTEM    
    ibrav =  2
    celldm(1) = 10.2
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
   $k $k $k 0 0 0
EOF

pw.x -in si.scf.$k.in > si.scf.$k.out

done