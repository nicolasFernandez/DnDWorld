//
//  Race.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum RaceTypes {
    case human
    case elf
    case halfling
    case dwarf

    var description: String {
        switch self {
        case .human:
            return "Humano"
        case .elf:
            return "Elfo"
        case .halfling:
            return "Mediano"
        case .dwarf:
            return "Enano"
        }
    }
}

struct Race {
    var type: RaceTypes
    var subrace: Subrace?
}
