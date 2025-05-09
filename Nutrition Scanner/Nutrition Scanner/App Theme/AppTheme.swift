//
//  AppTheme.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import SwiftUI

public protocol ThemeTokens {
    static var colors: ColorSemanticTokens.Type { get }
    static var size: SizeSemanticTokens.Type { get }
    static var spacing: SpacingSemanticTokens.Type { get }
    static var typography: TypographySemanticTokens.Type { get }
}

public struct LightThemeTokens: ThemeTokens {
    public static let colors: ColorSemanticTokens.Type = LightColorSemanticTokens.self
    public static let size: SizeSemanticTokens.Type = LightSizeSemanticTokens.self
    public static let spacing: SpacingSemanticTokens.Type = LightSpacingSemanticTokens.self
    public static let typography: TypographySemanticTokens.Type = LightTypographySemanticTokens.self
}

public struct DarkThemeTokens: ThemeTokens {
    public static let colors: ColorSemanticTokens.Type = DarkColorSemanticTokens.self
    public static let size: SizeSemanticTokens.Type = LightSizeSemanticTokens.self
    public static let spacing: SpacingSemanticTokens.Type = LightSpacingSemanticTokens.self
    public static let typography: TypographySemanticTokens.Type = LightTypographySemanticTokens.self
}

