//
//  SpellListView.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import SwiftUI

struct SpellListView: View {
    @StateObject var viewModel: SpellListViewModel
    @State private var searchText = ""
    @State private var showingFilters = false
    
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                content
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: { showingFilters.toggle() }) {
                                Image(systemName: "line.3.horizontal.decrease.circle")
                            }
                        }
                    }
                    .sheet(isPresented: $showingFilters) {
                        FilterView(viewModel: viewModel)
                    }
                    .searchable(text: $searchText)
                    .onChange(of: searchText) { newValue in
                        Task {
                            await viewModel.search(query: newValue)
                        }
                    }
                    .task {
                        await viewModel.loadSpells()
                    }
            } else {
                // TODO: Add fallback search
                content
            }
        }
    }

    var content: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            } else if viewModel.filteredSpells.isEmpty {
                Text("No spells found")
                    .foregroundColor(.secondary)
                    .padding()
            } else {
                List {
                    ForEach(viewModel.filteredSpells) { spell in
                        NavigationLink(destination: SpellDetailView(spell: spell)) {
                            SpellRowView(spell: spell)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationTitle("Spells")
    }
}

struct SpellRowView: View {
    let spell: Spell
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(spell.name)
                    .font(.headline)
                
                Spacer()
                
                Text("Level \(spell.level)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(spell.school.rawValue.capitalized)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 4)
    }
}

@available(iOS 15.0, *)
struct FilterView: View {
    @ObservedObject var viewModel: SpellListViewModel
    @Environment(\.dismiss) var dismiss
    
    let spellLevels = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Spell Level")) {
                    ForEach(spellLevels, id: \.self) { level in
                        Button(action: {
                            Task {
                                if viewModel.selectedLevelFilter == level {
                                    await viewModel.filterByLevel(nil)
                                } else {
                                    await viewModel.filterByLevel(level)
                                }
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
                    Task {
                        await viewModel.filterByClass(nil)
                        await viewModel.filterByLevel(nil)
                        dismiss()
                    }
                }
                .foregroundColor(.blue)
            }
            .navigationTitle("Filter Spells")
            .navigationBarItems(trailing: Button("Done") { dismiss() })
        }
    }
}
