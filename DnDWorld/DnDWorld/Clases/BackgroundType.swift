//
//  BackgroundType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum BackgroundType {
    case acolyte
    case charlatan
    case criminal
    case entertainer
    case folkHero
    case guildArtisian
    case hermit
    case noble
    case outlander
    case sage
    case sailor
    case soldier
    case urchin

    var description: String {
        switch self {
        case .acolyte:
            return "Acólito"
        case .charlatan:
            return "Charlatán"
        case .criminal:
            return "Criminal"
        case .entertainer:
            return "Artista"
        case .folkHero:
            return "Héroe del pueblo"
        case .guildArtisian:
            return "Artesano gremial"
        case .hermit:
            return "Ermitaño"
        case .noble:
            return "Noble"
        case .outlander:
            return "Fronterizo"
        case .sage:
            return "Sabio"
        case .sailor:
            return "Marinero"
        case .soldier:
            return "Soldado"
        case .urchin:
            return "Huérfano"
        }
    }
}


struct Background {

    let name: String
    let version: String?

    // Opening introduction about the background
    let introduction: String

    // Describes what skills proficiencies the background grants
    let skillProficienciesDescription: String?

    // Describes what tools proficiencies the background grants
    let toolProficienciesDescription: String?

    // Describes what languages the background grants
    let languagesDescription: String?

    let equipmentDescription: String?
    
    let feature: String
    let proficencies: [String]
    let tags: [String]
    let description: String
    let personality: String
    let ideal: String
    let bond: String
    let flaw: String
}
