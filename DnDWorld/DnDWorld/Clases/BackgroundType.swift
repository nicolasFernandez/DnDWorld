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
