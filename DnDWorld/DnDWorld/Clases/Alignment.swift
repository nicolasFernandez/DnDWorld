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

    // TODO: move text to localization
    var name: String {
        switch self {
        case .lawfulGood:
            return "Legal Bueno"
        case .neutralGood:
            return "Neutral Bueno"
        case .chaoticGood:
            return "Caótico Bueno"
        case .lawfulNeutral:
            return "Legal Neutral"
        case .neutral:
            return "Neutral"
        case .chaoticNeutral:
            return "Caótico Neutral"
        case .lawfulEvil:
            return "Legal Malvado"
        case .neutralEvil:
            return "Neutral Malvado"
        case .chaoticEvil:
            return "Chaótico Malvado"
        }
    }

    // TODO: move text to localization
    var description: String {
        switch self {

        case .lawfulGood:
            return "Se puede contar con que las criaturas harán lo que la sociedad cree que es lo correcto. Los dragones dorados, paladines, y la mayoría de los enanos son legales buenos."
        case .neutralGood:
            return "La gente hace lo que puede para ayudar a los demás de acuerdo a sus necesidades. Muchos celestiales, algunos gigantes de las nubes, y la mayoría de los gnomos son neutrales buenos."
        case .chaoticGood:
            return "Las criaturas actúan según les dicta su conciencia, sin preocuparse por lo que esperan los demás. Los dragones de bronce, muchos elfos, y los unicornios son caóticos buenos."
        case .lawfulNeutral:
            return "Los individuos actúan acorde a la ley, tradiciones, o códigos personales. Muchos monjes y hechiceros son legales neutrales."
        case .neutral:
            return "Es el alineamiento de aquellos que prefieren mantenerse al margen de cuestiones morales y no pertenecer a ningún bando, haciendo lo que ellos creen que es lo mejor en cada momento. Los hombres lagarto, la mayoría de los druidas, y muchos humanos son neutrales."
        case .chaoticNeutral:
            return "Estas criaturas hacen lo que les apetece, valorando su libertad por encima de todo. Muchos bárbaros y pícaros, y algunos bardos, son caóticos neutrales."
        case .lawfulEvil:
            return "Las criaturas cogen metódicamente aquello que quieren, dentro de los límites de su tradición, lealtad, u orden. Los demonios, dragones azules, y los hobgoblins son legales malvados."
        case .neutralEvil:
            return "Es el alineamiento de aquellos que hacen lo que sea necesario para salirse con la suya, sin compasión ni escrúpulos. Muchos drow, algunos gigantes de las nubes, y yugoloths son neutrales malvados."
        case .chaoticEvil:
            return "Las criaturas actúan con una violencia arbitraria, impulsados por su codicia, su odio o su sed de sangre. Los demonios, dragones rojos, y orcos son caóticos malignos."
        }
    }
}
