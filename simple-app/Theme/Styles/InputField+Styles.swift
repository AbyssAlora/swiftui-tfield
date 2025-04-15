//
//  InputFieldStyles.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

enum InputFieldStyle {
    case `default`, primary
}

extension InputFieldStyle {
    func config(_ theme: Theme = .default) -> InputFieldStyleConfig {
        switch self {
        case .default, .primary:
            return .init(
                background: theme.color.surface.xLow,
                foreground: theme.color.content.onNeutralXXHigh,
                placeholder: theme.color.content.onNeutralLow,
                cornerRadius: theme.radius.input,
                borderColor: theme.color.surface.xHigh,
                warningColor: theme.color.surface.danger,
                borderWidth: 1,
                iconTint: theme.color.content.onNeutralMedium,
                font: theme.typography.bodyM.font
            )
        }
    }
}
