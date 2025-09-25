For the convergence testing, we will do 5 different tests:

T1. Kinetic energy cutoff for wavefunction (ecutwfc)
T2. Kinetic energy cutoff for charge density and potentials (ecutrho)
T3. K-points mesh density
T4. Smearing type and parameters
T5. Lattice constants

Let's start with T1:

There are multiple ways to perform convergence test. The easiest way to understand is to do it manually, i.e., increase ecutwfc by 5 or 10 Ry and run a new calculation everytime. Then inspect how the total energy changes in the output. When you see that increasing the ecutwfc doesn't change the total energy anymore (i.e. changes very little), then you can fix that ecutwfc value as your converged ecutwfc parameter. Similar principle goes for all other convergence tests. 

The second way to do this is to write a bash or python script which can automatically generate multiple input files and run each of them. 

The third way to do this is to use PWTK. It is an automation tool for QE. However, we will not use this now. This is a powerful tool but takes some time to get comfortable with. Another thing is that it's usually not available in HPC systems. So, it's good for small calculation but for large calculation, it's better to stick with manual approach.

Each of the folder (T1-T5) contains a shell script which can be executed by doing either
    bash name_of_the_file.sh 
or by doing 
    ./name_of_the_file.sh

Plotting script is given in the same folder.

For all scf, nscf, and relaxation calculations, we have to use the pw.x executable. For projected DOS, we have to use projwfc.x after the nscf calculation (instead of dos.x). 