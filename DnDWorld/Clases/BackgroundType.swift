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
        case .folkHero:
            return NSLocalizedString("folk_hero_name", comment: "")
        case .guildArtisianMerchant:
            return NSLocalizedString("guild_artisian_name", comment: "")
        default:
            return NSLocalizedString("\(self.rawValue)_name", comment: "")
        }
    }
}
