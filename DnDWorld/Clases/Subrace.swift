//
//  Subrace.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum Subrace {
    case woodElf
    case highElf
    case drow
    case hillDwarf
    case mountainDwarf
    case lightfootHalfling
    case stoutHalfling
    case deepGnome
    case rockGnome

    var name: String {
        switch self {
        case .woodElf:
            return NSLocalizedString("wood_elf", comment: "")
        case .highElf:
            return NSLocalizedString("high_elf", comment: "")
        case .drow:
            return NSLocalizedString("drow", comment: "")
        case .hillDwarf:
            return NSLocalizedString("hill_dwarf", comment: "")
        case .mountainDwarf:
            return NSLocalizedString("mountain_dwarf", comment: "")
        case .lightfootHalfling:
            return NSLocalizedString("lightfoot_halfling", comment: "")
        case .stoutHalfling:
            return NSLocalizedString("stout_halfling", comment: "")
        case .deepGnome:
            return NSLocalizedString("deep_gnome", comment: "")
        case .rockGnome:
            return NSLocalizedString("rock_gnome", comment: "")
        }
    }
}
