//
//  Subrace.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum Subrace: String {
    case woodElf
    case highElf
    case drow
    case hillDwarf
    case mountainDwarf
    case lightfootHalfling
    case stoutHalfling
    case deepGnome
    case rockGnome

    var name: String {
        NSLocalizedString(
            "\(self.rawValue.camelToSnakeCase())",
            comment: ""
        )
    }
}
