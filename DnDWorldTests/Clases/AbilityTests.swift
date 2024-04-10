//
//  AbilityTests.swift
//  DnDWorldTests
//
//  Created by Nicolas Alonso Fernandez Alarcon on 07-08-23.
//

import XCTest
@testable import DnDWorld

final class AbilityTests: XCTestCase {
    
    func test_canInit() {
        let sut = Ability(base: 8, raceBonus: 2)
        XCTAssertNotNil(sut)
    }

}
