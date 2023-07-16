//
//  DivisibleRule.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class DivisibleRule<T: BinaryInteger>: DivisibleRuleProtocol {
  typealias NumberType = T

  var divisor: NumberType

  init(divisor: NumberType) {
    self.divisor = divisor
  }

  func isDivisible(number: NumberType) -> Bool {
    return number % divisor == 0
  }
}

