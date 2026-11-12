# PYTHIA + POWHEG + HEPMC3

## Installation

### PYTHIA
To install PYTHIA8, use:
```bash
brew install pythia
```

### POWHEG
To install POWHEG-BOX which contains the processes necessary for the W-boson, use:
```bash
git clone git@gitlab.com:POWHEG-BOX/V1/POWHEG-BOX.git
```
The individual W-boson process can be downloaded using:
```bash
git submodule update --remote --init W
```
To build the process, first enter the process directory and make a `obj/` file:
```bash
cd W
mkdir -p obj
```
Run a clean build to ensure all paths resolve properly:
```bash
make clean
make
```
Run a build using the following command:
```bash
make FFLAGS="-O@ -fno-automatic -fallow-argument-mismatch -std=legacy"
```
Verify the executable exists using:
```bash
ls -l pwhg_main
```
It is possible to test the executable using the input card `posher.input` found in the folder:
```bash
./pwhg_main
```



### HEPMC3
To install HepMC3, use:
```bash
brew install hepmc3
```
To build HepMC3, use:
```bash
make ../HepMC3/ -D CMAKE_INSTALL_PREFIX=/$HOME/alice-simulation/external/hepmc3-install
make -j4 install
```

## Directory set-up
There are seven folders each with distinct purposes:
- `src/`
  C++ event generation and conversion
- `config/`
  PYTHIA settings and POWHEG input cards
- `scripts/`
  Build, execution and validation commands
- `data/lhe`
  POWHEG LHE output files
- `data/hepmc`
  Final events for O2 input
- `build/`
  Compiled executables
- `powheg-run/`
  Clean workspace for POWHEG job execution

## Standalone PYTHIA

## PYTHIA + POWHEG

## Conversion to HEPMC3
