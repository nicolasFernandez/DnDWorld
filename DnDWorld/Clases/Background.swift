//
//  Background.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import Foundation

// Trasfondo
struct Background {
    let name: String
    let feature: Feat
    let proficiencies: [Skill]?

    // Opening introduction about the background
    let introduction: String

    let ideal: String
    let bond: String
    let flaw: String

    // Describes what tools proficiencies the background grants
    let toolProficienciesDescription: [String]?

    // Describes what languages the background grants
    let languages: [LanguageType]
}
