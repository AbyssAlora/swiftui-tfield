//
//  SpecialCharacterValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

struct NumberCharacterValidationRule: ValidationRule {
    typealias Input = String

    let errorMessage: String

    init(errorMessage: String = "Must contain at least one number.") {
        self.errorMessage = errorMessage
    }

    func validate(_ input: String) -> String? {
        let numberRegex = #".*[0-9]+.*"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", numberRegex)
        return predicate.evaluate(with: input) ? nil : errorMessage
    }
}
