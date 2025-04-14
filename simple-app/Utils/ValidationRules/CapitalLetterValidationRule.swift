//
//  CapitalCharacterValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

struct CapitalLetterValidationRule: ValidationRule {
    typealias Input = String

    let errorMessage: String

    init(errorMessage: String = "Must contain at least one uppercase letter.") {
        self.errorMessage = errorMessage
    }

    func validate(_ input: String) -> String? {
        let capitalLetterRegex = #".*[A-Z]+.*"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", capitalLetterRegex)
        return predicate.evaluate(with: input) ? nil : errorMessage
    }
}
