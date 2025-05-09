//
//  MilestoneData.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct MilestoneData: Identifiable {
    let id: UUID = UUID()
    let icon: Image
    let name: String
    let isPassed: Bool
    let backgroundColor: Color
    let borderColor: Color
}

let milestones: [MilestoneData] = .init([
    .init(icon: Icons.day7,
          name: "7-day streak achiever",
          isPassed: true,
          backgroundColor: AppThemeManager.shared.currentTheme.tokens.colors.primary.p240,
          borderColor: AppThemeManager.shared.currentTheme.tokens.colors.primary.p235),
    .init(icon: Icons.day10,
          name: "10-day streak achiever",
          isPassed: false,
          backgroundColor: AppThemeManager.shared.currentTheme.tokens.colors.gradient.a229,
          borderColor: AppThemeManager.shared.currentTheme.tokens.colors.gradient.a233),
    .init(icon: Icons.day20,
          name: "20-day streak achiever",
          isPassed: false,
          backgroundColor: AppThemeManager.shared.currentTheme.tokens.colors.gradient.a220,
          borderColor: AppThemeManager.shared.currentTheme.tokens.colors.gradient.a230),
    .init(icon: Icons.day30,
          name: "30-day streak achiever",
          isPassed: false,
          backgroundColor: AppThemeManager.shared.currentTheme.tokens.colors.gradient.a245,
          borderColor: AppThemeManager.shared.currentTheme.tokens.colors.gradient.a237)
])
