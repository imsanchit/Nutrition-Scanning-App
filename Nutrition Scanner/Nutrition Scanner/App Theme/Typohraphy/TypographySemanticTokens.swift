//
//  TypographySemanticTokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 03/05/25.
//

import Foundation

public protocol TypographySemanticTokens {
//  static var badge: BadgeTypographySemanticTokens.Type { get }
  static var body: BodyTypographySemanticTokens.Type { get }
  static var button: ButtonTypographySemanticTokens.Type { get }
//  static var display: LegoDisplayTypographySemanticTokens.Type { get }
//  static var heading: LegoHeadingTypographySemanticTokens.Type { get }
  static var label: LabelTypographySemanticTokens.Type { get }
//  static var link: LegoLinkTypographySemanticTokens.Type { get }
//  static var tag: LegoTagTypographySemanticTokens.Type { get }
}

public protocol ButtonTypographySemanticTokens {
    static var l: Typography { get }
    static var m: Typography { get }
    static var s: Typography { get }
    static var xs: Typography { get }
}

public protocol LabelTypographySemanticTokens {
    static var l: Typography { get }
    static var m: Typography { get }
    static var s: Typography { get }
    static var xs: Typography { get }
}

public protocol BodyTypographySemanticTokens {
    static var l: Typography { get }
    static var m: Typography { get }
    static var s: Typography { get }
}

public struct LightTypographySemanticTokens: TypographySemanticTokens {
    public static let button: ButtonTypographySemanticTokens.Type = LightButtonTypographySemanticTokens.self
    public static let label: LabelTypographySemanticTokens.Type = LightLabelTypographySemanticTokens.self
    public static let body: BodyTypographySemanticTokens.Type = LightBodyTypographySemanticTokens.self
}

public struct LightButtonTypographySemanticTokens: ButtonTypographySemanticTokens {
    public static let l: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p16,
        fontWeight: LightThemeTokens.size.fontWeight.bold
    )
    
    public static let m: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p14,
        fontWeight: LightThemeTokens.size.fontWeight.bold
    )
    
    public static let s: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p12,
        fontWeight: LightThemeTokens.size.fontWeight.bold
    )
    
    public static let xs: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p10,
        fontWeight: LightThemeTokens.size.fontWeight.bold
    )
}

public struct LightLabelTypographySemanticTokens: LabelTypographySemanticTokens {
    public static let l: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p24,
        fontWeight: LightThemeTokens.size.fontWeight.medium
    )
    
    public static let m: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p20,
        fontWeight: LightThemeTokens.size.fontWeight.medium
    )
    
    public static let s: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p16,
        fontWeight: LightThemeTokens.size.fontWeight.medium
    )
    
    public static let xs: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p12,
        fontWeight: LightThemeTokens.size.fontWeight.medium
    )
}

public struct LightBodyTypographySemanticTokens: BodyTypographySemanticTokens {
    public static let l: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p16,
        fontWeight: LightThemeTokens.size.fontWeight.regular
    )
    
    public static let m: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p14,
        fontWeight: LightThemeTokens.size.fontWeight.regular
    )
    
    public static let s: Typography = Typography(
        fontFamily: "Roboto",
        fontSize: LightThemeTokens.size.fontSize.p12,
        fontWeight: LightThemeTokens.size.fontWeight.regular
    )
}
