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
    
    @Published var characters: [Character] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    init(
        loadCharactersUseCase: LoadCharactersUseCase,
        saveCharacterUseCase: SaveCharacterUseCase
    ) {
        self.loadCharactersUseCase = loadCharactersUseCase
        self.saveCharacterUseCase = saveCharacterUseCase
    }
    
    func loadCharacters() {
        isLoading = true
        errorMessage = nil
        
        loadCharactersUseCase.getAllCharacters { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success(let characters):
                    self.characters = characters
                case .failure(let error):
                    self.errorMessage = "Failed to load characters: \(error.localizedDescription)"
                }
                
                self.isLoading = false
            }
        }
    }
}
