//
//  CharacterRepository.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

protocol CharacterRepository {
    func fetchAll(completion: @escaping (Result<[Character], Error>) -> Void)
    func fetch(withID id: UUID, completion: @escaping (Result<Character, Error>) -> Void)
    func save(_ character: Character, completion: @escaping (Result<Void, Error>) -> Void)
    func delete(_ character: Character, completion: @escaping (Result<Void, Error>) -> Void)
}
