//
//  InputFieldStyles+Environment.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

private struct InputFieldStyleKey: EnvironmentKey {
    static let defaultValue: InputFieldStyle = .default
}

extension EnvironmentValues {
    var inputFieldStyle: InputFieldStyle {
        get { self[InputFieldStyleKey.self] }
        set { self[InputFieldStyleKey.self] = newValue }
    }
}

extension View {
    func useInputFieldStyle(_ style: InputFieldStyle) -> some View {
        self.environment(\.inputFieldStyle, style)
    }
}
