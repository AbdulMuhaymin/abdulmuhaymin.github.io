To run a QE executable called qe.x, do:
    qe.x -input input_file_name

If you do this, then the output will be shown in the terminal. To redirect the output to a file (which you should do, otherwise the output will be lost once you close your terminal), do the following:
    qe.x -input input_file_name > output_file_name

It is just a good practice to name every input file with a .in suffix and output file with a .out suffix. 

Instead of -input, one can use -inp, -in, -i or the input redirection symbol < but note that < symbol doesn't work for WEST executables. So, the -i option is the safest choice. So all of the following choices are valid and do the same thing:
    qe.x -input input.in > output.out
    qe.x -inp input.in > output.out
    qe.x -in input.in > output.out
    qe.x -i input.in > output.out
    qe.x < input.in > output.out

If you want to redirect the output as well as want to show it in the terminal, then do the following:
    qe.x -i input.in |tee output.out

Some common QE executables:
(1) pw.x - to run a scf/nscf calculation that provides the ground state wavefunctions and energies
(2) dos.x - to extract the density of states data against the energy values
(3) bands.x - to extract the energy eigenvalues along the high symmetry k-path
(4) pp.x - can do various post-processing such as charge density plot, electrostatic potential plot, spin density plot etc.
(5) plotband.x - simple tool to plot the band structure from the data obtained by bands.x
(6) projwfc.x - to obtain the projection of the DOS on the atomic-like orbitals
(7) hp.x - to obtain the hubbard parameters

For silicon, use the following steps:

step 1) this will give you the ground state:
    pw.x < 1.1.silicon.scf.in > 1.1.silicon.scf.out

step 2) this will recalculate your ground state wavefunction keeping the charge density same:
    pw.x < 2.silicon.nscf.in > 2.silicon.nscf.out
    
step 3) this will extract the density of state data from the charge density and nscf eigenvalues:
    dos.x < 3.silicon.dos.in > 3.silicon.dos.out
    
step 4) this is just like nscf calculation that will sample the eigenvalues along the given k-path:
    pw.x < 4.silicon.bands.in > 4.silicon.bands.out 
    
step 5) this will extract band structure data in a suitable format to plot:
    bands.x < 5.silicon.bands_pp.in > 5.silicon.bands_pp.out 
    
step 6) this will use the generated data in previous step to plot them. It's interactive. So follow the instruction shown in your terminal after you execute it:
    plotband.x 

step 7) use your favorite plotting program to plot them. All scripts are inside plotting_tools/ directory
    - You can use the python scripts to generate figures
    - Or you can plot them using gnuplot 

If you want to test parallelization, use the following syntax:

    mpirun -np NUMBER_OF_PROCESSORS pw.x < input > output 

So, the "mpirun -np $(nproc)" part comes before the pw.x syntax. In the place of NUMBER_OF_PROCESSORS, you can specify the number of cpus you want to run such as 2,3,4, etc. The nproc commands shows your max number of processors in ubuntu. You probably will be able to use only half of them (do not oversubscribe, which could harm your computer).  