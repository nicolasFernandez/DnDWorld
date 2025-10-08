//
//  BackgroundType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-12-22.
//

import Foundation

enum BackgroundType: String  {
    case acolyte

    var name: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_name", comment: "")
    }

    var description: String {
        NSLocalizedString("\(self.rawValue.camelToSnakeCase())_description", comment: "")
    }

    var skillProficiencies: String {""} // TODO: add a way to set proficiencies on skills
    var languages: String {""}
    var personalityTraits: String {""}
    var ideals: String {""}
    var bonds: String {""}
    var flaws: String {""}
}
