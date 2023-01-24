//
//  ContentView.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) { // TODO: spacing to fill screen
            Text("Generador de personaje").font(.title) // TODO: Nav bar
            Spacer()
            Text("Raza seleccionada") // TODO: picker view
            Spacer()
            Text("Clase seleccionada") // TODO: picker view
            Spacer()
            HStack{
                Text("Nombre de personaje") // TODO: input text
                Button("Random", action: {
                    print("Random name")
                })
            }
            Spacer()
            Button("Crear", action: {
                print("action sent")
            }).edgesIgnoringSafeArea(.top)
            Spacer()
        }
//        Text("Nombre de personaje")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
