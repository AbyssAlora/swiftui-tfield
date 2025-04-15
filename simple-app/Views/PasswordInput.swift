//
//  PasswordField.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

struct PasswordInput: View {
    var placeholder: String
    @Binding var text: String
    @Binding var error: [String]?
    var caption: String?
    var label: String?
    var showPassword: Bool = false
        
    var body: some View {
        InputField(
            placeholder: placeholder,
            text: $text,
            error: $error,
            label: label,
            caption: caption,
            showPassword: showPassword,
            isSecure: true
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PasswordInput(placeholder: "Password", text: .constant(""),  error: .constant(nil))
        .padding()
}
