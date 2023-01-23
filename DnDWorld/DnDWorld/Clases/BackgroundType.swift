//
//  BackgroundType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum BackgroundType: String  {
    case acolyte
    case charlatan
    case criminal
    case entertainer
    case folkHero
    case gladiator
    case guildArtisianMerchant
    case hermit
    case knight
    case noble
    case outlander
    case pirate
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
