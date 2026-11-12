// One C++ application that can do both of th following:
// Generate W bosons directly with PYTHIA
// Read exisitng POWHEG LHE events and shower them with PYTHIA
// Both modes will produce HepMC3 files through the same output interface

#include "Pythia8/Pythia.h"
#include "Pythia8Plugins/HepMC3.h"

#include <cstdlib>
#include <exception>
#include <iostream>
#include <string>

int main(int argc, char* argv[]) {

    using namespace Pythia8;

    if (argc != 5) {
        std::cerr << "USage: " << argv[0] << " <pythia|lhe> <config.cmnd|input.lhe>" << " <output.hepmc> <nEvents>\n";
        return 1;
    }

    const std::string mode = argv[1];
    const std::string input = argv[2];
    const std::string output = argv[3];

    int nEvents = 0;
    try {
        nEvents = std::stoi(argv[4]);
    } catch (const std::exception&) {
        std::cerr << "Invalid event count\n";
        return 1;
    }

    if (nEvents <= 0) {
        std::cerr << "nEvents must be positive\n";
        return 1;
    }

    Pythia pythia;

    if (mode == "pythia") {
        if (!pythia.readFile(input)) {
            std::cerr << "Cannot read PYTHIA configuration\n";
            return 1;
        }
    } else if (mode == "lhe") {
        pythia.readString("Beams:frameType = 4");
        pythia.readString("Beams:LHEF = " + input);
    } else {
        std::cerr << "Mode must be pythia or lhe\n";
        return 1;
    }

    if (!pythia.init()) {
        std::cerr << "PYTHIA initialisation failed\n";
        return 1;
    }

    // Convert PYTHIA event records into HepMC3

    Pythia8ToHepMC hepmc(output);

    int accepted = 0;

    for (int i = 0; i < nEvents; ++i) {
        if (!pythia.next()) {
            if (mode == "lhe" && pythia.info.atEndOfFile()) {
                break;
            }
            continue;
        }

        // Output the full generated event
        hepmc.writeNextEvent(pythia);
        ++accepted;
    }

    pythia.stat();

    std::cout << "HepMC file: " << output << "\n";
    std::cout << "Event written: " << accepted << "\n";

    if (accepted == 0) {
        std::cerr << "No events were generated\n";
        return 2;
    }

    return 0;

}