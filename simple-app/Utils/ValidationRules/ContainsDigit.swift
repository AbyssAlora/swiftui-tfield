//
//  SpecialCharacterValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

struct ContainsDigit: ValidationRule {
    typealias Input = String

    func validate(_ input: String) -> String? {
        let numberRegex = #".*[0-9]+.*"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", numberRegex)
        return predicate.evaluate(with: input) ? nil : "Must contain at least one number."
    }
}
