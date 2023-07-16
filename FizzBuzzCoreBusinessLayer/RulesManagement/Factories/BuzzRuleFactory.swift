//
//  BuzzRuleFactory.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class BuzzRuleFactory<T: BinaryInteger> {
  private let divisibleRuleFactory: DivisibleRuleFactory<T>

  init(divisibleRuleFactory: DivisibleRuleFactory<T>) {
    self.divisibleRuleFactory = divisibleRuleFactory
  }

  func create() -> BuzzRule<T> {
    let divisibleRule: DivisibleRule<T> = divisibleRuleFactory.create(divisor: 5)
    return BuzzRule(divisibleRule: divisibleRule)
  }
}

