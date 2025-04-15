//
//  CapitalCharacterValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

struct ContainsCapital: ValidationRule {
    typealias Value = String

    func validate(_ input: String) -> String? {
        let capitalLetterRegex = #".*[A-Z]+.*"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", capitalLetterRegex)
        return predicate.evaluate(with: input) ? nil : "Must contain a capital letter"
    }
}
