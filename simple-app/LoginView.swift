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
            PasswordField(
                placeholder: "Password",
                text: $viewModel.password.value,
                error: $viewModel.password.error,
                caption: "Password must be at least 8 characters long, contain at least one uppercase letter, number and special character.",
                label: "Password"
            )
                .useInputFieldStyle(.primary)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
