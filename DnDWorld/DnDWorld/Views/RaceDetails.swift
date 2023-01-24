//
//  RaceDetails.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import SwiftUI

struct RaceDetails: View {
    var raceType: RaceType
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text(raceType.title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.trailing, 30)
                .padding(.leading, 30)
            Text(raceType.description)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom, 8)
                .padding(.top, 8)
            // TODO: move text to localization
            Text("Rasgos \(raceType.title)")
                .fontWeight(.bold)
                .padding(.leading, 30)
                .padding(.trailing, 30)
            Text(raceType.racialTraits)
                .padding(.leading, 30)
                .padding(.trailing, 30)
            Image("\(raceType.rawValue)_large")
                .resizable()
                .scaledToFit()
        }
    }
}

struct RaceDetails_Previews: PreviewProvider {
    static var previews: some View {
        RaceDetails(raceType: .gnome)
    }
}
