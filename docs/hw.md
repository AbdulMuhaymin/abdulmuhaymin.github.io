# Assignments

## Assignment 1

<span style="color: red; font-weight: bold;"> The report is due by July 13 - midnight.</span>

Each of you has been assigned a specific material during the session. Please follow the steps below for **your material only**:

??? success "Grading rubric for Assignment 1"

    **Total Points: 20 pts + 1 bonus**

    *📁 Submission & File Organization*

    | Criterion | Points |
    |----------|--------|
    | Submitted the report within deadline in Google Docs | 1 pt |
    | Zipped all input/output/intermediate files to reproduce your work | 1 pt |

    **📝 Summary Report**

    | Criterion | Points |
    |----------|--------|
    | Summary includes material structure (lattice parameters, crystal type) and electronic structure (band gap, band structure) | 3 pts |
    | Report includes band structure and DOS figures | 2 pts |
    | Report is coherent, consistent, and complete | 3 pts |

    **⚙️ Data Preparation & Simulations**

    | Criterion | Points |
    |----------|--------|
    | Found the correct CIF file | 1 pt |
    | Obtained appropriate pseudopotential file | 1 pt |
    | Created QE input file for SCF calculation (pw.x) | 1 pt |
    | Created QE input file for NSCF calculation (pw.x) | 1 pt |
    | Created QE input file for DOS calculation (dos.x) | 1 pt |
    | Created QE input file for band structure calculation (bands.x) | 1 pt |
    | Successfully ran all calculations and produced valid output files | 4 pts |

    **🌟 Bonus**

    | Criterion | Points |
    |----------|--------|
    | Extra credit for insightful analysis, additional plots, or exploring new aspects (clearly labeled) | +1 pt |

    ---

    *Note: All input/output files must be clearly labeled and organized. Try to follow the naming convention adopted during the session.*


