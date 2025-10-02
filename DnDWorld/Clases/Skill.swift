//
//  Skill.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import Foundation

/// Defines a skill of the character like acrobatics, animal handling...
struct Skill {
    let name: String
    private let baseAbility: Ability
    private let proficencyBonus: Int

    var modifier: Int {
        return baseAbility.modifier + self.proficencyBonus
    }

    init(name: String, baseAbility: Ability, proficencyBonus: Int = 0, modifier: Int) {
        self.name = name
        self.baseAbility = baseAbility
        self.proficencyBonus = proficencyBonus
    }
}
