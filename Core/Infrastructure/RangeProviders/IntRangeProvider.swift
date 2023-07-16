//
//  IntRangeProvider.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

final class IntRangeProvider: RangeProvider {
  typealias Bound = Int

  let lower: Int
  let upper: Int

  init(lower: Int, upper: Int) {
    self.lower = lower
    self.upper = upper
  }
}
