import XCTest
import SwiftUI
@testable import DnDWorld

final class SecureTextFieldModifierTests: XCTestCase {
    
    func testSecureTextFieldModifierExists() {
        // Verify that the SecureTextFieldModifier can be instantiated
        let modifier = SecureTextFieldModifier()
        XCTAssertNotNil(modifier)
    }
    
    func testDisableKeyboardCacheExtensionExists() {
        // Verify that the disableKeyboardCache() extension method exists
        // by checking if we can call it on a Text view
        let text = Text("Test")
        let modifiedView = text.disableKeyboardCache()
        XCTAssertNotNil(modifiedView)
    }
    
    func testModifierCanBeAppliedToTextField() {
        // Verify that the modifier can be applied to a TextField
        @State var testText = ""
        let textField = TextField("Test", text: .constant(""))
        let modifiedTextField = textField.disableKeyboardCache()
        XCTAssertNotNil(modifiedTextField)
    }
}
