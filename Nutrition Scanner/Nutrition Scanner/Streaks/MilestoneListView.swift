//
//  MilestoneListView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct MilestoneListView: View {
    @Tokens var tokens
    var body: some View {
        VStack(spacing: tokens.spacing.p12) {
            HStack {
                Text("Milestones")
                    .typography(tokens.typography.label.l)
                    .foregroundStyle(tokens.colors.icon.alwaysDark)
                
                Spacer()
                
                HStack(spacing: tokens.spacing.p1) {
                    Text("View All")
                        .typography(tokens.typography.body.m)
                        .foregroundStyle(tokens.colors.primary.p86)
                    Icons.arrow_right
                        .resizable()
                        .frame(width: tokens.spacing.p20, height: tokens.spacing.p20)
                }
                
            }
            
            ForEach(milestones) { milestone in
                MilestoneView(milestone: milestone)
            }
        }
        .padding(.horizontal, tokens.spacing.p20)
    }
}

#Preview {
    MilestoneListView()
}
