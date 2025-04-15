//
//  ValidatedField.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI
import Combine

class ValidatedField<Value>: ObservableObject {
    @Published var value: Value
    @Published var error: [String]? = nil
    
    private let rules: [AnyValidationRule<Value>]
    private var cancellables = Set<AnyCancellable>()
        
    private init(_ value: Value, rules: [AnyValidationRule<Value>]) {
        self.value = value
        self.rules = rules
        setupValidation()
    }
    
    private func setupValidation() {
        $value
            .debounce(for: 0.25, scheduler: RunLoop.main)
            .removeDuplicates { lhs, rhs in
                String(describing: lhs) == String(describing: rhs)
            }
            .map { [weak self] in self?.validate($0) }
            .assign(to: \.error, on: self)
            .store(in: &cancellables)
    }

    private func validate(_ value: Value) -> [String]? {
        var errors: [String] = []
        for rule in rules {
            if let error = rule.validate(value) {
                errors.append(error)
            }
        }
        return errors.isEmpty ? nil : errors
    }
}

extension ValidatedField where Value == String {
    convenience init(_ rules: AnyValidationRule<String>...) {
        self.init("", rules: rules)
    }
}
