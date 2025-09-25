set terminal qt 0 font "Arial, 15"
set xlabel "Energy (eV)"
set ylabel "PDOS (arb. unit)"
set title "Projected density of states for FCC silicon (PBE)"
set xrange [-12:10]
plot "Si.pdos.dat.pdos_tot" u ($1-5.76):2 w l lw 2 title "Total", \
"Si.pdos.s_orbitals" u ($1-5.76):2 w l lw 1 title "3s - orbitals", \
"Si.pdos.p_orbitals" u ($1-5.76):2 w l lw 1 title "3p - orbitals"
pause -1