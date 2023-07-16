//
//  DoubleRangeProvider.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class DoubleRangeProvider: RangeProvider {
  typealias Bound = Double

  let lower: Double
  let upper: Double

  init(lower: Double, upper: Double) {
    self.lower = lower
    self.upper = upper
  }
}
