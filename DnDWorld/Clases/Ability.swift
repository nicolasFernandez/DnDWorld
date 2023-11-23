//
//  Ability.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

/// Represents 
struct Ability {
    private let base: Int
    private let raceBonus: Int

    var modifier: Int {
        let finalModifier = ((Float(totalScore)) - 10) / 2
        return Int(finalModifier.rounded(.down))
    }

    var totalScore: Int {
        return base + raceBonus
    }

    init(base: Int, raceBonus: Int) {
        self.base = base
        self.raceBonus = raceBonus
    }
}
