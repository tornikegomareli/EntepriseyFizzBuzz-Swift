//
//  FizzRuleTests.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

import XCTest
@testable import FizzBuzzEnteprisey

class FizzRuleTests: XCTestCase {
  func testFizzRule() {
    let fizzRule = FizzRule<Int>(
      divisibleRule: DivisibleRule(divisor: 3)
    )

    XCTAssertTrue(fizzRule.matches(number: 3), "3 should match FizzRule")
    XCTAssertTrue(fizzRule.matches(number: 6), "6 should match FizzRule")
    XCTAssertFalse(fizzRule.matches(number: 7), "7 should not match FizzRule")
    XCTAssertEqual(fizzRule.apply(), "Fizz", "FizzRule should apply as 'Fizz'")
  }
}
