//
//  LoadCharactersUseCase.swift
//  TTRPGCharacterForge
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

struct LoadCharactersUseCase {
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository) {
        self.repository = repository
    }
    
    func getAllCharacters(completion: @escaping (Result<[Character], Error>) -> Void) {
        repository.fetchAll(completion: completion)
    }
    
    func getCharacter(withID id: UUID, completion: @escaping (Result<Character, Error>) -> Void) {
        repository.fetch(withID: id, completion: completion)
    }
}
