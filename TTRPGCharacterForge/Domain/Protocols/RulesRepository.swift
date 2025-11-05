//
//  RulesRepository.swift
//  TTRPGCharacterForge
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

protocol RulesRepository {
    func computeCharacter(for draft: Character) throws -> Character
    func availableSpecies() throws -> [String]
    func availableClasses() throws -> [String]
    func availableBackground() throws -> [String]
}
