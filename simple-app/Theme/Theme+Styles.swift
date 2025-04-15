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
