//
//  RandomNumbersGeneratorTests.swift
//  FizzBuzzEntepriseyTests
//
//  Created by Tornike on 16/07/2023.
//

import XCTest
@testable import FizzBuzzEnteprisey

class RandomNumbersGeneratorTests: XCTestCase {
  func testIntegerRandomNumbersGenerator() {
    let rangeProvider = IntRangeProvider(lower: 1, upper: 100)
    let numberGenerator = RandomNumbersGenerator(rangeProvider: rangeProvider, quantity: 10)
    let numbers = numberGenerator.generate()

    XCTAssertEqual(numbers.count, 10, "Should generate 10 numbers")

    for number in numbers {
      XCTAssertTrue(number >= 1 && number <= 100, "Generated number should be within the range 1 and 100")
    }
  }

  func testInt64RandomNumbersGenerator() {
    let rangeProvider = Int64RangeProvider(lower: 1, upper: 100)
    let numberGenerator = RandomNumbersGenerator(rangeProvider: rangeProvider, quantity: 10)
    let numbers = numberGenerator.generate()

    XCTAssertEqual(numbers.count, 10, "Should generate 10 numbers")

    for number in numbers {
      XCTAssertTrue(number >= 1 && number <= 100, "Generated number should be within the range 1 and 100")
    }
  }
  // Due to the limitation with `FixedWidthInteger`, Float and Double random generators will produce whole numbers only
  // Therefore we are not including tests for them here. But if you manage to generate random Floats or Doubles, you can write similar tests for them.
}

