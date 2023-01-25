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

    var name: String {
        return NSLocalizedString("\(self.rawValue)_name", comment: "")
    }
}
