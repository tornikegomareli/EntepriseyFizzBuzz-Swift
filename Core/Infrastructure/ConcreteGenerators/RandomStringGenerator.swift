//
//  TextsGEnerator.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

final class RandomStringGenerator: Generator {
  typealias Element = [String]

  private let length: Int
  private let numberOfStrings: Int

  init(length: Int = 5, numberOfStrings: Int) {
    self.length = length
    self.numberOfStrings = numberOfStrings
  }

  func generate() -> Element {
    var strings = Element()
    let letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    for _ in 0..<numberOfStrings {
      var randomString = ""

      for _ in 0..<length {
        let index = Int.random(in: 0..<letters.count)
        randomString.append(letters[index])
      }

      strings.append(randomString)
    }

    return strings
  }
}

