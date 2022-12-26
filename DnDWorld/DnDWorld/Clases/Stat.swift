//
//  Stat.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

struct Stat {
    private let base: Int
    private let raceBonus: Int
    var modifier: Int
    var totalScore: Int

    init(base: Int, raceBonus: Int) {
        self.base = base
        self.raceBonus = raceBonus

        self.totalScore = base + raceBonus

        let finalModifier = ((Float(totalScore)) - 10) / 2
        self.modifier = Int(finalModifier.rounded(.down))
    }
}
