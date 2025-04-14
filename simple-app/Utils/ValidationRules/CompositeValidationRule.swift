//
//  CompositeValidationRule.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

struct CompositeValidationRule<Input>: ValidationRule {
    typealias Input = Input
    
    private let rules: [AnyValidationRule<Input>]
    
    init(rules: [AnyValidationRule<Input>]) {
        self.rules = rules
    }
    
    func validate(_ input: Input) -> String? {
        for rule in rules {
            if let error = rule.validate(input) {
                return error
            }
        }
        return nil
    }
}
