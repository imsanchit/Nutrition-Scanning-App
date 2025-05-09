//
//  AppThemeManager.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import Foundation
import SwiftUI

public class AppThemeManager: ObservableObject {
    
    public enum Theme: String, Identifiable, CaseIterable {
        case dark
        case light
        
        var tokens: ThemeTokens.Type {
            switch self {
            case .dark:
                return DarkThemeTokens.self
            case .light:
                return LightThemeTokens.self
            }
        }
        
        public var id: String {
            return self.rawValue
        }
    }
    
    private init() { }
    public static let shared = AppThemeManager()
    
    @Published public private(set) var currentTheme: Theme = UIScreen.main.traitCollection.userInterfaceStyle == .dark ? .dark : .light
    
    public func setTheme(_ theme: Theme) {
        Self.shared.currentTheme = theme
    }
}
