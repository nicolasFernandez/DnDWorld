//
//  ClassType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum ClassType {
    case barbarian
    case bard
    case cleric
    case druid
    case fighter
    case monk
    case paladin
    case ranger
    case rogue
    case sorcerer
    case warlock
    case wizard

    var description: String {
        switch self {
        case .barbarian:
            return "Bárbaro"
        case .bard:
            return "Bardo"
        case .cleric:
            return "Clérigo"
        case .druid:
            return "Druida"
        case .fighter:
            return "Guerrero"
        case .monk:
            return "Monje"
        case .paladin:
            return "Paladín"
        case .ranger:
            return "Explorador"
        case .rogue:
            return ""
        case .sorcerer:
            return "Hechicero"
        case .warlock:
            return "Pícaro"
        case .wizard:
            return "Mago"
        }
    }
}
