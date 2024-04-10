//
//  StatText.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import SwiftUI

struct StatText: View {
    var statTitle: Text
    var statValue: String
    var body: some View {
        HStack {
            statTitle
                .fontWeight(.bold)
                .padding(.leading, 30)
            Text(statValue)
                .padding(.trailing, 30)
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statTitle: Text("Hit Die", comment: ""), statValue: "d8").previewLayout(.fixed(width: 500, height: 100))
    }
}
