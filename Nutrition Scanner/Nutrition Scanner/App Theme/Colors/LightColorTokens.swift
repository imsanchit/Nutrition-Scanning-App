//
//  LightColorTokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import Foundation
import SwiftUI

public struct LightColorSemanticTokens: ColorSemanticTokens {
    public static let primary: PrimaryColorSemanticTokens.Type = LightPrimaryColorSemanticTokens.self
    public static let secondary: SecondaryColorSemanticTokens.Type = LightSecondaryColorSemanticTokens.self
    public static let icon: IconColorSemanticTokens.Type = LightIconColorSemanticTokens.self
    public static let gradient: GradientColorSemanticTokens.Type = LightGradientColorSemanticTokens.self
    public static let surface: SurfaceColorSemanticTokens.Type = LightSurfaceColorSemanticTokens.self
}

public struct LightIconColorSemanticTokens: IconColorSemanticTokens {
    public static let alwaysDark: Color = BlackColorTokens.tint20
}

public struct LightPrimaryColorSemanticTokens: PrimaryColorSemanticTokens {
    public static let p50: Color = BrownColorTokens.tint252
    public static let p86: Color = BlackColorTokens.tint86
    public static let p200: Color = BrownColorTokens.tint241
    public static let p217: Color = BlackColorTokens.tint217
    public static let p400: Color = BrownColorTokens.tint220
    public static let p500: Color = OrangeColorTokens.tint191
    public static let p700: Color = OrangeColorTokens.tint226
    public static let p235: Color = BlackColorTokens.tint235
    public static let p240: Color = BlackColorTokens.tint240
}

public struct LightSecondaryColorSemanticTokens: SecondaryColorSemanticTokens {
    public static let s100: Color = GreenColorTokens.tint243
    public static let s300: Color = GreenColorTokens.tint218
    public static let s400: Color = GreenColorTokens.tint194
    public static let s700: Color = GreenColorTokens.tint92
    public static let sBase: Color = GreenColorTokens.tint102
}

public struct LightGradientColorSemanticTokens: GradientColorSemanticTokens {
    public static let a0: Color = WhiteColorTokens.a0
    public static let a68: Color = WhiteColorTokens.a68
    public static let a100: Color = WhiteColorTokens.a100
    public static let a220: Color = BlueColorTokens.tint220
    public static let a229: Color = BrownColorTokens.tint229
    public static let a230: Color = BlueColorTokens.tint230
    public static let a233: Color = BrownColorTokens.tint233
    public static let a237: Color = BlueColorTokens.tint237
    public static let a245: Color = BlueColorTokens.tint245
}

public struct LightSurfaceColorSemanticTokens: SurfaceColorSemanticTokens {
    public static let tint237: Color = WhiteColorTokens.tint237
    public static let tint246: Color = WhiteColorTokens.tint246
}
