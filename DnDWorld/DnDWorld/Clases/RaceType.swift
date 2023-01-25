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
        switch self {
        case .halfElf:
            return NSLocalizedString("half_elf_name", comment: "")
        case .halfOrc:
            return NSLocalizedString("half_orc_name", comment: "")
        default:
            return NSLocalizedString("\(self.rawValue)_name", comment: "")
        }
    }

    var description: String {
        switch self {
        case .halfElf:
            return NSLocalizedString("half_elf_description", comment: "")
        case .halfOrc:
            return NSLocalizedString("half_orc_description", comment: "")
        default:
            return NSLocalizedString("\(self.rawValue)_description", comment: "")
        }
    }

    var racialTraits: String {
        switch self {
        case .halfElf:
            return NSLocalizedString("half_elf_racial_traits", comment: "")
        case .halfOrc:
            return NSLocalizedString("half_orc_racial_traits", comment: "")
        default:
            return NSLocalizedString("\(self.rawValue)_racial_traits", comment: "")
        }
    }
}
