//
//  AnyValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

struct AnyValidationRule<Input>: ValidationRule {
    private let _validate: (Input) -> String?
    
    init<R: ValidationRule>(_ rule: R) where R.Input == Input {
        self._validate = rule.validate
    }
    
    func validate(_ input: Input) -> String? {
        return _validate(input)
    }
}
