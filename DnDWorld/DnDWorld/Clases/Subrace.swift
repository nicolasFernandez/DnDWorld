//
//  Subrace.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum Subrace {
    // elf
    case wood
    case high
    case drow
    // dwarf
    case hill
    case mountain
    // halfling
    case lightfoot
    case stout

    // TODO: move text to localization
    var description: String {
        switch self {
        case .wood:
            return "Elfo de los bosques"
        case .high:
            return "Alto elfo"
        case .drow:
            return "Elfo oscuro"
        case .hill:
            return "Enano de las colinas"
        case .mountain:
            return "Enano de las montañas"
        case .lightfoot:
            return "Mediano piesligeros"
        case .stout:
            return "Mediano fornido"
        }
    }
}
