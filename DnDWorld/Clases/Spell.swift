//
//  Spell.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import Foundation

// Hechizos
struct Spell {

    let name: String
    let school: School
    
    let level: Int
    let castingTime: String
    let duration: String
    let rangeArea: String
    let attackSave: String?
    let damageEffect: String

    let saveRequired: String
    let attackType: AttackType
    let damageType: DamageType
    let condition: Condition
    let concentration: Bool
    let ritual: Bool
    let components: [Component]

    let tags: [String]
}
