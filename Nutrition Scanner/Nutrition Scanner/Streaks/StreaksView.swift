//
//  StreaksView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct StreaksView: View {
    @Tokens var tokens
    var body: some View {
        ScrollView {
            VStack(spacing: tokens.spacing.p24) {
                VStack(spacing: tokens.spacing.p2) {
                    Icons.streak5
                        .resizable()
                        .frame(width: 95, height: 120)
                    
                    Text("You're on a")
                        .typography(tokens.typography.body.m)
                        .foregroundStyle(tokens.colors.primary.p86)
                    Text("5 days Streak!")
                        .typography(tokens.typography.label.l)
                        .foregroundStyle(tokens.colors.icon.alwaysDark)
                    Text("Keep it up!")
                        .typography(tokens.typography.body.m)
                        .foregroundStyle(tokens.colors.primary.p86)
                }
                
                WeeklyStreaksView()
                MilestoneListView()
            }
        }
    }
}

#Preview {
    StreaksView()
}
