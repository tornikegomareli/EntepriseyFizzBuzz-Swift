//
//  FizzRUle.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class FizzRule<T: BinaryInteger>: FizzBuzzRule {
  private let divisibleRule: DivisibleRule<T>
  
  init(divisibleRule: DivisibleRule<T>) {
    self.divisibleRule = divisibleRule
  }
  
  func matches(number: T) -> Bool {
    return divisibleRule.isDivisible(number: number)
  }
  
  func apply() -> String {
    return "Fizz"
  }
}

