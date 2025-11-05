import XCTest
import SwiftUI
@testable import TTRPGCharacterForge

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
        // Verify that the modifier can be applied to a TextField with @State
        struct TestView: View {
            @State private var text: String = ""
            
            var body: some View {
                TextField("Test", text: $text)
                    .disableKeyboardCache()
            }
        }
        
        let testView = TestView()
        XCTAssertNotNil(testView)
    }
}
