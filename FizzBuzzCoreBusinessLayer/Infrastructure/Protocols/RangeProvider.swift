//
//  RangeProvider.swift
//  FizzBuzzEnterprisey
//
//  Created by Tornike on 16/07/2023.
//

import Foundation

protocol RangeProvider {
  associatedtype Bound: Comparable, Randomizable
  var lower: Bound { get }
  var upper: Bound { get }
}
