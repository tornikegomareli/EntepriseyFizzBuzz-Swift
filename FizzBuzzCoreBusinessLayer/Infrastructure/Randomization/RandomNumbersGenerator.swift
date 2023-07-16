//
//  RandomNumbersGenerator.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class RandomNumbersGenerator<Range: RangeProvider>: Generator where Range.Bound: Numeric & Comparable & FixedWidthInteger {
  typealias Element = [Range.Bound]

  private let rangeProvider: Range
  private let quantity: Int

  init(rangeProvider: Range, quantity: Int) {
    self.rangeProvider = rangeProvider
    self.quantity = quantity
  }

  func generate() -> Element {
    var numbers = Element()

    for _ in 0..<quantity {
      let randomNumber = RandomSingleNumberGenerator(start: rangeProvider.lower, end: rangeProvider.upper)
      numbers.append(randomNumber.generate())
    }

    return numbers
  }
}


