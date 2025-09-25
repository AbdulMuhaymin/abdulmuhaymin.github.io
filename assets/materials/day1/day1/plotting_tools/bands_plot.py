#!/usr/bin/env python
from bands_plot_module import *

datafile='Si.bands.dat.gnu'
fermi = 5.67
symmetryfile='5.silicon.bands_pp.out'
bool_shift_efermi= True
fig, ax = plt.subplots()

#bndplot(datafile,fermi,symmetryfile,ax)
bndplot(datafile,fermi,symmetryfile,ax,shift_fermi=fermi, color='black',linestyle='solid',name_k_points=['L', 'G', 'X', 'U', 'G'])

plt.title("PBE band structure of FCC silicon", fontsize=20)
plt.show()
