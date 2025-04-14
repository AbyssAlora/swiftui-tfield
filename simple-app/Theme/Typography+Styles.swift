//
//  Typography+Styles.swift
//  simple-app
//
//  Created by Abyss Alora on 14/04/2025.
//

import SwiftUI

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
