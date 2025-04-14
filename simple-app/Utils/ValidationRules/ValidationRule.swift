//
//  ValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import Foundation

protocol ValidationRule {
    associatedtype Input
    func validate(_ input: Input) -> String?
}

extension ValidationRule where Input == String {
    func asAny() -> AnyValidationRule<String> {
        .init(self)
    }
}
