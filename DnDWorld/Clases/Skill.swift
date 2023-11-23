//
//  Skill.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import Foundation

struct Skill {
    let name: String
    private let baseAbility: Ability
    private let proficencyBonus: Int?
    var modifier: Int {
        return baseAbility.modifier + (self.proficencyBonus ?? 0)
    }

    init(name: String, baseAbility: Ability, proficencyBonus: Int?, modifier: Int) {
        self.name = name
        self.baseAbility = baseAbility
        self.proficencyBonus = proficencyBonus
    }
}
