//
//  Languages.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum LanguageType: String {
    case common
    case dwarvish
    case elvish
    case giant
    case gnomish
    case goblin
    case halfling
    case orc
    case abyssal
    case celestial
    case draconic
    case deepSpeech
    case infernal
    case primordial
    case sylvan
    case undercommon

    var name: String {
        switch self {
        case .deepSpeech:
            return NSLocalizedString("deep_speech_name", comment: "")
        default:
            return NSLocalizedString("\(self.rawValue)_name", comment: "")
        }
    }
}
