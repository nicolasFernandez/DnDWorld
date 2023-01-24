//
//  School.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import Foundation

enum School: String {
    case abjuration
    case conjuration
    case divination
    case enchantment
    case evocation
    case illusion
    case necromancy
    case transmutation

    // TODO: move text to localization strings
    var title: String {
        switch self {
        case .abjuration:
            return "Abjuración"
        case .conjuration:
            return "Conjuración"
        case .divination:
            return "Adivinación"
        case .enchantment:
            return "Encantamiento"
        case .evocation:
            return "Evocación"
        case .illusion:
            return "Ilusión"
        case .necromancy:
            return "Nigromancia"
        case .transmutation:
            return "Transmutación"
        }
    }
}
