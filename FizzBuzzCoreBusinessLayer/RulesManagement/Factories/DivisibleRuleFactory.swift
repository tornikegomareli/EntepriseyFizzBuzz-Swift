//
//  DivisibleRuleFactory.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class DivisibleRuleFactory<T: BinaryInteger> {
  func create(divisor: T) -> DivisibleRule<T> {
    return DivisibleRule(divisor: divisor)
  }
}
