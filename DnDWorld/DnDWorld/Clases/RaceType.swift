//
//  RaceTypes.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 20-01-23.
//

import Foundation

enum RaceType: String {
    case dragonborn
    case dwarf
    case elf
    case gnome
    case halfElf
    case halfling
    case halfOrc
    case human
    case tiefling

    var name: String {
        var raceName = ""
        switch self {
        case .halfElf:
            raceName = "half_elf"
        case .halfOrc:
            raceName = "half_orc"
        default:
            raceName = self.rawValue
        }

        return NSLocalizedString("\(raceName)_name", comment: "")
    }

    var description: String {
        var raceName = ""
        switch self {
        case .halfElf:
            raceName = "half_elf"
        case .halfOrc:
            raceName = "half_orc"
        default:
            raceName = self.rawValue
        }

        return NSLocalizedString("\(raceName)_description", comment: "")
    }

    var racialTraits: String {
        var raceName = ""
        switch self {
        case .halfElf:
            raceName = "half_elf"
        case .halfOrc:
            raceName = "half_orc"
        default:
            raceName = self.rawValue
        }

        return NSLocalizedString("\(raceName)_racial_traits", comment: "")
    }
}
