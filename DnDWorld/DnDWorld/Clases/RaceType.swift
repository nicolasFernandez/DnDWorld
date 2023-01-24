//
//  RaceTypes.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 20-01-23.
//

import Foundation

enum RaceType: String {
    case dragonborn
    case dwarf
    case elf
    case gnome
    case halfElf
    case halfling
    case halfOrc
    case human
    case tiefling

    // TODO: move to localization file
    var title: String {
        switch self {
        case .dragonborn:
            return "Dracónido"
        case .dwarf:
            return "Enano"
        case .elf:
            return "Elfo"
        case .gnome:
            return "Gnomo"
        case .halfElf:
            return "Semielfo"
        case .halfling:
            return "Mediano"
        case .halfOrc:
            return "Semiorco"
        case .human:
            return "Humano"
        case .tiefling:
            return "Tiflin"
        }
    }

    // TODO: move to localization file
    var description: String {
        switch self {
        case .dragonborn:
            return "Los dracónidos se parecen mucho a los dragones que permanecen erectos en forma humanoide, aunque carecen de alas o cola."
        case .dwarf:
            return "Duros y valientes, los enanos son conocidos como hábiles guerreros, mineros y trabajadores de la piedra y el metal."
        case .elf:
            return "Con su gracia no terrenal y sus rasgos delicados, los elfos resultan perturbadoramente hermosos para los humanos y los miembros de muchas otras razas."
        case .gnome:
            return "La energía y entusiasmo de un gnomo por la vida brilla a través de cada pulgada de su pequeño cuerpo."
        case .halfElf:
            return "Los Semielfos combinan lo que algunos dicen ser las mejores cualidades de sus progenitores humanos y elfos."
        case .halfling:
            return "Los medianos sobreviven en un mundo lleno de criaturas más grandes evitando ser detectados o, si eso no es posible, evitando los problemas."
        case .halfOrc:
            return "Algunos semiorcos crecen para convertirse en jefes orgullosos de tribus orcas. Algunos se aventuran en el mundo para probar su valía . Muchos de estos se convierten en aventureros, cosechando grandeza por sus grandes hazañas."
        case .human:
            return "Con su afición por la migración y la conquista, los humanos son físicamente más diversos que cualquiera de las razas comunes. Sea lo que sea lo que les motiva, los humanos son los innovadores, los pioneros y los triunfadores de los mundos."
        case .tiefling:
            return "Ser recibido con miradas y susurros, sufrir violencia e insultos en la calle, ver la desconfianza y el miedo en todos los ojos: este es el destino de los tiflin."
        }
    }

    // TODO: move to localization file
    var racialTraits: String {
        switch self {
        case .dragonborn:
            return "+2 Fuerza, +1 Carisma, Ascendencia Dracónica, Arma de Aliento, Resistencia al Daño"
        case .dwarf:
            return "+2 Constitución, Visión en la Oscuridad, Resistencia Enana, Entrenamiento de Combate Enano, Afinidad con la Piedra"
        case .elf:
            return "+2 Destreza, Visión en la Oscuridad, Sentidos Agudos, Ascendencia Feérica, Trance"
        case .gnome:
            return "+2 Inteligencia, Visión en la Oscuridad, Astucia Gnoma"
        case .halfElf:
            return "+2 Carisma, +1 a Otras Dos Puntuaciones de Característica, Visión en la Oscuridad, Ascendencia Feérica, Versatilidad con Habilidades"
        case .halfling:
            return "+2 Destreza, Suertudo, Valiente, Agilidad Mediana"
        case .halfOrc:
            return "+2 Fuerza, +1 Constitución, Visión en la Oscuridad, Amenazante, Resistencia Incansable, Ataques Salvajes"
        case .human:
            return "+1 a Todas tus Puntuaciones de Característica, Idioma Extra de tu elección"
        case .tiefling:
            return "+2 Carisma, +1 Inteligencia, Visión en la Oscuridad, Resistencia Infernal, Legado Infernal"
        }
    }
}
