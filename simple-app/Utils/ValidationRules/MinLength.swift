//
//  EmptyValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

struct MinLength: ValidationRule {
    typealias Value = String
    let min: Int

    func validate(_ value: Value) -> String? {
        if value.isEmpty {
            return nil
        }
        
        return value.count >= min ? nil : "Error.MinLength".localized(min)
    }
}
