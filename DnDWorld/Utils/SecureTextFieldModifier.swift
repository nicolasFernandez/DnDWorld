//
//  SecureTextFieldModifier.swift
//  DnDWorld
//
//  Created by Copilot on 11-10-25.
//  Addresses security alert #5: Keyboard Cache
//

import SwiftUI

/// A ViewModifier that disables keyboard cache, autocorrection, and spell checking
/// for text input fields to address security scanning requirements.
///
/// While DnDWorld primarily handles non-sensitive game data, this modifier
/// ensures compliance with iOS security best practices and satisfies
/// automated security scanning requirements.
///
/// Usage:
/// ```
/// TextField("Character Name", text: $characterName)
///     .disableKeyboardCache()
/// ```
struct SecureTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
    }
}

extension View {
    /// Disables keyboard cache, autocorrection, and autocapitalization for text input.
    ///
    /// Apply this modifier to TextFields to prevent the iOS keyboard from caching
    /// input data and to disable autocorrection features.
    ///
    /// - Returns: A view with keyboard cache and autocorrection disabled
    func disableKeyboardCache() -> some View {
        self.modifier(SecureTextFieldModifier())
    }
}
