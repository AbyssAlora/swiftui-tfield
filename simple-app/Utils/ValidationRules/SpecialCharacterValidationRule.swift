//
//  SpecialCharacterValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

struct SpecialCharacterValidationRule: ValidationRule {
    typealias Input = String
    
    let errorMessage: String
    
    init(errorMessage: String = "Password must contain at least one special character.") {
        self.errorMessage = errorMessage
    }
    
    func validate(_ input: String) -> String? {
        let specialCharacterRegex = #".*[!@#$%^&*(),.?":{}|<>].*"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", specialCharacterRegex)
        return predicate.evaluate(with: input) ? nil : errorMessage
    }
}
