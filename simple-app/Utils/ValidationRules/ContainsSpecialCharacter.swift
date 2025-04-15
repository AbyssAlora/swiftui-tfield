//
//  SpecialCharacterValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

struct ContainsSpecialCharacter: ValidationRule {
    typealias Input = String
    
    
    func validate(_ input: String) -> String? {
        let specialCharacterRegex = #".*[!@#$%^&*(),.?":{}|<>].*"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", specialCharacterRegex)
        return predicate.evaluate(with: input) ? nil : "Password must contain at least one special character."
    }
}