??? tip "Assignment 1"
    1. Research the material online (Google it, read the Wikipedia page, note some of its properties such as band gap, band structure, structural parametrs, etc.) and write a brief summary.
    2. Locate your material on [Materials Project](https://materialsproject.org), and download both its **symmetrized** and **standard** CIF files, along with the POSCAR.
    3. Open the CIF and POSCAR files in a text editor and note the differences between symmetrized and regular CIF formats.
    4. Visualize the structure using a tool of your choice (e.g., XCrySDen, VESTA). Take and save a few screenshots.
    5. Create a Quantum ESPRESSO (QE) input file — either manually or using the QE input generator. Try to put only the non-default values for clarity.
    6. Use the pseudopotentials of your choice. It could be from:
        - SG15 Optimized Norm Conserving Pseudopotentials (ONCVPP)
        - Official Quantum ESPRESSO pseudopotential database 
        - Standard Solid State Pseudopotentials (SSSP) - either efficiency or precision. 
        > For now, avoid pseudo-dojo because my personal experience with pseudo-dojo is not good but if in future if you decide to perform SIESTA calculations in future, it's a good source. Google these sources to learn more about them.  
    7. Run an SCF (self-consistent field) calculation.
    8. Explore the output file. Note key data such as Fermi energy/HOMO-LUMO, total energy, occupations, etc.
    9. Calculate the electronic structure (energy dispersion, i.e., the band structure and the density of states curve)
    10. Did you perform NSCF calculation? Did you notice any difference in the output for calculation with and without NSCF?
    11. Prepare a brief report in your assigned Google Doc. The emphasis is not on perfect results but on documenting your approach, workflow, and thought process.
    12. There's no minimum or maximum length requirement. A clear and concise 1-page summary is often better than an unfocused 3-page report. 
    13. At a minimum, include:
        - A short description of the material and its structure (images).
        - A step-by-step list of what you did.
        - Any results you obtained and your reflections or questions about them (band structure, DOS image).
        - Comparison between your result and experimental data and/or previous computational studies.
    14. Some materials may be harder to simulate. Don’t worry if your material is difficult to treat computationally! Just document any issues you encounter and feel free to reach out to me for help.
    15. Good luck and enjoy the process!

    | Material                     | Assigned to                  |
    |------------------------------|------------------------------|
    | MgO                          | Apu                          |
    | CaO                          | Siam                         |
    | GaAs                         | Mithu                        |
    | GaP                          | Binita                       |
    | GaN                          | Sifat                        |
    | Diamond                      | Maharnab                     |
    | BN                           | Morium                       |
    | AlN                          | Maisha                       |
    | AlP                          | Easteak                      |
    | AlAs                         | Afsana                       |
    | ZnS                          | Ohee                         |
    | ZnO                          | Saiful                       |
    | Ge                           | Abrar                        |
    | NaCl                         | Shakil                       |
    | KCl                          | Jony                         |

    > Some materials have more than one structure. In that case, choose the cubic structure (FCC/BCC/SC). Avoid hexagonal wurtzite structures for now. The calculation process is similar, but modeling hexagonal lattices is a bit more complex than cubic ones.  


## Assignment 2

<span style="color: red; font-weight: bold;"> The report is due by July 15 - midnight. </span>

??? success "Grading rubric for Assignment 2"
    **Total Points: 20 pts + 1 bonus**

    | Category                          | Points | Criteria |
    |----------------------------------|--------|----------|
    | **1. Molecule Selection & Literature Research** | **3 pts** | - Chose a valid diatomic molecule (not H₂) (1 pt)  <br> - Reported experimental bond length and dissociation energy (1 pt) <br> - Found and cited at least one theoretical/computational study (1 pt) |
    | **2. Input File Preparation**    | **3 pts** | - Created a correct and clean QE input file (2 pts) <br> - Avoided unnecessary defaults; input was well-commented (1 pt) |
    | **3. Relaxation Calculation**    | **4 pts** | - Successfully ran the relaxation (1 pt) <br> - Reported optimized bond length (1 pt) <br> - Reported force and stress values (1 pt) <br> - Used a large enough vacuum cell (≥10 Å) (1 pt) |
    | **4. Dissociation Energy Calculation** | **4 pts** | - Ran SCF for separated atoms (1 pt) <br> - Correctly applied energy formula: \( D_e = E_\text{atoms} - E_\text{molecule} \) (1 pt) <br> - Reported dissociation energy (1 pt) <br> - Used reasonable separation (e.g., >5 Å) (1 pt) |
    | **5. Comparison and Analysis**   | **3 pts** | - Compared your result with experimental/literature values (1 pt) <br> - Discussed reasons for any discrepancy (1 pt) <br> - Demonstrated understanding and reflection (1 pt) |
    | **6. Report Quality**            | **3 pts** | - Clear step-by-step documentation (1 pt) <br> - Included figures and outputs (1 pt) <br> - Well-formatted and grammatically sound (1 pt) |
    | **💡 Bonus**                     | **+1 pt** | Extra effort: e.g., second molecule, Morse fit, convergence test, etc. |

    > 📌 **Note:** The focus is not on perfect numerical accuracy but on your process, reasoning, and documentation quality.


??? tip "Assignment 2"
    1. Choose your favorite diatomic molecule **other than hydrogen** — for example: N₂, F₂, Cl₂, CO, HF, or HCl.
    2. Find the **experimental bond length** and **dissociation energy** of your chosen molecule. Search the literature for any **theoretical studies** (DFT or quantum chemical methods) that report similar values.
    3. Create your own Quantum ESPRESSO input file to perform a **relaxation** calculation for the molecule from scratch.  
       _Hint: use the H₂ input file we used during the session as a template._
    4. Report the **optimized bond length**, **forces** on the atoms, and **stress** on the unit cell.
    5. Separate the atoms (i.e., increase the bond length significantly) and perform an **SCF calculation** to estimate the **dissociation energy**.
    6. Compare your results with experimental and literature values. Reflect on why your results may differ or match.
    7. Document your work in your assigned **Google Doc**.  
       The emphasis is not on getting perfect results but on clearly presenting your **workflow**, **methodology**, and **thought process**.

## Assignment 3

<span style="color: red; font-weight: bold;"> The report is due by July 19 - midnight. </span>

??? success "Grading rubric for Assignment 3"
    **Total Points: 20 pts + 1 bonus**

    | Category                          | Points | Criteria |
    |----------------------------------|--------|----------|
    | **1. Structure Selection & Setup** | **3 pts** | - Chose an appropriate material (preferably cubic) (1 pt) <br> - Modified QE input to use `ibrav` and `celldm(1)` or `a` (1 pt) <br> - Removed `CELL_PARAMETERS` correctly (1 pt) |
    | **2. SCF Calculations for EOS**   | **4 pts** | - Generated ~10 structures with varied lattice parameters (1 pt) <br> - Successfully ran SCF for each one (1 pt) <br> - Recorded total energies and lattice values clearly (2 pts) |
    | **3. EOS Analysis & Fitting**     | **4 pts** | - Organized energy vs. volume/lattice constant data (1 pt) <br> - Fitted EOS using Python or `ev.x` (2 pts) <br> - Identified equilibrium lattice constant (1 pt) |
    | **4. vc-relax Calculations**      | **4 pts** | - Performed vc-relax from a **close** initial value (1 pt) <br> - Performed vc-relax from a **far** initial guess (1 pt) <br> - Reported final relaxed structure(s) (1 pt) <br> - Noted convergence behavior or differences (1 pt) |
    | **5. Report Quality**             | **5 pts** | - Documented steps and methods clearly (1 pt) <br> - Included plots/tables of EOS and SCF data (1 pt) <br> - Compared vc-relax results to EOS fit (1 pt) <br> - Explained reasoning and workflow (1 pt) <br> - Organized, clear formatting and grammar (1 pt) |
    | **💡 Bonus**                      | **+1 pt** | Attempted hexagonal structure or added extra analysis (e.g., energy convergence test, bulk modulus comparison, etc.) |

    > 📌 **Note:** Accuracy matters, but the focus is on learning and explaining your process clearly.

??? tip "Assignment 3"
    1. In this assignment, we will work with lattice parameters! Choose any of the crystal structure you like. It can be the one you had for Assignment 1, or any other. Just try to choose a cubic one. Bceause hexagonal crystal structure will be somewhat different and a little bit difficult. If you like challenge, then you can choose hexagonal ones! Or maybe first do a cubic one, and when you complete this, then go for a hexagonal one!
    2. Generate the input file using QE input generator but then change the input file to remove CELL_PARAMETERS card. Use `ibrav`, and either `celldm` or `a`, instead.
    3. Generate 10 different input files to change the lattice parameters by a little. The overall range should be around
    4. Collect the cell parameters (either in Angstrom/Bohr radius) vs total energy data in a file.
    5. Perform an equation of state analysis using Python or `ev.x`
    6. Perform two vc-relax calculations: one starting close (~0.5 Angstrom) from the cell parameters you obtained and one starting from far (~2 Angstrom)
    7. Document your work in your assigned **Google Doc**.  
       The emphasis is not on getting perfect results but on clearly presenting your **workflow**, **methodology**, and **thought process**.

## Assignment 4

<span style="color: red; font-weight: bold;"> Due date: </span>
??? note "Assignment 4"
    Preparing...