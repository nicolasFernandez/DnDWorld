//
//  Alignment.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum Alignment: String {
    case lawfulGood
    case neutralGood
    case chaoticGood
    case lawfulNeutral
    case neutral
    case chaoticNeutral
    case lawfulEvil
    case neutralEvil
    case chaoticEvil

    var name: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_name", comment: "")
    }

    var description: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_description", comment: "")
    }
}
