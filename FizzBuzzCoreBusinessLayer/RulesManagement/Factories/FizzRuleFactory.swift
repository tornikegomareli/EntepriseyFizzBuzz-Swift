//
//  FizzRuleFactory.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class FizzRuleFactory<T: BinaryInteger> {
  private let divisibleRuleFactory: DivisibleRuleFactory<T>

  init(divisibleRuleFactory: DivisibleRuleFactory<T>) {
    self.divisibleRuleFactory = divisibleRuleFactory
  }

  func create() -> FizzRule<T> {
    let divisibleRule: DivisibleRule<T> = divisibleRuleFactory.create(divisor: 3)
    return FizzRule(divisibleRule: divisibleRule)
  }
}
