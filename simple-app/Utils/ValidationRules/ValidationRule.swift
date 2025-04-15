//
//  ValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

protocol ValidationRule<Value> {
    associatedtype Value
    func validate(_ value: Value) -> String?
}

