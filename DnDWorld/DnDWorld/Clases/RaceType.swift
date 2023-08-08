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
        return NSLocalizedString(getNameKey(), comment: "")
    }

    var description: String {
        return NSLocalizedString(getDescriptionKey(), comment: "")
    }

    var racialTraits: String {
        NSLocalizedString(getRacialTraitsKey(), comment: "")
    }

    private func getNameKey() -> String {
        "\(self.snakeCaseRawValue())_name"
    }

    private func getDescriptionKey() -> String {
        "\(self.snakeCaseRawValue())_description"
    }
    
    private func getRacialTraitsKey() -> String {
        "\(self.snakeCaseRawValue())_racial_traits"
    }

    private func snakeCaseRawValue() -> String {
        var newValue: String = ""
        for letter in self.rawValue {
            let newLetter = letter.isUppercase ? "_\(letter.lowercased())" : "\(letter)"
            newValue.append(newLetter)
        }
        return newValue
    }
}
