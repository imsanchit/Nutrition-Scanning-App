//
//  SizeSemanticTokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import Foundation

public protocol SizeSemanticTokens {
    static var fontSize: FontSizeSemanticTokens.Type { get }
    static var fontWeight: FontWeightSemanticTokens.Type { get }
}

public protocol FontSizeSemanticTokens {
    static var p10: CGFloat { get }
    static var p12: CGFloat { get }
    static var p14: CGFloat { get }
    static var p16: CGFloat { get }
    static var p20: CGFloat { get }
    static var p24: CGFloat { get }
    static var p32: CGFloat { get }
    static var p40: CGFloat { get }
    static var p8: CGFloat { get }
}

public protocol FontWeightSemanticTokens {
    static var bold: String { get }
    static var medium: String { get }
    static var regular: String { get }
}

public struct LightSizeSemanticTokens: SizeSemanticTokens {
    static public let fontSize: FontSizeSemanticTokens.Type = LightFontSizeSemanticTokens.self
    static public let fontWeight: FontWeightSemanticTokens.Type = LightFontWeightSemanticTokens.self
}

public struct LightFontSizeSemanticTokens: FontSizeSemanticTokens {
    public static let p10: CGFloat = 10
    public static let p12: CGFloat = 12
    public static let p14: CGFloat = 14
    public static let p16: CGFloat = 16
    public static let p20: CGFloat = 20
    public static let p24: CGFloat = 24
    public static let p32: CGFloat = 32
    public static let p40: CGFloat = 40
    public static let p8: CGFloat = 8
}

public struct LightFontWeightSemanticTokens: FontWeightSemanticTokens {
    public static let bold: String = "Bold"
    public static let medium: String = "Medium"
    public static let regular: String = "Regular"
}
