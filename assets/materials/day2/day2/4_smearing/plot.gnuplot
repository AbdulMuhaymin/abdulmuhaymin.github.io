set grid
set format y "%6.3f"
set ylabel "Total energy (Ry)"
set xlabel "Broadening (Ry)"

plot "gauss.dat" using 1:2 with linespoints lw 2 title "gauss", \
     "mp.dat"    using 1:2 with linespoints lw 2 title "mp", \
     "mv.dat"    using 1:2 with linespoints lw 2 title "mv", \
     "fd.dat"    using 1:2 with linespoints lw 2 title "fd"

pause -1