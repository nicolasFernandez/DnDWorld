//
//  Character.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

struct Character {
    let name: String
    let abilities: Abilities
    let race: Race
    var armorClass: Int
    var equipmentList: [Equipment]
    let classType: [ClassType]
}
