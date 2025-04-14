//
//  Theme+Styles.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

extension Theme {
    static let light = Theme(
        color: ThemeColor(
            surface: .init(
                xHigh: Color(hex: "#8C8C9A"),
                xLow: Color(hex: "#FFFFFF"),
                brand: Color(hex: "#0050FF"),
                danger: Color(hex: "#DC2828"),
                dangerVariant: Color(hex: "#FFDCDC"),
                warning: Color(hex: "#A56315"),
                warningVariant: Color(hex: "#FAF1B6")
            ),
            content: .init(
                onNeutralXXHigh: Color(hex: "#2C2C31"),
                onNeutralMedium: Color(hex: "#8C8C9A"),
                onNeutralLow: Color(hex: "#C9C9CE"),
                onNeutralDanger: Color(hex: "#DC2828"),
                onNeutralWarning: Color(hex: "#A56315")
            ),
            state: .init(
                hover: Color(hex: "#1A1A1A0F"),
                focus: Color(hex: "#1A1A1ACC")
            )
        )
    )

    static let dark = Theme.light
}
