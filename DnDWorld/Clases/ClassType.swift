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
    case monsterHunter
    case bloodHunter
    case artificer
    case gunslinger
    case illrigger

    var icon: String {
        "\(self.rawValue)_icon"
    }

    var portrait: String {
        "\(self.rawValue)_portrait"
    }

    var name: String {
        NSLocalizedString(
            "\(self.rawValue)_name",
            comment: ""
        )
    }

    var description: String {
        NSLocalizedString(
            "\(self.rawValue)_description",
            comment: ""
        )
    }

    var hitDie: String {
        switch self {
        case .barbarian:
            return "d12"
        case .bard, .cleric, .druid, .monk, .rogue, .warlock, .artificer, .gunslinger:
            return "d8"
        case .fighter, .paladin, .ranger, .monsterHunter, .bloodHunter, .illrigger:
            return "d10"
        case .sorcerer,.wizard:
            return "d6"
        }
    }

    var primaryAbility: String {
        NSLocalizedString(
            "\(self.rawValue)_primary_ability",
            comment: ""
        )
    }

    var saves: String {
        NSLocalizedString(
            "\(self.rawValue)_saves",
            comment: ""
        )
    }
}
