//
//  BuzzRuleTests.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import XCTest
@testable import FizzBuzzEnteprisey

class BuzzRuleTests: XCTestCase {
  func testBuzzRule() {
    let buzzRule = BuzzRule<Int>.init(divisibleRule: DivisibleRule(divisor: 5))
    
    XCTAssertTrue(buzzRule.matches(number: 5), "5 should match BuzzRule")
    XCTAssertTrue(buzzRule.matches(number: 10), "10 should match BuzzRule")
    XCTAssertFalse(buzzRule.matches(number: 7), "7 should not match BuzzRule")
    XCTAssertEqual(buzzRule.apply(), "Buzz", "BuzzRule should apply as 'Buzz'")
  }
}
