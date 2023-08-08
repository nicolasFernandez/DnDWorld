//
//  RaceTypeTests.swift
//  DnDWorldTests
//
//  Created by Nicolas Alonso Fernandez Alarcon on 07-08-23.
//

import XCTest
@testable import DnDWorld

final class RaceTypeTests: XCTestCase {

    func test_dragonborn_ComputedProperty_isDragonborn() throws {
        var sut: RaceType { .dragonborn }
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut, .dragonborn)
    }

    func test_dragonborn_name() {
        let sut = RaceType.dragonborn
        XCTAssertEqual(getName(raceType: sut), sut.name)
    }

    func test_dragonborn_description() {
        let sut = RaceType.dragonborn
        XCTAssertEqual(getDescription(raceType: sut), sut.description)
    }

    func test_dragonborn_ratialTraits() {
        let sut = RaceType.dragonborn
        XCTAssertEqual(getRacialTraits(raceType: sut), sut.racialTraits)
    }

    func test_halfElf_name() {
        let sut = RaceType.halfElf
        XCTAssertEqual(getName(raceType: sut), sut.name)
    }

    func test_halfOrc_name() {
        let sut = RaceType.halfElf
        XCTAssertEqual(getName(raceType: sut), sut.name)
    }

    private func getName(raceType: RaceType) -> String {
        return NSLocalizedString(
            getNameKey(raceType: raceType),
            comment: ""
        )
    }

    private func getNameKey(raceType: RaceType) -> String {
        "\(getSnakedRaceType(raceType))_name"
    }

    private func getDescription(raceType: RaceType) -> String {
        return NSLocalizedString(
            getDescriptionKey(raceType: raceType),
            comment: ""
        )
    }

    private func getDescriptionKey(raceType: RaceType) -> String {
        "\(getSnakedRaceType(raceType))_description"
    }

    private func getRacialTraits(raceType: RaceType) -> String {
        return NSLocalizedString(
            getRacialTraitsKey(raceType: raceType),
            comment: ""
        )
    }

    private func getRacialTraitsKey(raceType: RaceType) -> String {
        "\(getSnakedRaceType(raceType))_racial_traits"
    }

    private func getSnakedRaceType(_ raceType: RaceType) -> String {
        mapPascalCaseToSnakeCase(raceType.rawValue)
    }

    private func mapPascalCaseToSnakeCase(_ value: String) -> String {
        var newValue: String = ""
        for letter in value {
            let newLetter = letter.isUppercase ? "_\(letter.lowercased())" : "\(letter)"
            newValue.append(newLetter)
        }
        return newValue
    }

}
