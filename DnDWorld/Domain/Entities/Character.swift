//
//  Character.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

struct Character: Identifiable {
    let id: UUID = UUID()
    let name: String
    let race: Race
    let classType: [ClassType]

    let abilities: Abilities
    let skills: Skills

    let background: Background
    var equipment: [Equipment]
    var spells: [Spell] = []

    var armorClass: Int {
        var finalValue: Int = 0
        if equipment.contains(where: { $0 is Armor}) {
            for item in equipment {
                guard let armor = item as? Armor else {
                    continue
                }
                finalValue += armor.armorClass
            }
        } else {
            finalValue = 10 + abilities.dexterity.modifier

        }
        return finalValue
    }
}

extension Character: Equatable {
    static func == (lhs: Character, rhs: Character) -> Bool {
        return lhs.id == rhs.id
    }
}
