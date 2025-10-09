//
//  ClassType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum ClassType: String {
    case barbarian
    case bard
    case cleric
    case druid
    case fighter
    case monk
    case paladin
    case ranger
    case rogue
    case sorcerer
    case warlock
    case wizard

    var icon: String {
        "\(self.rawValue)_icon"
    }

    var portrait: String {
        "\(self.rawValue)_portrait"
    }

    var name: String {
        NSLocalizedString("\(self.rawValue)_name", comment: "")
    }

    var description: String {
        NSLocalizedString("\(self.rawValue)_description", comment: "")
    }

    var hitDie: Int {
        switch self {
        case .barbarian:
            12
        case .bard, .cleric, .druid, .monk, .rogue, .warlock:
            8
        case .fighter, .paladin, .ranger:
            10
        case .sorcerer, .wizard:
            6
        }
    }

    var initialHitPoints: Int {
        switch self {
        case .barbarian:
            12 // TODO: Add Constitution modifier elsewhere
        case .bard, .cleric, .druid, .monk, .rogue, .warlock:
            8 // TODO: Add Constitution modifier elsewhere
        case .fighter, .paladin, .ranger:
            10 // TODO: Add Constitution modifier elsewhere
        case .sorcerer, .wizard:
            6 // TODO: Add Constitution modifier elsewhere
        }
    }

    // TODO: make calculation engine based on dice or medium
    // medium
    var mediumHigherLevelHitPoints: Int {
        switch self {
        case .barbarian:
            7 //  + con modifier per level after 1
        case .bard, .cleric, .druid, .monk, .rogue, .warlock:
            5 // + con modifier per level after 1
        case .fighter, .paladin, .ranger:
            6 // + con modifier per level after 1
        case .sorcerer, .wizard:
            4 // + con modifier per level after 1
        }
    }

    /// Rolls hit points for higher levels using dice (non-deterministic).
    /// - Returns: A random value between 1 and hitDie (inclusive).
    func rollHigherLevelHitPoints() -> Int {
        Int.random(in: 1...hitDie) // TODO: Add Constitution modifier per level after 1 elsewhere
    }

    var primaryAbility: String {
        NSLocalizedString("\(self.rawValue)_primary_ability", comment: "")
    }

    var saves: String {
        NSLocalizedString("\(self.rawValue)_saves", comment: "")
    }

    // TODO: Build a struct for this
    var proficiencies: [String: String]? {
        nil
    }

    // TODO: Build a choice making system for initial equipment
    var equipment: [String] {
        []
    }
}
