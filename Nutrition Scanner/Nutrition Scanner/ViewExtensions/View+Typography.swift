//
//  View+Typography.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 03/05/25.
//

import SwiftUI

struct TypographyModifier: ViewModifier {
    let typography: Typography
    
    func body(content: Content) -> some View {
        content.font(typography.fontComponent)
    }
}


extension View {
    @ViewBuilder
    func typography(_ typography: Typography) -> some View {
        self.modifier(TypographyModifier(typography: typography))
    }
}
