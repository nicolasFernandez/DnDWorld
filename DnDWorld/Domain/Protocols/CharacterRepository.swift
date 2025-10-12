//
//  CharacterRepository.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

protocol CharacterRepository {
    func fetchAll() throws -> [Character]
    func fetch(id: String) throws -> Character
    func save(_ character: Character) throws
    func delete(_ character: Character) throws
}
