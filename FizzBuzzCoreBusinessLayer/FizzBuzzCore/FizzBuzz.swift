//
//  FizzBuzz.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class FizzBuzz<T: BinaryInteger> {
  private let fizzRuleFactory: FizzRuleFactory<T>
  private let buzzRuleFactory: BuzzRuleFactory<T>
  private let randomNumbersGenerator: RandomNumbersGenerator<IntRangeProvider>

  init(fizzRuleFactory: FizzRuleFactory<T>,
       buzzRuleFactory: BuzzRuleFactory<T>,
       randomNumbersGenerator: RandomNumbersGenerator<IntRangeProvider>
  ) {
    self.fizzRuleFactory = fizzRuleFactory
    self.buzzRuleFactory = buzzRuleFactory
    self.randomNumbersGenerator = randomNumbersGenerator
  }

  func playGame() -> [String] {
    var result: [String] = []
    let numbers = randomNumbersGenerator.generate()

    for number in numbers {
      let i = T(number)
      let fizzRule = fizzRuleFactory.create()
      let buzzRule = buzzRuleFactory.create()

      switch (fizzRule.matches(number: i), buzzRule.matches(number: i)) {
      case (true, true):
        result.append(fizzRule.apply() + buzzRule.apply())
      case (true, false):
        result.append(fizzRule.apply())
      case (false, true):
        result.append(buzzRule.apply())
      case (false, false):
        result.append(String(i))
      }
    }

    return result
  }
}
