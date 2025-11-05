//
//  Subrace.swift
//  TTRPGCharacterForge
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum Subrace: String {
    case highElf
    case hillDwarf
    case lightfootHalfling
    case rockGnome

    var name: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())", comment: "")
    }
}
