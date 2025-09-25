# Exercise 1: Projected density of states

Just like before, we first obtain the ground state and run an NSCF calculation with tetrahedra occupation since PDOS is still a type of DOS. The steps are:

step 1) Obtain the ground state electron density 

    pw.x -in 1.silicon.scf.in > 1.silicon.scf.out 

step 2) Run an NSCF calculation with tetrahedra occupations with increased k-points 
    
    pw.x -in 2.silicon.nscf.in > 2.silicon.nscf.out 

step 3) To obtain the DOS data, we previously used dos.x but now to obtain the PDOS data, we will use projwfc.x which stands for projecting the wavefunction. This takes the wavefunction generated in step 2 (which is in planewave basis) and expand it into atomic orbital basis. 
    
    projwfc.x -in 3.silicon.pdos.in > 3.silicon.pdos.out 

It will generate many output files. The number of data files is N+1 where N = number of atoms * number of orbitals in the PP. For each orbitals of each atom, there will be 1 file. Also, there will be one extra file containing the total of them. 

We have 2 silicon atoms in out input file. Also, note that inside the pseudopotentials, we can see a section as following:
    Valence configuration:
    nl pn  l   occ       Rcut    Rcut US       E pseu
    3S  1  0  2.00      1.600      1.800    -0.794728
    3P  2  1  2.00      1.600      1.800    -0.299965
That means we have two orbitals 3S and 3P - each with 2 electrons (total 4 valence electrons). So, we will have 2 files per atom: one for 3S and one for 3P. For a total of 2 atoms, we will have 4 files, and 1 extra total data file. 

Open the data files and see that the s orbital files have 3 columns (energy, ldos, pdos) but the p orbital files have 5 columns (energy, ldos, and 3 pdos column). Similarly, for a d orbital, we would have 7 column (energy, ldos, and 5 pdos column). Can you guess why the number of pdos column varies?

step 4) We can sum the contributions from each atom for specific orbitals. For example;

    sumpdos.x Si.pdos.dat.pdos_atm#*\(s\) > Si.pdos.s_orbitals

will sum the 3S contribution from all atom and save it into a file called Si.pdos.s_orbitals. Similarly, also do:

    sumpdos.x Si.pdos.dat.pdos_atm#*\(p\) > Si.pdos.p_orbitals

step 5) Now we can plot this and compare with the total PDOS to see what part of DOS came from which orbitals.

    gnuplot pdos.gnuplot 