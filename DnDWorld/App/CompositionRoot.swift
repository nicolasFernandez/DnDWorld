//
//  CompositionRoot.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 12-10-25.
//

import Foundation

/// Responsible for setting up all dependencies and wiring up the application
final class CompositionRoot {
    
    // MARK: - Coordinators
    
    lazy var spellsCoordinator: SpellsCoordinator = {
        SpellsCoordinator(spellUseCase: makeSpellUseCase())
    }()
    
    // MARK: - Private Factory Methods
    
    private func makeSpellUseCase() -> SpellUseCase {
        DefaultSpellUseCase(repository: makeSpellRepository())
    }
    
    private func makeSpellRepository() -> SpellRepository {
        FirebaseSpellRepository(cacheManager: makeSpellCacheManager())
    }
    
    private func makeSpellCacheManager() -> SpellCacheManager {
        SpellCacheManager()
    }
}
