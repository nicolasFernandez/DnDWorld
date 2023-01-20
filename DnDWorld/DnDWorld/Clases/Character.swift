//
//  Character.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

struct Character {
    let name: String
    let classType: [ClassType]

    let abilities: Abilities
    let skills: Skills
    let race: Race
    var armorClass: Int
    var equipmentList: [Equipment]
}
