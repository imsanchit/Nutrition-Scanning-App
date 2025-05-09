//
//  ColorSemanticTokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 02/05/25.
//

import SwiftUI

public protocol ColorSemanticTokens {
    static var primary: PrimaryColorSemanticTokens.Type { get }
    static var secondary: SecondaryColorSemanticTokens.Type { get }
    static var gradient: GradientColorSemanticTokens.Type { get }
    static var icon: IconColorSemanticTokens.Type { get }
    static var surface: SurfaceColorSemanticTokens.Type { get }
}

public protocol PrimaryColorSemanticTokens {
    static var p50: Color { get }
    static var p86: Color { get }
    static var p200: Color { get }
    static var p217: Color { get }
    static var p235: Color { get }
    static var p240: Color { get }
    static var p400: Color { get }
    static var p500: Color { get }
    static var p700: Color { get }
}

public protocol SecondaryColorSemanticTokens {
    static var s100: Color { get }
    static var s300: Color { get }
    static var s400: Color { get }
    static var s700: Color { get }
    static var sBase: Color { get }
}

public protocol IconColorSemanticTokens {
    static var alwaysDark: Color { get }
}

public protocol GradientColorSemanticTokens {
    static var a0: Color { get }
    static var a68: Color { get }
    static var a100: Color { get }
    static var a220: Color { get }
    static var a229: Color { get }
    static var a230: Color { get }
    static var a233: Color { get }
    static var a237: Color { get }
    static var a245: Color { get }
}

public protocol SurfaceColorSemanticTokens {
    static var tint237: Color { get }
    static var tint246: Color { get }
}
