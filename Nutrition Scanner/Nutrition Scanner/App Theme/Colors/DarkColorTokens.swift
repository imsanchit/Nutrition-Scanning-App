//
//  DarkColorTokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import Foundation
import SwiftUI

public struct DarkColorSemanticTokens: ColorSemanticTokens {
    public static let primary: PrimaryColorSemanticTokens.Type = DarkPrimaryColorSemanticTokens.self
    public static let secondary: SecondaryColorSemanticTokens.Type = DarkSecondaryColorSemanticTokens.self
    public static let icon: IconColorSemanticTokens.Type = DarkIconColorSemanticTokens.self
    public static let gradient: GradientColorSemanticTokens.Type = DarkGradientColorSemanticTokens.self
    public static let surface: SurfaceColorSemanticTokens.Type = DarkSurfaceColorSemanticTokens.self
}

public struct DarkIconColorSemanticTokens: IconColorSemanticTokens {
    public static let alwaysDark: Color = WhiteColorTokens.a100
}

public struct DarkPrimaryColorSemanticTokens: PrimaryColorSemanticTokens {
    public static let p50: Color = BlackColorTokens.tint29
    public static let p86: Color = BlackColorTokens.tint189
    public static let p200: Color = BrownColorTokens.tint58
    public static let p217: Color = BlackColorTokens.tint58
    public static let p400: Color = BrownColorTokens.tint114
    public static let p500: Color = OrangeColorTokens.tint191
    public static let p700: Color = OrangeColorTokens.tint178
    public static let p235: Color = BlackColorTokens.tint235
    public static let p240: Color = BlackColorTokens.tint31
}

public struct DarkSecondaryColorSemanticTokens: SecondaryColorSemanticTokens {
    public static let s100: Color = BlackColorTokens.tint26
    public static let s300: Color = GreenColorTokens.tint39
    public static let s400: Color = GreenColorTokens.tint53
    public static let s700: Color = GreenColorTokens.tint121
    public static let sBase: Color = GreenColorTokens.tint102
}

public struct DarkGradientColorSemanticTokens: GradientColorSemanticTokens {
    public static let a0: Color = BlackColorTokens.a0
    public static let a68: Color = BlackColorTokens.a68
    public static let a100: Color = BlackColorTokens.a100
    public static let a220: Color = BlueColorTokens.tint4
    public static let a229: Color = MagentaColorTokens.tint34
    public static let a230: Color = BlueColorTokens.tint230
    public static let a233: Color = BrownColorTokens.tint233
    public static let a237: Color = BlueColorTokens.tint237
    public static let a245: Color = BlueColorTokens.tint19
}

public struct DarkSurfaceColorSemanticTokens: SurfaceColorSemanticTokens {
    public static let tint237: Color = BlackColorTokens.tint38
    public static let tint246: Color = BlackColorTokens.a100
}
