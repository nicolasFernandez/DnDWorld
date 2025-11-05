//
//  LocalSpellRepository.swift
//  TTRPGCharacterForge
//
//  Created by Nicolas Alonso Fernandez Alarcon on 27-10-25.
//

import Foundation

final class LocalSpellRepository: SpellRepository {
    func fetchAllSpells(completion: @escaping (Result<[Spell], any Error>) -> Void) {
        // TODO: read from CoreData / Realm / JSON files
    }
    
    func fetchSpell(withID id: UUID, completion: @escaping (Result<Spell, any Error>) -> Void) {
    }
    
    func fetchSpells(forClass classType: ClassType, completion: @escaping (Result<[Spell], any Error>) -> Void) {
        fetchAllSpells { result in
            switch result {
            case .success(let allSpells):
                let filtered = allSpells.filter { $0.classes.contains(classType) }
                completion(.success(filtered))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func fetchSpells(forLevel level: Int, completion: @escaping (Result<[Spell], any Error>) -> Void) {
        fetchAllSpells { result in
            switch result {
            case .success(let allSpells):
                let filtered = allSpells.filter { $0.level == level }
                completion(.success(filtered))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func searchSpells(byName name: String, completion: @escaping (Result<[Spell], any Error>) -> Void) {
        fetchAllSpells { result in
            switch result {
            case .success(let allSpells):
                let filtered = allSpells.filter { $0.name.contains(name) }
                completion(.success(filtered))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func saveSpell(_ spell: Spell, completion: @escaping (Result<Void, any Error>) -> Void) {
        // TODO: save to CoreData / Realm / ...

    }
}
