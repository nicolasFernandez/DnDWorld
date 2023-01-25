//
//  ClassType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum ClassType: String {
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

    var name: String {
        return NSLocalizedString("\(self.rawValue)_name", comment: "")
    }

    var description: String {
        return NSLocalizedString("\(self.rawValue)_description", comment: "")
    }

    var hitDie: String {
        switch self {
        case .barbarian:
            return "d12"
        case .bard:
            return "d8"
        case .cleric:
            return "d8"
        case .druid:
            return "d8"
        case .fighter:
            return "d10"
        case .monk:
            return "d8"
        case .paladin:
            return "d10"
        case .ranger:
            return "d10"
        case .rogue:
            return "d8"
        case .sorcerer:
            return "d6"
        case .warlock:
            return "d8"
        case .wizard:
            return "d6"
        }
    }

    var primaryAbility: String {
        return NSLocalizedString("\(self.rawValue)_primary_ability", comment: "")
    }

    var saves: String {
        return NSLocalizedString("\(self.rawValue)_saves", comment: "")
    }
}
