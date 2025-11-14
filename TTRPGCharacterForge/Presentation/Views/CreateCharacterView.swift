//
//  CreateCharacterView.swift
//  TTRPGCharacterForge
//
//  Created by Nicolas Alonso Fernandez Alarcon on 12-11-25.
//

import SwiftUI

struct CreateCharacterView: View {

    @State var name: String = ""
    @State var selectedRace: RaceType?
    @State var selectedClass: ClassType?
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Raza", selection: $selectedRace) {
                        ForEach(RaceType.allCases) { race in
                            Text(race.name).tag(race)
                        }
                    }
                }

                Section {
                    Picker("Clase", selection: $selectedClass) {
                        ForEach(ClassType.allCases) { clazz in
                            Text(clazz.name).tag(clazz)
                        }
                    }
                }

                Section {
                    TextField("Nombre de Personaje", text: $name).disableKeyboardCache()
                    Button("Random", action: {
                        debugPrint("Random name")
                    })
                }
            }
            .navigationTitle("Generador de personaje")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Crear") {
                        debugPrint("Submit action")
                    }
                }
            }
        }
    }
}

#Preview {
    CreateCharacterView()
}
