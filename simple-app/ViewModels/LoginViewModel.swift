//
//  LoginViewModel.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    @Published var password: ValidatedField
    @Published var canSubmit: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
        
    init() {
        let passwordRules = [
            MinLengthValidationRule(8).asAny(),
            SpecialCharacterValidationRule().asAny(),
            CapitalLetterValidationRule().asAny(),
            NumberCharacterValidationRule().asAny()
        ]
            
        self.password = ValidatedField(validationRules: passwordRules)
            
        setupSubmitValidation()
    }
    
    private func setupSubmitValidation() {
        password.$error
            .removeDuplicates()
            .map { passwordError in
                return passwordError == nil && !self.password.value.isEmpty
            }
            .assign(to: \.canSubmit, on: self)
            .store(in: &cancellables)
    }
}
