import matplotlib.pyplot as plt
from matplotlib import rcParamsDefault
import numpy as np

# load data
energy, dos, idos = np.loadtxt('Si.dos.dat', unpack=True)
fermi = 5.76

# make plot
plt.figure(figsize = (12, 6))
plt.plot(energy-fermi, dos, linewidth=0.75, color='red')
plt.yticks([])

plt.xlabel('Energy (eV)', fontsize=15)
plt.ylabel('DOS (arb. unit)', fontsize=15)
plt.title('Density of states for FCC Silicon (PBE)', fontsize=20)

plt.axvline(x=0, linewidth=0.5, color='k', linestyle=(0, (8, 10)))
plt.text(0.1, 1, 'Fermi energy', rotation=90, fontsize=15)

#plt.xlim(5, 20)
#plt.ylim(0, 200)

plt.fill_between(energy-fermi, 0, dos, where=(energy < fermi), facecolor='red', alpha=0.25)
plt.show()