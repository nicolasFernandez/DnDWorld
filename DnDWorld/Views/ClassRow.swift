//
//  ClassRow.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import SwiftUI

struct ClassRow: View {
    var classType: ClassType
    var body: some View {
        HStack {
            Image(classType.rawValue)
                .resizable()
                .frame(width: 45, height: 45)
                .padding(
                    .leading, 30
                )
                .scaledToFit()
            Text(classType.name)
                .font(.title)
                .fontWeight(.bold)
                .padding(
                    .trailing, 30
                )
            Spacer()
        }
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassRow(classType: .warlock).previewLayout(.fixed(width: 500, height: 100))
    }
}
