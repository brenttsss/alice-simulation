// PYTHIA8 event generator with two modes:
//   pythia : generate according to a PYTHIA .cmnd file
//   lhe    : shower POWHEG-BOX LHE events with PowhegHooks matching
// Both modes wite HepMC3 using Pythia8Plugin/HepMC3.h.
// Based on the POWHEG matching initialisation in PYTHIA8 main152.cc

#include "Pythia8/Pythia.h"
#include "Pythia8Plugins/HepMC3.h"
#include "Pythia8Plugins/PowhegHooks.h"

#include <cstdlib>
#include <exception>
#include <iostream>
#include <memory>
#include <string>

int main(int argc, char* argv[]) {

    using namespace Pythia8;

    if (argc != 5) {
        std::cerr << 
        "Usage: " << 
        argv[0] << 
        " <pythia|lhe> <config.cmnd|input.lhe>" << 
        " <output.hepmc> <nEvents>\n";
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
    std::shared_ptr<PowhegHooks> powhegHooks;

    if (mode == "pythia") {
        // Retain the origianl PYTHIA-only mode
        if (!pythia.readFile(input)) {
            std::cerr << "Cannot read PYTHIA configuration\n";
            return 1;
        }
    } else if (mode == "lhe") {
        // Hard process and W-boson muon decay have already been generated
        // in the standard POWHEG-BOX W process

        pythia.readString("Beams:frameType = 4");
        pythia.readString("Beams:LHEF = " + input);
        pythia.readString("PartonShowers:model = 1"); // Default PYTHIA shower

        // Matching settings for POWHEG-BOX W (Born: 2 leptons)
        pythia.readString("POWHEG:nFinal = -1");
        pythia.readString("POWHEG:veto = 1");
        pythia.readString("POWHEG:vetoCount = 3");
        pythia.readString("POWHEG:pThard = 0");
        pythia.readString("POWHEG:pTemt = 0");
        pythia.readString("POWHEG:emitted = 0");
        pythia.readString("POWHEG:pTdef = 1");
        pythia.readString("POWHEG:MPIveto = 0");

        // Full phase-space shower, with hard emissions vetoed by hooks. 
        // Same defulat-PYTHIA-shower choices as main152.cc
        pythia.readString("SpaceShower:pTmaxMatch = 2");
        pythia.readString("TimeShower:pTmaxMatch = 2");
        pythia.readString("SpaceShower:pTdampMatch = 3");
        pythia.readString("TimeShower:pTdampMatch = 0");

        pythia.readString("PartonLevel:ISR = on");
        pythia.readString("PartonLevel:FSR = on");
        pythia.readString("PartonLevel:MPI = on");
        pythia.readString("HadronLevel:all = on");
        pythia.readString("TimeShower:QEDshowerByL = on");

        // Essential: setting POWHEG:veto is NOT sufficient on its own
        // Install the hooks before pythia.init()
        powhegHooks = std::make_shared<PowhegHooks>();
        pythia.setUserHooksPtr(powhegHooks);
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
    int failures = 0;

    const int maxFailures = 10;

    unsigned long nISRveto = 0;
    unsigned long nFSRveto = 0;

    // nEvents counts successfully showered/written events, not failed tries
    while (accepted < nEvents) {
        if (!pythia.next()) {
            if (mode == "lhe" && pythia.info.atEndOfFile()) {
                break;
            }
            if (++failures >= maxFailures) {
                std::cerr << "Too many PYTHIA event failures: STOPPING\n";
            }
            continue;
        }

        // Output the full generated event
        hepmc.writeNextEvent(pythia);
        ++accepted;

        if (powhegHooks) {
            nISRveto += powhegHooks->getNISRveto();
            nFSRveto += powhegHooks->getNFSRveto();
        }
    }

    pythia.stat();

    if (powhegHooks) {
        std::cout << "POWHEG ISR emissions vetoed: " << nISRveto << "\n";
        std::cout << "POWHEG FSR emissions vetoed: " << nFSRveto << "\n";
    }

    std::cout << "HepMC file: " << output << "\n";
    std::cout << "Event written: " << accepted << "\n";

    if (accepted == 0) {
        std::cerr << "No events were generated\n";
        return 2;
    }

    return 0;

}