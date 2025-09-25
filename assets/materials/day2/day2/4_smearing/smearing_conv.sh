#!/bin/sh

for smearing in gauss mp mv fd; do
for degauss in 0.1 0.05 0.01;do

cat > si.scf.$smearing.$degauss.in << EOF
 &CONTROL
    prefix = 'silicon'
    outdir = 'tmp'
    pseudo_dir = './'
    verbosity = 'high'
    disk_io = 'none'
 /
 &SYSTEM    
    ibrav =  2
    celldm(1) = 10.3
    nat =  2
    ntyp = 1
    ecutwfc = 45
    ecutrho = 200
    occupations = 'smearing'
    smearing = '$smearing'
    degauss = $degauss
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

pw.x -in si.scf.$smearing.$degauss.in > si.scf.$smearing.$degauss.out

done
done


## data collection
gauss mp mv fd; do
  > $smearing.dat
  for degauss in 0.1 0.05 0.01; do
    energy=$(grep '!    total energy' si.scf.$smearing.$degauss.out | awk '{print $5}')
    echo "$degauss $energy" >> $smearing.dat
  done
done