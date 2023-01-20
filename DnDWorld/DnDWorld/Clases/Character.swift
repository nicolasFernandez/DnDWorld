//
//  Character.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

struct Character {
    let name: String
    let race: Race
    let classType: [ClassType]

    let abilities: Abilities
    let skills: Skills

    let background: Background
    var equipmentList: [Equipment]

    var armorClass: Int {
        var finalValue: Int = 0
        if equipmentList.contains(where: { $0 is Armor}) {
            for item in equipmentList {
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
