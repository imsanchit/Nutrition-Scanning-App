//
//  MilestoneView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct MilestoneView: View {
    @Tokens var tokens
    let milestone: MilestoneData
    
    var body: some View {
        HStack(spacing: tokens.spacing.p8) {
            milestone.icon
                .resizable()
                .frame(width: tokens.spacing.p24, height: tokens.spacing.p24)
                .padding(.leading, tokens.spacing.p12)
            
            Text(milestone.name)
                .typography(tokens.typography.body.m)
                .foregroundStyle(tokens.colors.primary.p86)
            
            Spacer()
            
            if milestone.isPassed {
                Icons.check_circle
                    .resizable()
                    .frame(width: tokens.spacing.p24, height: tokens.spacing.p24)
                    .padding(.trailing, tokens.spacing.p12)
            }
        }
        .padding(tokens.spacing.p12)
        .background(milestone.backgroundColor)
        .border(milestone.borderColor, width: tokens.spacing.p1)
    }
}

#Preview {
    MilestoneView(milestone: milestones[0])
}
