//
//  SpellRepository.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import Foundation

// Repository protocol defining data operations
protocol SpellRepository {
    func fetchAllSpells() async throws -> [Spell]
    func fetchSpell(withID id: UUID) async throws -> Spell
    func fetchSpells(forClass classType: ClassType) async throws -> [Spell]
    func fetchSpells(forLevel level: Int) async throws -> [Spell]
    func searchSpells(byName name: String) async throws -> [Spell]
    func saveSpell(_ spell: Spell) async throws
}
