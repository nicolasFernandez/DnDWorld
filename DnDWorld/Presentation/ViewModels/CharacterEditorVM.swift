//
//  CharacterEditorVM.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

final class CharacterEditorVM: ObservableObject {

    private let createCharacterUseCase: CreateCharacterUseCase
    private let updateAbilityScoreUseCase: UpdateAbilityScoreUseCase
    private let computeDerivedStatsUseCase: ComputeDerivedStatsUseCase

    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    init(
        createCharacterUseCase: CreateCharacterUseCase,
        updateAbilityScoreUseCase: UpdateAbilityScoreUseCase,
        computeDerivedStatsUseCase: ComputeDerivedStatsUseCase
    ) {
        self.createCharacterUseCase = createCharacterUseCase
        self.updateAbilityScoreUseCase = updateAbilityScoreUseCase
        self.computeDerivedStatsUseCase = computeDerivedStatsUseCase
    }
}
