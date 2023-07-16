//
//  Randomizable.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

protocol Randomizable: Comparable {
  static func random(in range: ClosedRange<Self>) -> Self
}

extension Int: Randomizable {}
extension Float: Randomizable {}
extension Double: Randomizable {}
extension Int64: Randomizable {}
