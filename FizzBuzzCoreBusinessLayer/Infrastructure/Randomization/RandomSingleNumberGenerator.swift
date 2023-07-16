//
//  NumberGenerator.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

final class RandomSingleNumberGenerator<T>: Generator where T: Randomizable {
  typealias Element = T

  private let start: Element
  private let end: Element

  init(start: Element, end: Element) {
    self.start = start
    self.end = end
  }

  func generate() -> Element {
    return Element.random(in: start...end)
  }
}
