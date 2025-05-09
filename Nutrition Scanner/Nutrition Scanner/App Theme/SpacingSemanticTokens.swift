//
//  SpacingSemanticTokens.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import Foundation

public protocol SpacingSemanticTokens {
    static var p10: CGFloat { get }
    static var p12: CGFloat { get }
    static var p14: CGFloat { get }
    static var p16: CGFloat { get }
    static var p20: CGFloat { get }
    static var p24: CGFloat { get }
    static var p28: CGFloat { get }
    static var p32: CGFloat { get }
    static var p40: CGFloat { get }
    static var p48: CGFloat { get }
    static var p150: CGFloat { get }
    static var p8: CGFloat { get }
    static var p6: CGFloat { get }
    static var p4: CGFloat { get }
    static var p2: CGFloat { get }
    static var p1: CGFloat { get }
    static var p0: CGFloat { get }
}

public struct LightSpacingSemanticTokens: SpacingSemanticTokens {
    public static let p10: CGFloat = 10
    public static let p12: CGFloat = 12
    public static let p14: CGFloat = 14
    public static let p16: CGFloat = 16
    public static let p20: CGFloat = 20
    public static let p24: CGFloat = 24
    public static let p28: CGFloat = 28
    public static let p32: CGFloat = 32
    public static let p40: CGFloat = 40
    public static let p48: CGFloat = 48
    public static let p150: CGFloat = 170
    public static let p8: CGFloat = 8
    public static let p6: CGFloat = 6
    public static let p4: CGFloat = 4
    public static let p2: CGFloat = 2
    public static let p1: CGFloat = 1
    public static let p0: CGFloat = 0
}
