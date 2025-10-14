//
//  CharacterListViewModel.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

final class CharacterListViewModel: ObservableObject {
    private let loadCharactersUseCase: LoadCharactersUseCase
    private let saveCharacterUseCase: SaveCharacterUseCase
    
    init(
        loadCharactersUseCase: LoadCharactersUseCase,
        saveCharacterUseCase: SaveCharacterUseCase
    ) {
        self.loadCharactersUseCase = loadCharactersUseCase
        self.saveCharacterUseCase = saveCharacterUseCase
    }
}
