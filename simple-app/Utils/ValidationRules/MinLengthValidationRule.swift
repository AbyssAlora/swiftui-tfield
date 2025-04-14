//
//  EmptyValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

struct MinLengthValidationRule: ValidationRule {
    typealias Input = String
    
    let minLength: Int
    let errorMessage: String
    
    init(_ minLength: Int, errorMessage: String = "This field cannot be empty.") {
        self.minLength = minLength
        self.errorMessage = errorMessage
    }
    
    func validate(_ input: String) -> String? {
        return input.trimmingCharacters(in: .whitespacesAndNewlines).count < minLength ? errorMessage : nil
    }
}
