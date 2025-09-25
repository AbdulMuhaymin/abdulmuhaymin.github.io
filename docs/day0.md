# Day 0: Setup & Preparation

Before we begin hands-on sessions, participants must prepare their systems by installing or compiling a few essential tools.

We will primarily use the **Quantum ESPRESSO (QE)** suite and **WEST** code. Additionally, tools like `c2x`, `XCrySDen`, and `VESTA` will assist with tasks like input generation, post-processing, and visualization.

---
## 🖥️ Operating System Requirements

To ensure smooth performance and compatibility, a Unix-like environment is required. Recommended options:

- **Ubuntu** or **Debian** (preferred for beginners)
- **Windows Subsystem for Linux (WSL)** with Ubuntu, if you're using Windows

> ⚠️ Regardless of OS, you must have access to a terminal (`bash`, `sh`, or `zsh`) to execute commands.

---

## 🧰 Recommended Software

- **Code Editors**: If you are an advanced user, you're free to use `nano` or `vim`. However, I recommend editors like **VS Code**, **Sublime Text**, or **Atom**. I'll be using **VS Code** during the sessions.
- **Zoom**: All lectures and hands-on sessions will be conducted via Zoom. Please ensure it's installed and functional. In case it doesn't work, we'll be using Google Meet. 
- **Python (optional but highly recommended)**: While not required, basic familiarity with Python is a plus. It can be helpful for automating tasks and analyzing results.

---

## ⚙️ Installing Quantum ESPRESSO (QE)

=== "✅ Recommended (Ubuntu)"

    1. **Install prerequisites**:
    ```bash
    $ sudo apt install git wget build-essential
    $ sudo apt install g++ gfortran liblapack-dev
    $ sudo apt install libfftw3-dev libopenmpi-dev
    ```

    2. **Download the source**:
        ```bash
        $ cd ~
        $ mkdir opt
        $ cd opt
        $ git clone https://github.com/QEF/q-e.git
        ```

    3. **Configure the build**:
        ```bash
        $ cd q-e
        $ ./configure
        ```

    4. **Compile QE (parallelized)**:
        ```bash
        $ make -j$(nproc) all
        ```

        > 💡 Use just `make all` if you're on an old PC or single-core system.

    5. **Verify installation**:
        Check the `~/opt/q-e/bin/` directory. You should see executables like `pw.x`, `dos.x`, etc.

    6. **(Optional) Add QE to your PATH**:
        ```bash
        $ echo 'export PATH=$PATH:$HOME/opt/q-e/bin' >> ~/.bashrc
        $ source ~/.bashrc
        ```

=== "✅ Recommended (macOS)"
    
    0. **Note that**:
        - Installing QE on macOS is tricky and depends on the chip family. 
        - If the following instruction doesn't work, you may try to debug following one of these link:
            - Using MateriApps Installer: [https://ma.issp.u-tokyo.ac.jp/en/app-post/5274](https://ma.issp.u-tokyo.ac.jp/en/app-post/5274)
            - Using spack: [https://github.com/nguyen-group/QE-SSP/discussions/9](https://github.com/nguyen-group/QE-SSP/discussions/9)
            - For M1: [https://github.com/nguyen-group/QE-SSP/discussions/7](https://github.com/nguyen-group/QE-SSP/discussions/7)


    1. **Install prerequisites**:
    ```bash
    $ brew install git wget gcc gfortran fftw lapack openblas open-mpi eigen
    ```

    2. **Download the source**:
        ```bash
        $ cd ~
        $ mkdir opt
        $ cd opt
        $ git clone https://github.com/QEF/q-e.git
        ```

    3. **Configure the build**:
        To configure QE on macOS, use the following:
        ```bash
        $ cd q-e
        $ ./configure FC=mpif90 CC=mpicc CPP=cpp-11 BLAS_LIBS="-L/opt/homebrew/lib -lveclibfort" LIBDIRS=/opt/homebrew/lib
        ```

    4. **Compile QE (parallelized)**:
        ```bash
        $ make -j$(sysctl -n hw.ncpu) all
        ```

        > 💡 Use just `make all` if you're on an old PC or single-core system.

    5. **Verify installation**:
        Check the `~/opt/q-e/bin/` directory. You should see executables like `pw.x`, `dos.x`, etc.

    6. **(Optional) Add QE to your PATH**:
        ```bash
        $ echo 'export PATH=$PATH:$HOME/opt/q-e/bin' >> ~/.zshrc
        $ source ~/.zshrc
        ```

    7. **(Optional) Fix potential issues**:
        If you encounter an error like:
          ```bash
          clang: error: no input files
          make[1]: *** [laxlib.fh] Error 1
          make: *** [libla] Error 1
          ```
          Re-define the `CPP` in `make.inc`:
          ```bash
          CPP=gcc -E
          ```

=== "🧪 Alternate (Quick Install)"

    If you're unable to compile QE, try the Ubuntu package version (not recommended for advanced features):

    ```bash
    $ sudo apt install quantum-espresso
    ```

    If this fails or you encounter errors, post in the Facebook group or create a GitHub issue: [https://github.com/AbdulMuhaymin/Workshop-2025/issues/new](https://github.com/AbdulMuhaymin/Workshop-2025/issues/new)
---

## 🔧 Other Tools

We don't need all of them. They might come handy along the journey and one should have these ready just in case.

* **`c2x`**: Can do a lot of things but we'll use it to prepare input files.
    - 
    ```bash
    $ sudo apt install c2x
    ```
    - Check [https://www.c2x.org.uk/](https://www.c2x.org.uk/) to learn more.

* **`XCrySDen`**: A visualization tool. Not required but helps if you have.
    - 
    ```bash
    $ sudo apt install xcrysden
    ```
    - Check [http://www.xcrysden.org/Download.html](http://www.xcrysden.org/Download.html) to learn more.

* **`VESTA`**: A powerful 3D visualization tool for structures and isosurfaces.
    - Download, unzip and execute from [https://jp-minerals.org/vesta/en/download.html](https://jp-minerals.org/vesta/en/download.html). 
    - Available for Windows, Linux and Mac. 
    - We'll probably not use it though!

---

## 🧭 WEST Code

WEST is a many-body perturbation theory code to be used in later sessions. It is built on top of Quantum ESPRESSO. Compilation and usage of the code will be shown on Day 5. Meanwhile you can learn more about them:

- Main webpage: [https://west-code.org/about/](https://west-code.org/about/)

- Documentation and tutorials: [https://west-code.org/doc/West/latest/](https://west-code.org/doc/West/latest/)

- WESTpy, a pre and post-processing code: [https://west-code.org/doc/westpy/latest/overview.html](https://west-code.org/doc/westpy/latest/overview.html)