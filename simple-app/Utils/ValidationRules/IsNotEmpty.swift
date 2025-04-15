//
//  IsNotEmpty.swift
//  simple-app
//
//  Created by Abyss Alora on 15/04/2025.
//

struct IsNotEmpty: ValidationRule {
    typealias Value = String

    func validate(_ value: String) -> String? {
        if value.isEmpty {
            return "Error.IsNotEmpty".localized
        }
        
        return nil
    }
}
