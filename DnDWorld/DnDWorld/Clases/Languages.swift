//
//  Languages.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum LanguageType {
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
        case .common:
            return NSLocalizedString("common", comment: "")
        case .dwarvish:
            return NSLocalizedString("dwarvish", comment: "")
        case .elvish:
            return NSLocalizedString("elvish", comment: "")
        case .giant:
            return NSLocalizedString("giant", comment: "")
        case .gnomish:
            return NSLocalizedString("gnomish", comment: "")
        case .goblin:
            return NSLocalizedString("goblin", comment: "")
        case .halfling:
            return NSLocalizedString("halfling", comment: "")
        case .orc:
            return NSLocalizedString("orc", comment: "")
        case .abyssal:
            return NSLocalizedString("abyssal", comment: "")
        case .celestial:
            return NSLocalizedString("celestial", comment: "")
        case .draconic:
            return NSLocalizedString("draconic", comment: "")
        case .deepSpeech:
            return NSLocalizedString("deep_speech", comment: "")
        case .infernal:
            return NSLocalizedString("infernal", comment: "")
        case .primordial:
            return NSLocalizedString("primordial", comment: "")
        case .sylvan:
            return NSLocalizedString("sylvan", comment: "")
        case .undercommon:
            return NSLocalizedString("undercommon", comment: "")
        }
    }
}
