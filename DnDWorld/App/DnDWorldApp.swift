//
//  DnDWorldApp.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import SwiftUI

@main
struct DnDWorldApp: App {
    var body: some Scene {
        WindowGroup {
            CompositionRoot()
                .spellsCoordinator
                .makeSpellDetailView(
                    for:
                        Spell(
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
                            levelDescription: "Haces un hechizo que dura una hora", higherLevelsDescription: nil,
                            classes: [.bard, .cleric, .warlock]
                        )
                )
        }
    }
}
