//
//  Theme.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

struct ThemeColor {
    struct Surface {
        let xHigh: Color
        let xLow: Color
        let brand: Color
        let danger: Color
        let dangerVariant: Color
        let warning: Color
        let warningVariant: Color
    }

    struct Content {
        let onNeutralXXHigh: Color
        let onNeutralMedium: Color
        let onNeutralLow: Color
        let onNeutralDanger: Color
        let onNeutralWarning: Color
    }

    struct State {
        let hover: Color
        let focus: Color
    }
    
    let surface: Surface
    let content: Content
    let state: State
}

struct Theme {
    let color: ThemeColor
    
    let typography = Typography()
    let spacing = Spacing()
    let radius = Radius()
}

private struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .light
}

extension EnvironmentValues {
    var appTheme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

extension View {
    func useTheme(_ theme: Theme) -> some View {
        self.environment(\.appTheme, theme)
    }
}
