//
//  MockRandomNumbersGenerator.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class MockRandomNumbersGenerator: RandomNumbersGenerator<IntRangeProvider> {
  private let mockNumbers: [Int]

  init(rangeProvider: IntRangeProvider, quantity: Int, mockNumbers: [Int]) {
    self.mockNumbers = mockNumbers
    super.init(rangeProvider: rangeProvider, quantity: quantity)
  }

  override func generate() -> [Int] {
    return mockNumbers
  }
}
