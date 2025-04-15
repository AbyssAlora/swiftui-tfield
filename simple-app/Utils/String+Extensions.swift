//
//  String+Extensions.swift
//  simple-app
//
//  Created by Abyss Alora on 15/04/2025.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    func localized(_ arguments: any CVarArg...) -> String {
        String.localizedStringWithFormat(self.localized, arguments)
    }
}
