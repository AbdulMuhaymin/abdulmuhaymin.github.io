# Exercise 2: Magnetic system

In this exercise, we will first look at ferromagnetic iron and then we will look at its anti-ferromagnetic configuration. To turn on spin-polarization, we use the keyword: nspin=2. Also note that we have used smearing since it's a metal.

step 1) Get the ground state of the ferromagnetic Fe 

    pw.x -in 1.Fe.FM.scf.in > 1.Fe.FM.scf.out

step 2) Get the ground state of the anti-ferromagnetic Fe 

    pw.x -in 2.Fe.AFM.scf.in > 2.Fe.AFM.scf.out

Notice the starting_magnetization in the input file. Also how we used Fe1 and Fe2 in AFM configuration. 

In the output file, look for Total magnetization and absolute magnetization values. You can get magnetic moment per atomic site too.

Check the energy per atom value. Any conclusion about which one is more stable?