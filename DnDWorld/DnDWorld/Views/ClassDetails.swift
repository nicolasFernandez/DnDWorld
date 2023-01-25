//
//  ClassDetails.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import SwiftUI

struct ClassDetails: View {
    var classType: ClassType
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            ClassRow(classType: classType)
            Text(classType.description)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom, 8)
                .padding(.top, 8)
            StatText(
                statTitle: Text("Hit Die", comment: ""),
                statValue: classType.hitDie
            )
            StatText(statTitle: Text("Primary Ability", comment: ""), statValue: classType.primaryAbility)
            StatText(statTitle: Text("Saving throw", comment: ""), statValue: classType.saves)
            Image("\(classType.rawValue)_large")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ClassDetails_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetails(classType: .wizard)
    }
}
