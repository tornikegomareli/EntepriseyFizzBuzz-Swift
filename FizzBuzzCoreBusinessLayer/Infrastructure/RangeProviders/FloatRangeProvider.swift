//
//  FloatRangeProvider.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class FloatRangeProvider: RangeProvider {
  typealias Bound = Float

  let lower: Float
  let upper: Float

  init(lower: Float, upper: Float) {
    self.lower = lower
    self.upper = upper
  }
}
