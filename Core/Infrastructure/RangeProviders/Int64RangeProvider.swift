//
//  Int64RangeProvider.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

class Int64RangeProvider: RangeProvider {
  typealias Bound = Int64

  let lower: Int64
  let upper: Int64

  init(lower: Int64, upper: Int64) {
    self.lower = lower
    self.upper = upper
  }
}
