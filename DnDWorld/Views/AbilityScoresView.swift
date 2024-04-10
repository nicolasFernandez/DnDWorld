//
//  AbilityScoresView.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 16-01-23.
//

import SwiftUI
// TODO: complete, this is just a testing WIP
struct AbilityScoresView: View {
    let options = ["1", "2", "3", "4", "5", ]
    @State private var selectedOption = 0
    let statName: Text
    let bonus: Int
    var body: some View {
        VStack {
            statName.bold()
            Picker(selection: $selectedOption, label: Text("--")) {
                ForEach(0 ..< options.count) {
                    Text(self.options[$0]).tag($0)
                }
            }
            let total = Int(options[selectedOption])! + bonus
            Text("Total: \(total)").bold()
        }
    }
}

struct AbilityScoresView_Previews: PreviewProvider {
    static var previews: some View {
        AbilityScoresView(statName: Text("Strength", comment:""), bonus: 2)
    }
}
