//
//  DefaultSpellUseCase.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import Foundation

// Implementation of the use case
final class DefaultSpellUseCase: SpellUseCase {
    private let repository: SpellRepository
    
    init(repository: SpellRepository) {
        self.repository = repository
    }
    
    func getAllSpells() async throws -> [Spell] {
        return try await repository.fetchAllSpells()
    }
    
    func getSpell(withID id: UUID) async throws -> Spell {
        return try await repository.fetchSpell(withID: id)
    }
    
    func getSpellsForClass(_ classType: ClassType) async throws -> [Spell] {
        return try await repository.fetchSpells(forClass: classType)
    }
    
    func getSpellsForLevel(_ level: Int) async throws -> [Spell] {
        return try await repository.fetchSpells(forLevel: level)
    }
    
    func searchSpells(byName name: String) async throws -> [Spell] {
        return try await repository.searchSpells(byName: name)
    }
    
    func saveNewSpell(_ spell: Spell) async throws {
        try await repository.saveSpell(spell)
    }
}
