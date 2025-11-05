//
//  Spell.swift
//  TTRPGCharacterForge
//
//  Created on 2025-10-13.
//

import Foundation

// Entity with properties representing D&D spells
struct Spell: Identifiable {
    let id: UUID = UUID()
    let name: String
    let level: Int
    let school: SpellSchool
    let castingTime: String
    let range: String
    let components: SpellComponents
    let duration: String
    let levelDescription: String
    let higherLevelsDescription: String?
    let classes: [ClassType]
    
    var isRitual: Bool = false
    var requiresConcentration: Bool = false
     
    var levelString: String {
        if level == 0 {
            return NSLocalizedString("cantrip_text", comment: "")
        } else {
            return String(format: NSLocalizedString("level_text", comment: ""), level)
        }
    }
}

extension Spell: Equatable {
    static func == (lhs: Spell, rhs: Spell) -> Bool {
        return lhs.id == rhs.id
    }
}
