//
//  FizzBuzzBuilder.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class FizzBuzzBuilder<T: BinaryInteger> {
  private var quantity: Int = 100
  private var lower: T = 1
  private var upper: T = 100

  func setQuantity(_ quantity: Int) -> FizzBuzzBuilder {
    self.quantity = quantity
    return self
  }

  func setRange(lower: T, upper: T) -> FizzBuzzBuilder {
    self.lower = lower
    self.upper = upper
    return self
  }

  func build() -> FizzBuzz<T> {
    let divisibleRuleFactory = DivisibleRuleFactory<T>()
    let fizzRuleFactory = FizzRuleFactory<T>(divisibleRuleFactory: divisibleRuleFactory)
    let buzzRuleFactory = BuzzRuleFactory<T>(divisibleRuleFactory: divisibleRuleFactory)
    let rangeProvider = IntRangeProvider(lower: Int(lower), upper: Int(upper))
    let randomNumbersGenerator = RandomNumbersGenerator<IntRangeProvider>(rangeProvider: rangeProvider, quantity: quantity)

    return FizzBuzz<T>(fizzRuleFactory: fizzRuleFactory, buzzRuleFactory: buzzRuleFactory, randomNumbersGenerator: randomNumbersGenerator)
  }
}
