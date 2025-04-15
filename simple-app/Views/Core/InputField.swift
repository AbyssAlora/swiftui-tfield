//
//  EntryField.swift
//  simple-app
//
//  Created by Abyss Alora on 13/04/2025.
//

import SwiftUI

struct InputFieldStyleConfig {
    let background: Color
    let foreground: Color
    let placeholder: Color
    let cornerRadius: CGFloat
    let borderColor: Color
    let warningColor: Color
    let borderWidth: CGFloat
    let iconTint: Color
    let font: Font
}

struct InputField: View {
    var placeholder: String
    @Binding var text: String
    @Binding var error: [String]?
    
    var label: String?
    var optional: Bool = false
    var caption: String?
    
    var leftIcon: String?
    
    @State var isSecure = false
    @State private var show = false
    
    @Environment(\.inputFieldStyle) private var style
    @Environment(\.appTheme) private var theme
        
    var body: some View {
        let style = self.style.config(theme)
        VStack(alignment: .leading) {
            if label != nil || optional {
                HStack {
                    if let label = label {
                        Text(label)
                            .font(theme.typography.labelM.font)
                            .foregroundColor(error == nil ? style.foreground : style.warningColor)
                    }
                    
                    if optional {
                        Text("Optional")
                            .font(theme.typography.labelS.font)
                            .foregroundColor(theme.color.content.onNeutralMedium)
                    }
                }.padding(.vertical, theme.spacing.xs)
            }
            
            HStack {
                if let leftIcon = leftIcon {
                    Image(systemName: leftIcon)
                        .foregroundColor(style.iconTint)
                        .padding(.leading, theme.spacing.m)
                }
                
                inputField
                    .font(style.font)
                    .padding(.horizontal, theme.spacing.m)
                    .padding(.vertical, theme.spacing.s)
                
                if isSecure {
                    showImage
                        .contentTransition(.symbolEffect)
                        .foregroundColor(style.iconTint)
                        .padding(.trailing, theme.spacing.m)
                        .frame(maxHeight: 24)
                        .onTapGesture {
                            self.show.toggle()
                        }
                }
            }
            .background(
                RoundedRectangle(cornerRadius: style.cornerRadius)
                    .fill(style.background)
            )
            .overlay(
                RoundedRectangle(cornerRadius: style.cornerRadius)
                    .stroke(error == nil ? style.borderColor : style.warningColor, lineWidth: style.borderWidth)
            )

            if let caption = caption {
                Text(caption)
                    .font(.caption)
                    .foregroundColor(style.foreground)
                    .padding(.vertical, theme.spacing.xs)
            }
        }
    }
    
    @ViewBuilder
    private var inputField: some View {
        if isSecure {
            ZStack {
                TextField(placeholder, text: $text)
                    .textContentType(.password)
                    .opacity(show ? 1 : 0)
                SecureField(placeholder, text: $text)
                    .textContentType(.password)
                    .opacity(show ? 0 : 1)
            }
        } else {
            TextField(placeholder, text: $text)
        }
    }
    
    @ViewBuilder
    private var showImage: some View {
        Image(systemName: show ? "eye" : "eye.slash")
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    InputField(placeholder: "Email", text: .constant(""), error: .constant(nil))
        .padding()
}
