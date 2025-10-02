import XCTest
@testable import DnDWorld

final class StringUtilsTests: XCTestCase {
    func testSnakeCaseRawValue_EmptyString() {
        XCTAssertEqual("".camelToSnakeCase(), "")
    }
    
    func testSnakeCaseRawValue_SingleCharacter() {
        XCTAssertEqual("A".camelToSnakeCase(), "_a")
        XCTAssertEqual("a".camelToSnakeCase(), "a")
    }
    
    func testSnakeCaseRawValue_Lowercase() {
        XCTAssertEqual("lowercase".camelToSnakeCase(), "lowercase")
    }
    
    func testSnakeCaseRawValue_Uppercase() {
        XCTAssertEqual("UPPERCASE".camelToSnakeCase(), "_u_p_p_e_r_c_a_s_e")
    }
    
    func testSnakeCaseRawValue_CamelToSnakeCase() {
        XCTAssertEqual("camelCase".camelToSnakeCase(), "camel_case")
        XCTAssertEqual("CamelCase".camelToSnakeCase(), "_camel_case")
        XCTAssertEqual("camelCaseWithMultipleCAPS".camelToSnakeCase(), "camel_case_with_multiple_c_a_p_s")
    }
    
    func testSnakeCaseRawValue_MixedCase() {
        XCTAssertEqual("mIxEdCaSe".camelToSnakeCase(), "m_ix_ed_ca_se")
    }
}
