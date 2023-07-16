//
//  NumbersGenerator.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

final class NumbersGenerator: Generator {
  typealias Element = [Int]

  private let start: Int
  private let end: Int

  init(start: Int, end: Int) {
    self.start = start
    self.end = end
  }

  func generate() -> Element {
    return Array(start...end)
  }
}
