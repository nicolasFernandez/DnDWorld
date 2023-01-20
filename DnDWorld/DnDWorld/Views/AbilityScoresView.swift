//
//  AbilityScoresView.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 16-01-23.
//

import SwiftUI

struct AbilityScoresView: View {
    let options = ["1", "2", "3", "4", "5", ]
    @State private var selectedOption = 0
    let statName: String
    let bonus: Int
    var body: some View {
        VStack {
            Text(statName)
            Picker(selection: $selectedOption, label: Text("--")) {
                ForEach(0 ..< options.count) {
                    Text(self.options[$0]).tag($0)
                }
            }
            let total = Int(options[selectedOption])! + bonus
            Text("Total: \(total)")
        }
    }
}

struct AbilityScoresView_Previews: PreviewProvider {
    static var previews: some View {
        AbilityScoresView(statName: "Fuerza", bonus: 2)
    }
}
