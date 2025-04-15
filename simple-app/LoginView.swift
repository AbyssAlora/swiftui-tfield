//
//  ContentView.swift
//  simple-app
//
//  Created by Abyss Alora on 13/04/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            PasswordInput(
                placeholder: "Password".localized,
                text: $viewModel.password.value,
                error: $viewModel.password.error,
                caption: "PasswordCaption".localized,
                label: "Password".localized,
                showPassword: false
            )
                .useInputFieldStyle(.primary)
        }
        .padding()
    }
}

#Preview("English") {
    LoginView()
}
