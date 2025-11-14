//
//  TTRPGCharacterForgeApp.swift
//  TTRPGCharacterForge
//
//  Created by Nicolas Alonso Fernandez Alarcon on 26-12-22.
//

import SwiftUI

@main
struct TTRPGCharacterForgeApp: App {
    var body: some Scene {
        WindowGroup {
            CompositionRoot()
                .coordinator
                .makeView()
        }
    }
}
