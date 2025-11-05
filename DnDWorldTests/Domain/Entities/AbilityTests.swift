//
//  AbilityTests.swift
//  TTRPGCharacterForgeTests
//
//  Created by Nicolas Alonso Fernandez Alarcon on 07-08-23.
//

import XCTest
@testable import TTRPGCharacterForge

final class AbilityTests: XCTestCase {
    
    func test_canInit() {
        let sut = Ability(base: 8, raceBonus: 2)
        XCTAssertNotNil(sut)
    }

    func test_canInitWithNoRaceBonus() {
        let sut = Ability(base: 10)
        XCTAssertNotNil(sut)
    }

    func test_sumBasePlusRaceBonus() {
        let sut = Ability(base: 8, raceBonus: 2)
        XCTAssertEqual(sut.totalScore, 10)
    }

    func test_modifier_scoreOne_shouldBeMinusFive() {
        let sut = Ability(base: 1)
        XCTAssertEqual(sut.modifier, -5)
    }

    func test_modifier_scoreTwoOrThree_shouldBeMinusFour() {
        let sutOne = Ability(base: 2)
        XCTAssertEqual(sutOne.modifier, -4)

        let sutTwo = Ability(base: 3)
        XCTAssertEqual(sutTwo.modifier, -4)
    }

    func test_modifier_scoreTenOrEleven_shouldBeZero() {
        let sutOne = Ability(base: 10)
        XCTAssertEqual(sutOne.modifier, 0)

        let sutTwo = Ability(base: 11)
        XCTAssertEqual(sutTwo.modifier, 0)
    }

    func test_modifier_scoreTwentyEightOrTwentyNine_shouldBePlusNine() {
        let sutOne = Ability(base: 28)
        XCTAssertEqual(sutOne.modifier, 9)

        let sutTwo = Ability(base: 29)
        XCTAssertEqual(sutTwo.modifier, 9)
    }

    func test_modifier_scoreThirty_shouldBePlusTen() {
        let sut = Ability(base: 30)
        XCTAssertEqual(sut.modifier, 10)
    }
}
