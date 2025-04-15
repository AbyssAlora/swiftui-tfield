//
//  AnyValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

struct AnyValidationRule<Value>: ValidationRule {
    private let _validate: (Value) -> String?

    init<R: ValidationRule>(_ rule: R) where R.Value == Value {
        self._validate = rule.validate
    }

    func validate(_ value: Value) -> String? {
        _validate(value)
    }
}

extension AnyValidationRule where Value == String {
    static func minLength(_ length: Int) -> Self {
        AnyValidationRule(MinLength(min: length))
    }

    static var containsCapital: Self {
        AnyValidationRule(ContainsCapital())
    }
    
    static var containsDigit: Self {
        AnyValidationRule(ContainsDigit())
    }
    
    static var containsSpecialCharacter: Self {
        AnyValidationRule(ContainsSpecialCharacter())
    }
    
    static var strongPassword: Self {
        AnyValidationRule(StrongPassword())
    }
    
    static var isNotEmpty: Self {
        AnyValidationRule(IsNotEmpty())
    }
}
