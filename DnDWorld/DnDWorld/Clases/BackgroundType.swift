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

    var name: String {
        switch self {
        case .acolyte:
            return NSLocalizedString("acolyte", comment: "")
        case .charlatan:
            return NSLocalizedString("charlatan", comment: "")
        case .criminal:
            return NSLocalizedString("criminal", comment: "")
        case .entertainer:
            return NSLocalizedString("entertainer", comment: "")
        case .folkHero:
            return NSLocalizedString("folk_hero", comment: "")
        case .guildArtisian:
            return NSLocalizedString("guild_artisian", comment: "")
        case .hermit:
            return NSLocalizedString("hermit", comment: "")
        case .noble:
            return NSLocalizedString("noble", comment: "")
        case .outlander:
            return NSLocalizedString("outlander", comment: "")
        case .sage:
            return NSLocalizedString("sage", comment: "")
        case .sailor:
            return NSLocalizedString("sailor", comment: "")
        case .soldier:
            return NSLocalizedString("soldier", comment: "")
        case .urchin:
            return NSLocalizedString("urchin", comment: "")
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
