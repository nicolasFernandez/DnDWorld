//
//  Condition.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import Foundation

enum Condition: String {
    case blinded
    case charmed
    case deafened
    case exhaustion
    case frightened
    case grappled
    case incapacitated
    case invisible
    case paralyzed
    case petrified
    case poisoned
    case prone
    case restrained
    case stunned
    case unconscious

    var name: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_name", comment: "")
    }

    var description: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_description", comment: "")
    }
}
