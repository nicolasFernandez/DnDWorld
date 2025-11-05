//
//  SpellTests.swift
//  TTRPGCharacterForgeTests
//
//  Created on 2025-10-13.
//

import XCTest
@testable import TTRPGCharacterForge

final class SpellTests: XCTestCase {
    
    func test_canInit() {
        let sut = makeSUT()
        XCTAssertNotNil(sut)
    }
    
    func test_equals_returnsTrueForSameID() {
        let sut = makeSUT()
        let copy = Spell(
            name: "Different Name",
            level: 5,
            school: .evocation,
            castingTime: "Different",
            range: "Different",
            components: SpellComponents(verbal: false, somatic: false, material: false, materialComponents: nil),
            duration: "Different",
            description: "Different",
            classes: [.wizard]
        )
        
        XCTAssertNotEqual(sut.name, copy.name)
        XCTAssertEqual(sut.id, sut.id)
        XCTAssertEqual(sut, sut)
    }
    
    func test_notEquals_returnsFalseForDifferentID() {
        let sut1 = makeSUT()
        let sut2 = makeSUT()
        
        XCTAssertNotEqual(sut1.id, sut2.id)
        XCTAssertNotEqual(sut1, sut2)
    }
    
    func test_componentsContainsCorrectValues() {
        let components = SpellComponents(
            verbal: true,
            somatic: true,
            material: true,
            materialComponents: "A diamond worth at least 500gp"
        )
        
        XCTAssertTrue(components.verbal)
        XCTAssertTrue(components.somatic)
        XCTAssertTrue(components.material)
        XCTAssertEqual(components.materialComponents, "A diamond worth at least 500gp")
    }
    
    // MARK: - Helpers
    
    private func makeSUT() -> Spell {
        Spell(
            name: "Fireball",
            level: 3,
            school: .evocation,
            castingTime: "1 action",
            range: "150 feet",
            components: SpellComponents(
                verbal: true,
                somatic: true,
                material: true,
                materialComponents: "A tiny ball of bat guano and sulfur"
            ),
            duration: "Instantaneous",
            description: "A bright streak flashes from your pointing finger to a point you choose within range and then blossoms with a low roar into an explosion of flame.",
            classes: [.sorcerer, .wizard]
        )
    }
}