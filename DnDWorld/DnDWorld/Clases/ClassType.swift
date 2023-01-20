//
//  ClassType.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import Foundation

enum ClassType: String {
    case barbarian
    case bard
    case cleric
    case druid
    case fighter
    case monk
    case paladin
    case ranger
    case rogue
    case sorcerer
    case warlock
    case wizard

    // TODO: move text to localization strings
    var title: String {
        switch self {
        case .barbarian:
            return "Bárbaro"
        case .bard:
            return "Bardo"
        case .cleric:
            return "Clérigo"
        case .druid:
            return "Druida"
        case .fighter:
            return "Guerrero"
        case .monk:
            return "Monje"
        case .paladin:
            return "Paladín"
        case .ranger:
            return "Explorador"
        case .rogue:
            return "Pícaro"
        case .sorcerer:
            return "Hechicero"
        case .warlock:
            return "Brujo"
        case .wizard:
            return "Mago"
        }
    }

    // TODO: move text to localization strings
    var description: String {
        switch self {
        case .barbarian:
            return "Un guerrero feroz de fondo primitivo que puede entrar en una furia de la batalla"
        case .bard:
            return "Un inspirante mago cuyo poder replica la música de la creación"
        case .cleric:
            return "Un campeón sacerdotal que esgrime magia divina al servicio de un poder mayor"
        case .druid:
            return "Un sacerdote de la Antigua Fe, que blande los poderes de la naturaleza -la luz de la luna y el crecimiento de las plantas, el fuego y el rayo- y que adopta formas animales."
        case .fighter:
            return "Un maestro del combate marcial competente con una gran variedad de armas y armaduras."
        case .monk:
            return "Un maestro de las artes marciales, que domina el poder del cuerpo en busca de la perfección física y espiritual."
        case .paladin:
            return "Un guerrero santo atado a un juramento sagrado"
        case .ranger:
            return "Un guerrero que usa la proeza marcial y la magia de la naturaleza para combatir las amenazas en los límites de la civilización"
        case .rogue:
            return "Un rufián que usa sigilo y astucia para superar obstáculos y enemigos."
        case .sorcerer:
            return "Un lanzador de conjuros que recurre a la magia inherente de un don o una linea de sangre."
        case .warlock:
            return "Un practicante de la magia que deriva de un contrato con una entidad extraplanaria"
        case .wizard:
            return "Un usuario de magia educado capaz de manipular la estructura de la realidad."
        }
    }

    var hitDie: String {
        switch self {
        case .barbarian:
            return "d12"
        case .bard:
            return "d8"
        case .cleric:
            return "d8"
        case .druid:
            return "d8"
        case .fighter:
            return "d10"
        case .monk:
            return "d8"
        case .paladin:
            return "d10"
        case .ranger:
            return "d10"
        case .rogue:
            return "d8"
        case .sorcerer:
            return "d6"
        case .warlock:
            return "d8"
        case .wizard:
            return "d6"
        }
    }

    // TODO: move text to localization strings
    var primaryAbility: String {
        switch self {
        case .barbarian:
            return "Fuerza"
        case .bard:
            return "Carisma"
        case .cleric:
            return "Sabiduría"
        case .druid:
            return "Sabiduría"
        case .fighter:
            return "Fuerza o Destreza"
        case .monk:
            return "Destreza y Sabiduría"
        case .paladin:
            return "Fuerza y Carisma"
        case .ranger:
            return "Destreza y Sabiduría"
        case .rogue:
            return "Destreza"
        case .sorcerer:
            return "Hechicero"
        case .warlock:
            return "Carisma"
        case .wizard:
            return "Inteligencia"
        }
    }

    // TODO: move text to localization strings
    var saves: String {
        switch self {
        case .barbarian:
            return "Fuerza y Constitución"
        case .bard:
            return "Destreza y Carisma"
        case .cleric:
            return "Sabiduría y Carisma"
        case .druid:
            return "Inteligencia y Sabiduría"
        case .fighter:
            return "Fuerza y Constitución"
        case .monk:
            return "Fuerza y Destreza"
        case .paladin:
            return "Sabiduría y Carisma"
        case .ranger:
            return "Fuerza y Destreza"
        case .rogue:
            return "Destreza e Inteligencia"
        case .sorcerer:
            return "Constitución y Carisma"
        case .warlock:
            return "Sabiduría y Carisma"
        case .wizard:
            return "Inteligencia y Sabiduría"
        }
    }
}
