HEPMC_HOME="/opt/homebrew"

clang++ -std=c++17 \
src/check_hepmc.cc \
-I"$HEPMC_HOME/include" \
-L"$HEPMC_HOME/lib" \
-Wl,-rpath,"$HEPMC_HOME/lib" \
-lHepMC3 \
-o build/check_hepmc