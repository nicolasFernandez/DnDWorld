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
    
    func loadSpells() {
        isLoading = true
        errorMessage = nil
        
        spellUseCase.getAllSpells { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success(let spells):
                    self.spells = spells
                    self.applyFilters()
                case .failure(let error):
                    self.errorMessage = "Failed to load spells: \(error.localizedDescription)"
                }
                
                self.isLoading = false
            }
        }
    }
    
    func filterByClass(_ classType: ClassType?) {
        selectedClassFilter = classType
        
        if let classType = classType {
            isLoading = true
            errorMessage = nil
            
            spellUseCase.getSpellsForClass(classType) { [weak self] result in
                DispatchQueue.main.async {
                    guard let self = self else { return }
                    
                    switch result {
                    case .success(let spells):
                        self.filteredSpells = spells
                    case .failure(let error):
                        self.errorMessage = "Failed to filter spells: \(error.localizedDescription)"
                        self.filteredSpells = []
                    }
                    
                    self.isLoading = false
                }
            }
        } else {
            applyFilters()
        }
    }
    
    func filterByLevel(_ level: Int?) {
        selectedLevelFilter = level
        
        if let level = level {
            isLoading = true
            errorMessage = nil
            
            spellUseCase.getSpellsForLevel(level) { [weak self] result in
                DispatchQueue.main.async {
                    guard let self = self else { return }
                    
                    switch result {
                    case .success(let spells):
                        self.filteredSpells = spells
                    case .failure(let error):
                        self.errorMessage = "Failed to filter spells: \(error.localizedDescription)"
                        self.filteredSpells = []
                    }
                    
                    self.isLoading = false
                }
            }
        } else {
            applyFilters()
        }
    }
    
    func search(query: String) {
        searchText = query
        
        if query.isEmpty {
            applyFilters()
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        spellUseCase.searchSpells(byName: query) { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success(let spells):
                    self.filteredSpells = spells
                case .failure(let error):
                    self.errorMessage = "Failed to search spells: \(error.localizedDescription)"
                    self.filteredSpells = []
                }
                
                self.isLoading = false
            }
        }
    }
    
    private func applyFilters() {
        filteredSpells = spells
    }
}