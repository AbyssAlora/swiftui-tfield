//
//  Theme+Styles.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

extension Theme {
    static let `default` = Theme(
        color: ThemeColor(
            surface: .init(
                xHigh: Color("surface.xHigh"),
                xLow: Color("surface.xLow"),
                brand: Color("surface.brand"),
                danger: Color("surface.danger"),
                dangerVariant: Color("surface.dangerVariant"),
                warning: Color("surface.warning"),
                warningVariant: Color("surface.warningVariant")
            ),
            content: .init(
                onNeutralXXHigh: Color("content.onNeutralXXHigh"),
                onNeutralMedium: Color("content.onNeutralMedium"),
                onNeutralLow: Color("content.onNeutralLow"),
                onNeutralDanger: Color("content.onNeutralDanger"),
                onNeutralWarning: Color("content.onNeutralWarning")
            ),
            state: .init(
                hover: Color("state.hover"),
                focus: Color("state.focus")
            )
        )
    )
}


struct Radius {
    let input: CGFloat = 12
}

struct Spacing {
    let xs: CGFloat = 8
    let s: CGFloat = 12
    let m: CGFloat = 16
    let l: CGFloat = 20
}

struct Typography {
    struct FontStyle {
        let font: Font
        let lineHeight: CGFloat
        let letterSpacing: CGFloat
    }

    let labelM = FontStyle(
        font: .custom("Inter", size: 16).weight(.medium),
        lineHeight: 22,
        letterSpacing: 0.16
    )

    let labelS = FontStyle(
        font: .custom("Inter", size: 14).weight(.semibold),
        lineHeight: 17,
        letterSpacing: 0.16
    )

    let bodyM = FontStyle(
        font: .custom("Inter", size: 16).weight(.regular),
        lineHeight: 22,
        letterSpacing: 0.01
    )
}
