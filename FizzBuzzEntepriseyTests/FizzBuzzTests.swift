//
//  FizzBuzzTests.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation
import XCTest
@testable import FizzBuzzEnteprisey

class FizzBuzzTests: XCTestCase {
  func testFizzBuzzBuilder() {
    let fizzBuzz = FizzBuzzBuilder<Int>()
      .setQuantity(5)
      .setRange(lower: 1, upper: 5)
      .build()

    let results = fizzBuzz.playGame()
    XCTAssertEqual(results.count, 5, "Should generate 5 results")
  }

  func testPlayGame() {
    // Setup
    let fizzRuleFactory = FizzRuleFactory<Int>(divisibleRuleFactory: DivisibleRuleFactory<Int>())
    let buzzRuleFactory = BuzzRuleFactory<Int>(divisibleRuleFactory: DivisibleRuleFactory<Int>())
    let rangeProvider = IntRangeProvider(lower: 1, upper: 100)

    let mockNumbers = [1, 2, 3, 4, 5]
    let mockRandomNumbersGenerator = MockRandomNumbersGenerator(rangeProvider: rangeProvider, quantity: 100, mockNumbers: mockNumbers)

    let fizzBuzz = FizzBuzz(fizzRuleFactory: fizzRuleFactory, buzzRuleFactory: buzzRuleFactory, randomNumbersGenerator: mockRandomNumbersGenerator)

    // Exercise
    let gameResults = fizzBuzz.playGame()

    // Assert
    XCTAssertEqual(gameResults.count, 5, "Should generate 5 game results")
    XCTAssertEqual(gameResults[2], "Fizz", "Should be fizz")
    XCTAssertEqual(gameResults[4], "Buzz", "Should be buzz")

    // Check individual game results
    // ...
  }
}
