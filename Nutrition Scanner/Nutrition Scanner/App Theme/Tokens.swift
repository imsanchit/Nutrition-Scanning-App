//
//  Tokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import SwiftUI

@propertyWrapper
public struct Tokens: DynamicProperty {
    @ObservedObject private var themeManager: AppThemeManager = .shared
    public var wrappedValue: ThemeTokens.Type {
        themeManager.currentTheme.tokens
    }
    public init() { }
}

