//
//  RaceTypes.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 20-01-23.
//

import Foundation

enum RaceType: String {
    case dragonborn
    case dwarf
    case elf
    case gnome
    case halfElf
    case halfling
    case halfOrc
    case human
    case tiefling

    var name: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_name", comment: "")
    }

    var description: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_description", comment: "")
    }

    var racialTraits: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_racial_traits", comment: "")
    }

}
