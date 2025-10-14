//
//  FilterView.swift
//  DnDWorld
//
//  Created by Nicolás Fernández on 14-10-25.
//

import SwiftUI

struct FilterView: View {
    @ObservedObject var viewModel: SpellListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    let spellLevels = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Spell Level")) {
                    ForEach(spellLevels, id: \.self) { level in
                        Button(action: {
                            if viewModel.selectedLevelFilter == level {
                                viewModel.filterByLevel(nil)
                            } else {
                                viewModel.filterByLevel(level)
                            }
                        }) {
                            HStack {
                                Text(level == 0 ? "Cantrip" : "Level \(level)")
                                
                                Spacer()
                                
                                if viewModel.selectedLevelFilter == level {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.blue)
                                }
                            }
                        }
                        .foregroundColor(.primary)
                    }
                }
                
                Button("Clear Filters") {
                    viewModel.filterByClass(nil)
                    viewModel.filterByLevel(nil)
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.blue)
            }
            .navigationTitle("Filter Spells")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}


struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        let cacheManager = SpellCacheManager()
        let repository = FirebaseSpellRepository(cacheManager: cacheManager)
        let useCase = SpellUseCase(repository: repository)
        let viewModel = SpellListViewModel(spellUseCase: useCase)
        FilterView(viewModel: viewModel)
    }
}
