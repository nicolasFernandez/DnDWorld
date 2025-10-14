//
//  SpellDetailView.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import SwiftUI

// TODO: Localize
struct SpellDetailView: View {
    let spell: Spell
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(spell.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack {
                        Text(getLevelText())
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text(spell.school.rawValue.capitalized)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        if spell.isRitual {
                            Text("Ritual")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    DetailRow(title: "Casting Time", value: spell.castingTime) 
                    DetailRow(title: "Range", value: spell.range)
                    DetailRow(title: "Components", value: formatComponents())
                    DetailRow(title: "Duration", value: formatDuration())
                }
                
                Divider()
                
                Text(spell.description)
                    .fixedSize(horizontal: false, vertical: true)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Available to:")
                        .font(.headline)
                    
                    Text(formatClasses())
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
    }
    
    private func getLevelText() -> String {
        if spell.level == 0 {
            return "Cantrip"
        } else {
            return "Level \(spell.level)"
        }
    }
    
    private func formatComponents() -> String {
        var components: [String] = []
        
        if spell.components.verbal {
            components.append("V")
        }
        
        if spell.components.somatic {
            components.append("S")
        }
        
        if spell.components.material {
            components.append("M")
            if let materialComponents = spell.components.materialComponents {
                components.append("(\(materialComponents))")
            }
        }
        
        return components.joined(separator: ", ")
    }
    
    private func formatDuration() -> String {
        if spell.requiresConcentration {
            return "Concentration, \(spell.duration)"
        } else {
            return spell.duration
        }
    }
    
    private func formatClasses() -> String {
        return spell.classes.map { "\($0.name)" }.joined(separator: ", ")
    }
}


