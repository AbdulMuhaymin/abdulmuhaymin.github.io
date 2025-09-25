# Equation of State (EOS) analysis 
## 📐 Quantum ESPRESSO `ev.x` Tutorial: EOS Fitting

This guide explains how to use Quantum ESPRESSO’s `ev.x` utility and an alternative Python script to fit **energy vs volume** or **energy vs lattice parameter** data using equations of state (EOS), such as the **Birch-Murnaghan EOS**.

---

## 📦 What is `ev.x`?

`ev.x` is a utility program in Quantum ESPRESSO used to fit energy–volume (or lattice parameter) data using standard EOS models to extract key material properties:

- **Equilibrium lattice constant**
- **Bulk modulus (B₀)**
- **Pressure derivative of the bulk modulus (B₀′)**

Supported EOS models:
- Birch 1st and 2nd order
- Murnaghan
- Keane

---

## 🧰 Step-by-Step: Using `ev.x`

### 1. 📄 Prepare Input File

Prepare a file like `my_data.txt` with two columns:

```text
4.15		-563.40066682
4.16		-563.40365352
4.17		-563.40631110
4.18		-563.40864860
4.19		-563.41067215
4.20		-563.41238673
4.21		-563.41380140
4.22		-563.41492166
4.23		-563.41575443
4.24		-563.41630628
4.25		-563.41658018
4.26		-563.41658678
4.27		-563.41639698
4.28		-563.41588848
4.29		-563.41512615
4.30		-563.41411646
4.31		-563.41286694
4.32		-563.41137993
4.33		-563.40966219
4.34		-563.40771924
4.35		-563.40555615
```

Where each line corresponds to:

```
<lattice parameter or volume>         <total energy>
```

### 2. ▶️ Run `ev.x`

Launch the program and follow the prompts:

```bash
ev.x
```

Example session:

```
Lattice parameter or Volume are in (au, Ang) > Ang
Assuming Angstrom
Enter type of bravais lattice (fcc, bcc, sc, noncubic) > sc
Enter type of equation of state :
1=birch1, 2=birch2, 3=keane, 4=murnaghan > 1
Input file > my_data.txt
Minimization succeeded
Output file > birch1.out
```

---

## 📂 Output Files

### 🔹 `birch1.out`

This is a human-readable file containing:

- Fitted parameters (a₀, B₀, B₀′, chi²)
- Table of calculated vs fitted energies and derived pressures

Example excerpt:

```
# equation of state: birch 1st order.  chisq =   0.1832D-09
# a0 =  8.0419 a.u., k0 = 1511 kbar, dk0 =  3.99 d2k0 =  0.000 emin = -563.41665
# a0 =  4.25560 Ang, k0 = 151.2 GPa,  V0 =   520.09 (a.u.)^3,  V0 =   77.07 A^3 
...
Lat.Par    E_calc    E_fit    E_diff    Pressure    Enthalpy
...
```

### 🔸 `birch1.out.xml`

This XML contains the same information in machine-readable format. Key tags:

```xml
<CELL_PARAMETER_AU_A> 0.1909 0.10102 </CELL_PARAMETER_AU_A>
<BULK_MODULUS_KBAR> 4.25e+12 </BULK_MODULUS_KBAR>
<DERIVATIVE_BULK_MODULUS> 5.34 </DERIVATIVE_BULK_MODULUS>
<MINIMUM_ENERGY_RY> -74476.22 </MINIMUM_ENERGY_RY>
```

---

## 📐 The Birch-Murnaghan EOS Equation

The **third-order Birch-Murnaghan equation** is:

\[
E(V) = E_0 + \frac{9V_0 B_0}{16} \left\{ \left[ \left(\frac{V_0}{V} \right)^{2/3} - 1 \right]^3 B_0' + \left[ \left(\frac{V_0}{V} \right)^{2/3} - 1 \right]^2 \left[6 - 4 \left(\frac{V_0}{V} \right)^{2/3} \right] \right\}
\]

Where:
- \(E_0\): minimum energy  
- \(V_0\): equilibrium volume  
- \(B_0\): bulk modulus  
- \(B_0'\): pressure derivative of the bulk modulus

---

## 🐍 Python Alternative to `ev.x`

You can also perform EOS fitting using the script below.

### 🔧 Requirements

- Python
- NumPy
- SciPy
- Matplotlib

### 📜 Script

```python
import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

# Define the Birch-Murnaghan EOS function
def birch_murnaghan(V, E0, B0, B0_prime, V0):
    eta = (V0 / V) ** (1/3)
    return E0 + (9 * B0 * V0 / 16) * ((eta**2 - 1)**2) * (6 + B0_prime * (eta**2 - 1) - 4 * eta**2)

# Load data from file
data = np.loadtxt('energy_vs_alat.dat')
a = data[:, 0]  # Lattice constants in Angstrom
E = data[:, 1]  # Total energies in Ry

# Convert energies from Ry to eV (1 Ry = 13.605693 eV)
E = E * 13.605693

# Convert lattice constants to volumes (assuming cubic structure)
V = a ** 3

# Initial guesses for the fitting parameters
E0_guess = np.min(E)
V0_guess = V[np.argmin(E)]
B0_guess = 1.0  # in eV/Å³
B0_prime_guess = 4.0

# Perform the curve fitting
popt, _ = curve_fit(birch_murnaghan, V, E, p0=[E0_guess, B0_guess, B0_prime_guess, V0_guess])
E0, B0, B0_prime, V0 = popt

# Generate volumes for plotting the fitted curve
V_fit = np.linspace(min(V), max(V), 100)
E_fit = birch_murnaghan(V_fit, E0, B0, B0_prime, V0)

# Plot the data and the fitted curve
plt.figure(figsize=(8, 6))
plt.plot(V, E, 'o', label='Data')
plt.plot(V_fit, E_fit, '-', label='Birch-Murnaghan Fit')
plt.xlabel('Volume (Å³)', fontsize=15)
plt.ylabel('Energy (eV)', fontsize=15)
plt.title('Birch-Murnaghan EOS Fit', fontsize=18)
plt.legend(fontsize=12)
plt.tight_layout()
plt.xticks(fontsize=14)
plt.show()

# Conversion factor from eV/Å³ to GPa
eV_per_A3_to_GPa = 160.217662

# Convert B0 to GPa and kbar
B0_GPa = B0 * eV_per_A3_to_GPa
B0_kbar = B0_GPa * 10

# Print results
print(f"Equilibrium energy (E0): {E0:.6f} eV")
print(f"Equilibrium volume (V0): {V0:.6f} Å³")
print(f"Bulk modulus (B0): {B0:.6f} eV/Å³")
print(f"Bulk modulus in GPa: {B0_GPa:.6f}")
print(f"Bulk modulus in kbar: {B0_kbar:.6f}")
print(f"Pressure derivative of B0 (B0'): {B0_prime:.6f}")
```

---

## ✅ Summary

| Tool     | EOS Types         | Output Params                    | Best For                          |
|----------|-------------------|----------------------------------|-----------------------------------|
| `ev.x`   | Birch, Murnaghan, Keane | a₀, B₀, B₀′, χ²           | Fast CLI-based EOS fitting        |
| Python   | Birch-Murnaghan   | E₀, V₀, B₀, B₀′ (with plots)     | Custom analysis & publication use |

---

## 📚 References

- [Birch–Murnaghan EOS – Wikipedia](https://en.wikipedia.org/wiki/Birch%E2%80%93Murnaghan_equation_of_state)
- [Source code for ev.x](https://gitlab.com/QEF/q-e/-/blob/develop/PW/tools/ev.f90)

---
