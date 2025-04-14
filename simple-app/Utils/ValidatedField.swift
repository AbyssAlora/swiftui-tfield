//
//  ValidatedField.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI
import Combine

class ValidatedField: ObservableObject {
    @Published var value: String = ""
    @Published var error: String? = nil
    
    private var cancellables = Set<AnyCancellable>()
    private let validationRules: [AnyValidationRule<String>]
    
    init(validationRules: [AnyValidationRule<String>]) {
        self.validationRules = validationRules
        setupValidation()
    }
    
    private func setupValidation() {
        $value
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .removeDuplicates()
            .map { [weak self] in self?.validate($0) }
            .assign(to: \.error, on: self)
            .store(in: &cancellables)
    }
    
    private func validate(_ value: String) -> String? {
        for rule in validationRules {
            if let error = rule.validate(value) {
                return error
            }
        }
        return nil
    }
}
