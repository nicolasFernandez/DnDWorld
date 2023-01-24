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

    // TODO: move to localization
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
        case .guildArtisianMerchant:
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
        case .gladiator:
            return "Gladiador"
        case .knight:
            return "Caballero"
        case .pirate:
            return "Pirata"
        }
    }
}
