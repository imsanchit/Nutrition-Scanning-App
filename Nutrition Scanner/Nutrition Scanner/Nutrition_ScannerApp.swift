//
//  Nutrition_ScannerApp.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

@main
struct Nutrition_ScannerApp: App {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onChange(of: colorScheme) { _, newValue in
                    AppThemeManager.shared.setTheme(newValue == .dark ? .dark : .light)
                }
        }
    }
}
