//
//  SpellUseCase.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import Foundation

// Protocol for business logic
protocol SpellUseCase {
    func getAllSpells(completion: @escaping (Result<[Spell], Error>) -> Void)
    func getSpell(withID id: UUID, completion: @escaping (Result<Spell, Error>) -> Void)
    func getSpellsForClass(_ classType: ClassType, completion: @escaping (Result<[Spell], Error>) -> Void)
    func getSpellsForLevel(_ level: Int, completion: @escaping (Result<[Spell], Error>) -> Void)
    func searchSpells(byName name: String, completion: @escaping (Result<[Spell], Error>) -> Void)
    func saveNewSpell(_ spell: Spell, completion: @escaping (Result<Void, Error>) -> Void)
}
