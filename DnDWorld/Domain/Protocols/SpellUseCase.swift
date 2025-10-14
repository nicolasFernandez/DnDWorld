//
//  SpellUseCase.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import Foundation

// Protocol for business logic
protocol SpellUseCase {
    func getAllSpells() async throws -> [Spell]
    func getSpell(withID id: UUID) async throws -> Spell
    func getSpellsForClass(_ classType: ClassType) async throws -> [Spell]
    func getSpellsForLevel(_ level: Int) async throws -> [Spell]
    func searchSpells(byName name: String) async throws -> [Spell]
    func saveNewSpell(_ spell: Spell) async throws
}
