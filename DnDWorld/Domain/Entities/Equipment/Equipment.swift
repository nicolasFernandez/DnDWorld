//
//  Equipment.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

protocol Equipment {
    var name: String { get }
    var weight: Float { get }
    var cost: Int { get }
}
