//
//  FizzBuzzRule.swift
//  FizzBuzzEnteprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

protocol DivisibleRuleProtocol {
  associatedtype NumberType
  var divisor: NumberType { get }
  func isDivisible(number: NumberType) -> Bool
}

