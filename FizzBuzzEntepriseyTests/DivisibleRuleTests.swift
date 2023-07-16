//
//  DivisibleRuleTests.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation
import XCTest
@testable import FizzBuzzEnteprisey

class DivisibleRuleTests: XCTestCase {
  func testIsDivisible() {
    let divisibleRule = DivisibleRule<Int>(divisor: 3)

    XCTAssertTrue(divisibleRule.isDivisible(number: 3), "3 should be divisible by 3")
    XCTAssertTrue(divisibleRule.isDivisible(number: 6), "6 should be divisible by 3")
    XCTAssertFalse(divisibleRule.isDivisible(number: 7), "7 should not be divisible by 3")
  }
}
