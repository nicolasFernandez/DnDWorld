//
//  SpellListViewModel.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import Foundation
import Combine

final class SpellListViewModel: ObservableObject {
    private let spellUseCase: SpellUseCase
    
    @Published var spells: [Spell] = []
    @Published var filteredSpells: [Spell] = []
    @Published var selectedClassFilter: ClassType?
    @Published var selectedLevelFilter: Int?
    @Published var searchText: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    init(spellUseCase: SpellUseCase) {
        self.spellUseCase = spellUseCase
    }
    
    @MainActor
    func loadSpells() async {
        isLoading = true
        errorMessage = nil
        
        do {
            spells = try await spellUseCase.getAllSpells()
            applyFilters()
        } catch {
            errorMessage = "Failed to load spells: \(error.localizedDescription)"
        }
        
        isLoading = false
    }
    
    @MainActor
    func filterByClass(_ classType: ClassType?) async {
        selectedClassFilter = classType
        
        if let classType = classType {
            isLoading = true
            errorMessage = nil
            
            do {
                filteredSpells = try await spellUseCase.getSpellsForClass(classType)
            } catch {
                errorMessage = "Failed to filter spells: \(error.localizedDescription)"
                filteredSpells = []
            }
            
            isLoading = false
        } else {
            applyFilters()
        }
    }
    
    @MainActor
    func filterByLevel(_ level: Int?) async {
        selectedLevelFilter = level
        
        if let level = level {
            isLoading = true
            errorMessage = nil
            
            do {
                filteredSpells = try await spellUseCase.getSpellsForLevel(level)
            } catch {
                errorMessage = "Failed to filter spells: \(error.localizedDescription)"
                filteredSpells = []
            }
            
            isLoading = false
        } else {
            applyFilters()
        }
    }
    
    @MainActor
    func search(query: String) async {
        searchText = query
        
        if query.isEmpty {
            applyFilters()
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        do {
            filteredSpells = try await spellUseCase.searchSpells(byName: query)
        } catch {
            errorMessage = "Failed to search spells: \(error.localizedDescription)"
            filteredSpells = []
        }
        
        isLoading = false
    }
    
    private func applyFilters() {
        filteredSpells = spells
    }
}