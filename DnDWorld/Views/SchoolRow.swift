//
//  SchoolRow.swift
//  DnDWorld
//
//  Created by Nicolas Alonso Fernandez Alarcon on 13-01-23.
//

import SwiftUI

struct SchoolRow: View {
    var school: School
    var body: some View {
        HStack {
            Text(school.name)
                .font(.title)
                .fontWeight(.bold)
                .padding(
                    .trailing, 30
                )
            Spacer()
        }
    }
}

struct SchoolRow_Previews: PreviewProvider {
    static var previews: some View {
        SchoolRow(
            school: .abjuration
        ).previewLayout(.fixed(width: 500, height: 100))
    }
}
