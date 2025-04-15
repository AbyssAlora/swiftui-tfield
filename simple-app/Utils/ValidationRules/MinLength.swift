//
//  EmptyValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

struct MinLength: ValidationRule {
    typealias Value = String
    let min: Int

    func validate(_ value: String) -> String? {
        value.count >= min ? nil : "Must be at least \(min) characters"
    }
}
