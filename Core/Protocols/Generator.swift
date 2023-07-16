//
//  NumberGeneratorable.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

public protocol Generator {
  associatedtype Element
  func generate() -> Element
}
