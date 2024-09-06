import SwiftUI

enum StratagemSeq: String, Hashable {
    case left
    case right
    case up
    case down
}

struct StratagemSection: Identifiable {
    var id = UUID()
    var type: StratagemType
    var list: [Stratagem]
}

struct Stratagem: Identifiable, Hashable {
    var id: Int
    var title: String
    var sequences: [StratagemSeq]
}

enum StratagemType: String {
    case Mission
    case Defensive
    case SupplyBackpacks = "Supply: Backpacks"
    case SupportWeapons = "Support: Weapons"
    case SupplyElectronics = "Supply: Electronics"
    case OffensiveOrbital = "Offensive: Orbital"
    case OffensiveTactical = "Offensive: Tactical"
}

let stratagems: [StratagemSection] = [
    StratagemSection(type: .Mission, list: [
        Stratagem(id: 24, title: "Reinforce", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.right, StratagemSeq.left, StratagemSeq.up]),
        Stratagem(id: 25, title: "SOS Beacon", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.right, StratagemSeq.up]),
        Stratagem(id: 26, title: "Resupply", sequences: [StratagemSeq.down, StratagemSeq.down, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 27, title: "NUX-223 Hellbomb", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.down, StratagemSeq.up]),
        Stratagem(id: 28, title: "SSSD Delivery", sequences: [StratagemSeq.down, StratagemSeq.down, StratagemSeq.down, StratagemSeq.up, StratagemSeq.up]),
        Stratagem(id: 29, title: "Seismic Probe", sequences: [StratagemSeq.up, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right, StratagemSeq.down, StratagemSeq.down]),
        Stratagem(id: 32, title: "SEAF Artillery", sequences: [StratagemSeq.right, StratagemSeq.up, StratagemSeq.up, StratagemSeq.down]),
        Stratagem(id: 33, title: "Super Earth Flag", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.down, StratagemSeq.up]),
    ]),
    StratagemSection(type: .Defensive, list: [
        Stratagem(id: 34, title: "E/MG-101 HMG Emplacement", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right, StratagemSeq.right, StratagemSeq.left]),
        Stratagem(id: 35, title: "FX-12 Shield Generator Relay", sequences: [StratagemSeq.down, StratagemSeq.down, StratagemSeq.left, StratagemSeq.right, StratagemSeq.left, StratagemSeq.right]),
        Stratagem(id: 36, title: "A/ARC-3 Tesla Tower", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right]),
        Stratagem(id: 37, title: "MD-6 Anti-Personnel Minefield", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 39, title: "A/MG-43 Machine Gun Sentry", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.right, StratagemSeq.up]),
        Stratagem(id: 40, title: "A/G-16 Gatling Sentry", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.left]),
        Stratagem(id: 41, title: "A/M-12 Mortar Sentry", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.right, StratagemSeq.down]),
        Stratagem(id: 42, title: "A/AC-8 Autocannon Sentry", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.up, StratagemSeq.left, StratagemSeq.up]),
        Stratagem(id: 43, title: "A/MLS-4X Rocket Sentry", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.right, StratagemSeq.left]),
        Stratagem(id: 44, title: "A/M-23 EMS Mortar Sentry", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.right, StratagemSeq.down, StratagemSeq.right]),
    ]),
    StratagemSection(type: .SupplyBackpacks, list: [
        Stratagem(id: 2, title: "B-1 Supply Pack", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.down, StratagemSeq.up, StratagemSeq.up, StratagemSeq.down]),
        Stratagem(id: 3, title: "AX/LAS-5 \"Guard Dog\" Rover", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.up, StratagemSeq.right, StratagemSeq.right]),
        Stratagem(id: 4, title: "SH-20 Ballistic Shield Backpack", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.down, StratagemSeq.down, StratagemSeq.up, StratagemSeq.left]),
    ]),
    StratagemSection(type: .SupportWeapons, list: [
        Stratagem(id: 7, title: "MG-43 Machine Gun", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.down, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 8, title: "APW-1 Anti-Materiel Rifle", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.right, StratagemSeq.up, StratagemSeq.down]),
        Stratagem(id: 9, title: "M-105 Stalwart", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.down, StratagemSeq.up, StratagemSeq.up, StratagemSeq.left]),
        Stratagem(id: 10, title: "EAT-17 Expendable Anti-tank", sequences: [StratagemSeq.down, StratagemSeq.down, StratagemSeq.left, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 11, title: "GR-8 Recoilless Rifle", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.right, StratagemSeq.right, StratagemSeq.left]),
        Stratagem(id: 13, title: "AC-8 Autocannon", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.down, StratagemSeq.up, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 14, title: "MG-206 Heavy Machine Gun", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.up, StratagemSeq.down, StratagemSeq.down]),
        Stratagem(id: 15, title: "RS-422 Railgun", sequences: [StratagemSeq.down, StratagemSeq.right, StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right]),
        Stratagem(id: 17, title: "GL-21 Grenade Launcher", sequences: [StratagemSeq.down, StratagemSeq.left, StratagemSeq.up, StratagemSeq.left, StratagemSeq.down]),
        Stratagem(id: 19, title: "ARC-3 Arc Thrower", sequences: [StratagemSeq.down, StratagemSeq.right, StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.left]),
        Stratagem(id: 20, title: "LAS-99 Quasar Cannon", sequences: [StratagemSeq.down, StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right]),
        Stratagem(id: 21, title: "RL-77 Airburst Rocket Launcher", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right]),
    ]),
    StratagemSection(type: .SupplyElectronics, list: [
        Stratagem(id: 7, title: "Recon Drone", sequences: [StratagemSeq.right, StratagemSeq.up, StratagemSeq.left, StratagemSeq.down, StratagemSeq.left]),
        Stratagem(id: 8, title: "EMP Drone", sequences: [StratagemSeq.right, StratagemSeq.left, StratagemSeq.up, StratagemSeq.down, StratagemSeq.right]),
        Stratagem(id: 9, title: "Sensor Package", sequences: [StratagemSeq.left, StratagemSeq.right, StratagemSeq.down, StratagemSeq.up, StratagemSeq.down]),
        Stratagem(id: 10, title: "Jammer", sequences: [StratagemSeq.up, StratagemSeq.left, StratagemSeq.right, StratagemSeq.down, StratagemSeq.left]),
        Stratagem(id: 11, title: "Tactical Scanner", sequences: [StratagemSeq.up, StratagemSeq.right, StratagemSeq.left, StratagemSeq.down, StratagemSeq.up]),
        Stratagem(id: 15, title: "Recon Drone", sequences: [StratagemSeq.left, StratagemSeq.right, StratagemSeq.up, StratagemSeq.down, StratagemSeq.right]),
        Stratagem(id: 17, title: "Signal Jammer", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right, StratagemSeq.down]),
        Stratagem(id: 19, title: "EMP Grenade", sequences: [StratagemSeq.right, StratagemSeq.down, StratagemSeq.left, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 21, title: "Deployable Camera", sequences: [StratagemSeq.left, StratagemSeq.up, StratagemSeq.down, StratagemSeq.right, StratagemSeq.left]),
    ]),
    StratagemSection(type: .OffensiveOrbital, list: [
        Stratagem(id: 54, title: "SatCom Orbital Strike", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.left, StratagemSeq.right, StratagemSeq.right, StratagemSeq.down]),
        Stratagem(id: 55, title: "Solar Beam Satellite", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.left, StratagemSeq.right, StratagemSeq.left]),
        Stratagem(id: 56, title: "EM Pulse Orbital Strike", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.left, StratagemSeq.left, StratagemSeq.right]),
        Stratagem(id: 57, title: "Satellite Guided Bombardment", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.left, StratagemSeq.up, StratagemSeq.right]),
        Stratagem(id: 58, title: "Plasma Satellite Cannon", sequences: [StratagemSeq.up, StratagemSeq.down, StratagemSeq.left, StratagemSeq.right]),
    ]),
    StratagemSection(type: .OffensiveTactical, list: [
        Stratagem(id: 59, title: "Tactical Airstrike", sequences: [StratagemSeq.left, StratagemSeq.right, StratagemSeq.up, StratagemSeq.down]),
//        Stratagem(id: 60, title: "Tactical Smoke Screen", sequences: [StratagemSeq.right, StratagemSeq.up, StratagemSeq.down, StratagemSeq.left]),
        Stratagem(id: 61, title: "Tactical EMP Grenade", sequences: [StratagemSeq.left, StratagemSeq.down, StratagemSeq.right, StratagemSeq.up]),
        Stratagem(id: 62, title: "Tactical Cluster Bomb", sequences: [StratagemSeq.down, StratagemSeq.up, StratagemSeq.left, StratagemSeq.right]),
    ]),
]
