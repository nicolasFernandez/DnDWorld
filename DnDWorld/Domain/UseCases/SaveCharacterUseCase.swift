//
//  SaveCharacterUseCase.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

struct SaveCharacterUseCase {
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository) {
        self.repository = repository
    }
    
    func saveCharacter(_ character: Character, completion: @escaping (Result<Void, Error>) -> Void) {
        repository.save(character, completion: completion)
    }
}
