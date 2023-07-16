//
//  FizzBuzzRule.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

protocol FizzBuzzRule {
  associatedtype NumberType
  func matches(number: NumberType) -> Bool
  func apply() -> String
}
