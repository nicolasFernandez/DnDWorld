//
//  Alignment.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum Alignment {
    case lawfulGood
    case neutralGood
    case chaoticGood
    case lawfulNeutral
    case neutral
    case chaoticNeutral
    case lawfulEvil
    case neutralEvil
    case chaoticEvil

    var name: String {
        switch self {
        case .lawfulGood:
            return NSLocalizedString("lawful_good_title", comment: "")
        case .neutralGood:
            return NSLocalizedString("neutral_good_title", comment: "")
        case .chaoticGood:
            return NSLocalizedString("chaotic_good_title", comment: "")
        case .lawfulNeutral:
            return NSLocalizedString("lawful_neutral_title", comment: "")
        case .neutral:
            return NSLocalizedString("neutral_title", comment: "")
        case .chaoticNeutral:
            return NSLocalizedString("chaotic_neutral_title", comment: "")
        case .lawfulEvil:
            return NSLocalizedString("lawful_evil_title", comment: "")
        case .neutralEvil:
            return NSLocalizedString("neutral_evil_title", comment: "")
        case .chaoticEvil:
            return NSLocalizedString("chaotic_evil_title", comment: "")
        }
    }

    var description: String {
        switch self {
        case .lawfulGood:
            return NSLocalizedString("lawful_good_description", comment: "")
        case .neutralGood:
            return NSLocalizedString("neutral_good_description", comment: "")
        case .chaoticGood:
            return NSLocalizedString("chaotic_good_description", comment: "")
        case .lawfulNeutral:
            return NSLocalizedString("lawful_neutral_description", comment: "")
        case .neutral:
            return NSLocalizedString("neutral_description", comment: "")
        case .chaoticNeutral:
            return NSLocalizedString("chaotic_neutral_description", comment: "")
        case .lawfulEvil:
            return NSLocalizedString("lawful_evil_description", comment: "")
        case .neutralEvil:
            return NSLocalizedString("neutral_evil_description", comment: "")
        case .chaoticEvil:
            return NSLocalizedString("chaotic_evil_description", comment: "")
        }
    }
}
