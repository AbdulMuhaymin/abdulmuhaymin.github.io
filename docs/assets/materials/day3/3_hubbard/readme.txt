# Exercise 3: DFT+U Hubbard correction

In this exercise, we will compare the results from DFT and DFT+U calculation for Cobalt Oxide. 

First perform the regular DFT calculation just as before and plot PDOS (in the 1_DFT folder)

mpirun -np 2 pw.x < 1.CoO.scf.in > 1.CoO.scf.out
mpirun -np 2 pw.x < 2.CoO.nscf.in > 2.CoO.nscf.out
mpirun -np 2 projwfc.x < 3.CoO.projwfc.in > 3.CoO.projwfc.out
gnuplot plot_pdos.gnuplot

Then now change the directory to 2_DFT+U, and perform the same calculations.

mpirun -np 2 pw.x < 1.CoO.scf.in > 1.CoO.scf.out
mpirun -np 2 pw.x < 2.CoO.nscf.in > 2.CoO.nscf.out
mpirun -np 2 projwfc.x < 3.CoO.projwfc.in > 3.CoO.projwfc.out
gnuplot plot_pdos.gnuplot

Notice that in these pw.x input files (scf and nscf), we have added the following lines:

HUBBARD {ortho-atomic}
 U Co1-3d  6.3
 U Co2-3d  6.3

This activates the Hubbard calculation with U=6.3 eV applied on Co-3d manifold.

Do you see the difference in PDOS?

(if we have time, we can also practice how to calculate the required U values)