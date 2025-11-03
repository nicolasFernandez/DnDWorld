//
//  SpellDetailView.swift
//  DnDWorld
//
//  Created on 2025-10-13.
//

import SwiftUI

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
                        Text(spell.levelString)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text(spell.school.rawValue.capitalized)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        if spell.isRitual {
                            Text(
                                NSLocalizedString("spell_ritual", comment: "")
                            )
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        }
                    }
                }
                
                Divider()

                VStack(alignment: .leading, spacing: 8) {
                    DetailRow(
                        title: NSLocalizedString("spell_casting_time", comment: ""),
                        value: spell.castingTime
                    )
                    DetailRow(
                        title: NSLocalizedString("spell_range", comment: ""),
                        value: spell.range
                    )
                    DetailRow(
                        title:NSLocalizedString("spell_components", comment: ""),
                        value: formatComponents()
                    )
                    DetailRow(
                        title: NSLocalizedString("spell_duration", comment: ""),
                        value: formatDuration()
                    )
                }
                
                Divider()
                
                Text(spell.description)
                    .fixedSize(horizontal: false, vertical: true)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(
                        NSLocalizedString("spell_available_to", comment: "")
                    )
                    .font(.headline)
                    
                    Text(formatClasses())
                        .foregroundColor(.secondary)
                }
            }
            .padding()
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
            return String(format: NSLocalizedString("spell_concentration", comment:""), spell.duration)
        } else {
            return spell.duration
        }
    }
    
    private func formatClasses() -> String {
        return spell.classes.map { "\($0.name)" }.joined(separator: ", ")
    }
}

struct SpellDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let spell = Spell(
            name: "Hechizo",
            level: 0,
            school: .abjuration,
            castingTime: "1 ronda",
            range: "alcance",
            components: SpellComponents(
                verbal: true,
                somatic: true,
                material: true,
                materialComponents: "Saquito colgante"
            ),
            duration: "1 hora",
            description: "Haces un hechizo que dura una hora",
            classes: [.bard, .cleric, .warlock],
            requiresConcentration: true
        )
        SpellDetailView(spell: spell)
    }
}

