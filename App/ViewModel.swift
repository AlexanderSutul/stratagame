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
    var id = UUID()
    var title: String
    var image: ImageResource
    var description: String
    var sequences: [StratagemSeq]
}

enum StratagemType: String {
    case Mission
    case Defensive
    case SupplyBackpacks = "Supply Backpacks"
    case SupportWeapons = "Support Weapons"
    case SupplyVehicles = "Supply: Vehicles"
    case OffensiveOrbital = "Offensive: Orbital"
    case OffensiveEagle = "Offensive: Eagle"
}

let stratagems: [StratagemSection] = [
    .init(type: .Mission,
          list: [
              Stratagem(
                  title: "Reinforce",
                  image: .reinforce,
                  description: "Amidst the chaos of battle, amidst the thunderous roar of conflict, we stand as one, united in purpose, bound by the sacred oath of liberty's champions. For every Helldiver who has fallen, for every comrade lost in the crucible of war, their memory shall be etched in the annals of heroism, their valor a beacon that guides us through the darkest of nights.",
                  sequences: [.up, .down, .right, .left, .up]
              ),
              Stratagem(
                  title: "SOS Beacon",
                  image: .sos,
                  description: "The SOS Beacon is a Stratagem that deploys a beacon that calls other Helldivers in orbit to your aid.",
                  sequences: [.up, .down, .left, .right]
              ),
              Stratagem(
                  title: "Resupply",
                  image: .resupply,
                  description: "A pod containing ammunition and ordnance. The supplies take some time to deploy as they have to be customized before being deployed.",
                  sequences: [.down, .down, .up, .right]
              ),
              Stratagem(
                  title: "SEAF Artillery",
                  image: .seaf,
                  description: "S.E.A.F shells of varying types will spawn in several locations throughout a S.E.A.F fortification. There will always be at least 5 shells present but spawn-rates tend towards 7-8 shells.",
                  sequences: [.right, .up, .up, .down]
              ),
              Stratagem(
                  title: "Eagle Fighter",
                  image: .reeagle,
                  description: "The Eagle Fighter is a multi-role aerospace craft used by the Super Earth Armed Forces, often deployed under Helldiver Command to perform atmospheric operations.",
                  sequences: [.up, .up, .left, .up, .right]
              ),
              Stratagem(
                  title: "NUX-223 Hellbomb",
                  image: .hell,
                  description: "The Hellbomb is provided when the Helldivers need to destroy a stationary target.",
                  sequences: [.down, .up, .left, .down, .up, .right, .down, .up]
              ),
              Stratagem(
                  title: "SSSD Delivery",
                  image: .ssd,
                  description: "No data, just delivery.",
                  sequences: [.down, .down, .down, .up, .up]
              ),
              Stratagem(
                  title: "Upload Escape Pod Data",
                  image: .upload,
                  description: "An escape pod with information vital to the war effort has crashed on the surface of this planet. Your job is to collect that data. Dive in, find the pod, and upload the data using yourself as a relay. Now get down there, helldiver.",
                  sequences: [.left, .right, .up, .up, .up]
              ),
              Stratagem(
                  title: "Seismic Probe",
                  image: .probe,
                  description: "Just no data.",
                  sequences: [.up, .up, .left, .right, .down, .down]
              ),
              Stratagem(
                  title: "Prospecting Drill",
                  image: .drill,
                  description: "Just no data.",
                  sequences: [.down, .down, .left, .right, .down, .down]
              ),
              Stratagem(
                  title: "Spread Democracy",
                  image: .flag,
                  description: "Raise the Super Earth flag as an unassailable beacon of Liberty.",
                  sequences: []
              ),

          ]),
    .init(type: .SupplyBackpacks,
          list: [
              .init(title: "LIFT-850 Jump Pack",
                    image: .jumppack,
                    description: "The Helldiver-issued jump pack propels the wearer a short distance into the air and forward, allowing for swift movement over difficult terrain. The pack is cumbersome, and as a result, the wearer won’t be able to go prone.",
                    sequences: [.down, .up, .up, .down, .up]),
              .init(title: "B-1 Supply Pack",
                    image: .b1,
                    description: "Supply boxes containing ammunition, with a backpack that allows the user to distribute boxes to fellow Helldivers.",
                    sequences: [.down, .left, .down, .up, .up, .down]),
              .init(title: "AX/LAS-5 \"Guard Dog\" Rover",
                    image: .dog,
                    description: "Helldiver, when you are facing down a pack of ravenous bugs, you want someone to have your back watching over you. The best way for someone to watch your back is to strap them to it! When you select this stratagem, you will have a flying robot sentry circle around you, clearing away the common chaff using the LAS-5 Scythe. Your back buddy allows you to focus your chosen dispenser of Liberty upon the more heavily armored units.",
                    sequences: [.down, .up, .left, .up, .right, .right]),
              .init(title: "SH-20 Ballistic Shield Backpack",
                    image: .balshield,
                    description: "A backpack which can be wielded as a one-handed ballistic shield, protecting against small arms fire.",
                    sequences: [.down, .left, .down, .down, .up, .left]),
              .init(title: "SH-32 Shield Generator Pack",
                    image: .shieldgen,
                    description: "The shield pack provides the wearer with a powerful shield, essentially extending the amount of damage the Helldiver can take before dying.",
                    sequences: [.down, .up, .left, .right, .left, .right]),
              .init(title: "AX/AR-23 \"Guard Dog\"",
                    image: .guarddog,
                    description: "The AD-334 Guard Dog is a defensive automated drone armed with a small submachine gun. It is based from a backpack carried on the Helldivers back and will land there to rearm whenever it runs out of ammunition. The AD-334 is part of the Defender equipment kit.",
                    sequences: [.down, .up, .left, .up, .right, .down]),
          ]),
]
