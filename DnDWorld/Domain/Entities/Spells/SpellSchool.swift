//
//  SpellSchool.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-10-25.
//

import Foundation

enum SpellSchool: String {
    case abjuration
    case conjuration
    case divination
    case enchantment
    case evocation
    case illusion
    case necromancy
    case transmutation

    var name: String {
        NSLocalizedString("\(self.rawValue)_name", comment: "")
    }
}
