//
//  StrongPassword.swift
//  simple-app
//
//  Created by Abyss Alora on 15/04/2025.
//

import Foundation

struct StrongPassword: ValidationRule {
    typealias Value = String
    
    private let errorMessage = "Password must be at least 8 characters long, contain at least one uppercase letter, number and special character (?=#/%).".localized

    func validate(_ value: String) -> String? {
        if value.isEmpty {
            return nil
        }
        
        if value.count < 8 {
            return errorMessage
        }
        
        let regex = #"^(?=.*\d)(?=.*[A-Z])(?=.*[?=#/%]).*$"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        
        return predicate.evaluate(with: value) ? nil : errorMessage
    }
}
