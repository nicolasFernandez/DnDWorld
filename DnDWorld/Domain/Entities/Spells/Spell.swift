//
//  Spell.swift
//  DnDWorld
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
    let description: String
    let classes: [ClassType]
    
    var isRitual: Bool = false
    var requiresConcentration: Bool = false
     
    var levelString: String {
        if level == 0 {
            return "Cantrip"
        } else {
            return "Level \(level)"
        }
    }
}

extension Spell: Equatable {
    static func == (lhs: Spell, rhs: Spell) -> Bool {
        return lhs.id == rhs.id
    }
}
