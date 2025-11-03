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
                Section(header: Text(NSLocalizedString("spell_level", comment: ""))) {
                    ForEach(spellLevels, id: \.self) { level in
                        Button(action: {
                            if viewModel.selectedLevelFilter == level {
                                viewModel.filterByLevel(nil)
                            } else {
                                viewModel.filterByLevel(level)
                            }
                        }) {
                            HStack {
                                Text(
                                    level == 0 ?
                                    NSLocalizedString("cantrip_text", comment: "") :
                                        String(format: NSLocalizedString("level_text", comment: ""), level)
                                )

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
                
                Button(NSLocalizedString("clear_filters", comment: "")) {
                    viewModel.filterByClass(nil)
                    viewModel.filterByLevel(nil)
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.blue)
            }
            .navigationTitle(NSLocalizedString("filter_spells", comment: ""))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(NSLocalizedString("done", comment: "")) {
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
