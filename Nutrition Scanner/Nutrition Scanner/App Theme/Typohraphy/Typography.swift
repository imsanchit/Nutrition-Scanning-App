//
//  Typography.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 03/05/25.
//

import SwiftUI

public struct Typography: Hashable {
    
    // MARK: Instance Variables
    public let fontFamily: String
    public let fontSize: CGFloat
    public let fontWeight: String
    
    // MARK: - Initializers
    internal init(fontFamily: String, fontSize: CGFloat, fontWeight: String) {
        self.fontFamily = fontFamily
        self.fontSize = fontSize
        self.fontWeight = fontWeight
    }
}

public extension Typography {
    var fontComponent: Font {
        guard !isSystemFont else {
            return .system(size: fontSize, weight: weight)
        }
        return .custom(fontIdentifier, size: fontSize)
    }
}

private extension Typography {
    
    var fontIdentifier: String {
        fontFamily + "-" + fontWeight
    }
    
    var isSystemFont: Bool {
        fontFamily.lowercased() == "default"
    }
    
    var weight: Font.Weight {
        switch self.fontWeight.lowercased() {
        case "ultralight":
          return .ultraLight
        case "thin":
          return .thin
        case "light":
          return .light
        case "regular":
          return .medium
        case "medium":
          return .medium
        case "semibold":
          return .semibold
        case "bold":
          return .bold
        case "heavy":
          return .heavy
        case "black":
          return .black
        default:
          return .regular
        }
    }
}
