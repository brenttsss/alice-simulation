#include "HepMC3/ReaderAscii.h"
#include "HepMC3/GenEvent.h"
#include "HepMC3/GenParticle.h"
#include "HepMC3/GenParticle.h"
#include "HepMC3/GenVertex.h"

#include <cmath>
#include <iostream>
#include <string>

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cerr << "Usage: check_hepmc FILE \n";
        return 1;
    }

    HepMC3::ReaderAscii reader(argv[1]);

    if (reader.failed()) {
        std::cerr << "Cannot open HepMC file\n";
        return 1;
    }

    int events = 0;
    int wplus = 0;
    int wminus = 0;
    int muplus = 0;
    int muminus = 0;
    int forwardMuons = 0;

    while (true) {
        HepMC3::GenEvent evt;
        reader.read_event(evt);

        if (reader.failed()) break;
        ++events;

        for (const auto& p : evt.particles()) {
            const int id = p->pid();

            if (std::abs(id) == 24 && events <= 3) {
                std::cout << "\nEvent " << events
                << " W boson PDG: " << id
                << " status: " << p->status()
                << "\n";

                auto decayVertex = p->end_vertex();

                if (decayVertex) {
                    std::cout << "Outgoing particles: ";

                    for (const auto& child : decayVertex->particles_out()) {
                        std::cout << child->pid()
                        << " ";
                    }

                    std::cout << "\n";
                } else {
                    std::cout << "No end vertex recorded\n";
                }
            }

            if (id == 24) ++wplus;
            if (id == -24) ++wminus;

            if (p->status() != 1) continue;

            if (id == -13) ++muplus;
            if (id == 13) ++muminus;

            if (std::abs(id) == 13) {
                const auto mom = p->momentum();
                const double pT = std::hypot(mom.px(), mom.py());
                const double eta = mom.eta();

                if (eta > -4.0 && eta < -2.5) {
                    ++forwardMuons;
                }

                if (events <= 3) {
                    std::cout << "Event " << events 
                    << " muon pT = " << pT 
                    << " eta = " << eta << "\n";
                }
            }
        }
    }

    std::cout << "Events: " << events << "\n"
    << "W+: " << wplus << "\n"
    << "W-: " << wminus << "\n"
    << "Final mu+: " << muplus << "\n"
    << "Final mu-: " << muminus << "\n"
    << "Muons in example forward eta range: "
    << forwardMuons << "\n";

    if (events == 0) return 2;
    return 0;
}