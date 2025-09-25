set terminal qt 0 font "Arial, 15"
set xlabel "Energy (eV)"
set ylabel "DOS (arb. unit)"
set title "Density of states for FCC silicon (PBE)"
set xrange [-12:10]
plot "Si.dos.dat" u ($1-5.76):2 w l lw 2
pause -1