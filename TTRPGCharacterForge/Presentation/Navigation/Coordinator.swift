//
//  Coordinator.swift
//  TTRPGCharacterForge
//
//  Created by Nicolas Alonso Fernandez Alarcon on 12-11-25.
//

import SwiftUI

final class Coordinator {

    @ViewBuilder
    func makeView() -> some View {
        if #available(iOS 17.0, *) {
            ContentView()
        } else {
            // Fallback on earlier versions
        }
    }
}
