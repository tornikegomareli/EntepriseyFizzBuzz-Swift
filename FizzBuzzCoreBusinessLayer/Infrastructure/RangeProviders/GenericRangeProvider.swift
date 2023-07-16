//
//  GenericRangeProvider.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class GenericRangeProvider<T: Randomizable & Comparable>: RangeProvider {
  typealias Bound = T

  var lower: Bound
  var upper: Bound

  init(lower: Bound, upper: Bound) {
    assert(lower <= upper, "Lower bound must be less than or equal to the upper bound.")
    self.lower = lower
    self.upper = upper
  }
}
