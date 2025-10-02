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
        NSLocalizedString(
            "\(self.rawValue.camelToSnakeCase())_name",
            comment: ""
        )
    }

    var description: String {
        NSLocalizedString(
            "\(self.rawValue.camelToSnakeCase())_description",
            comment: ""
        )
    }
}
