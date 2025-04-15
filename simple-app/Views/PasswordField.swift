//
//  PasswordField.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

struct PasswordField: View {
    var placeholder: String
    @Binding var text: String
    @Binding var error: [String]?
    var caption: String?
    var label: String?
        
    var body: some View {
        InputField(
            placeholder: placeholder,
            text: $text,
            error: $error,
            label: label,
            caption: caption,
            isSecure: true
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PasswordField(placeholder: "Password", text: .constant(""),  error: .constant(nil))
        .padding()
}
