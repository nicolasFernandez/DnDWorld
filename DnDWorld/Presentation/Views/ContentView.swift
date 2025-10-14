//
//  ContentView.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import SwiftUI

struct ContentView: View {

    @State var name: String
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

                Section {

                }
            }
            .navigationTitle("Generador de personaje")
            .navigationBarItems(trailing: Button("Crear") { debugPrint("Submit") })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "", selectedRace: nil, selectedClass: nil)
    }
}
