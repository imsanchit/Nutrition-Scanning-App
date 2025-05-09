//
//  WeeklyStreaksView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct WeeklyStreaksView: View {
    @Tokens var tokens
    let data: WeeklyStreaksData = weeklyStreaksData
    
    var body: some View {
        VStack {
            HStack(spacing: tokens.spacing.p16) {
                ForEach(data.days, id: \.name) { day in
                    Text(day.name)
                        .typography(tokens.typography.body.m)
                        .foregroundColor(day.isPassed ? tokens.colors.secondary.s700 : tokens.colors.primary.p86)
                        .frame(width: tokens.spacing.p28, height: tokens.spacing.p28)
                }
            }
            
            VStack {
                ForEach(0..<data.dates.count, id: \.self) { index in
                    HStack(spacing: tokens.spacing.p16) {
                        ForEach(data.dates[index], id: \.day) { day in
                            getDayView(day)
                                .frame(width: tokens.spacing.p28, height: tokens.spacing.p28)
                        }
                    }
                }
            }
        }
        .padding(.vertical, tokens.spacing.p12)
        .padding(.horizontal, tokens.spacing.p24)
        .cornerRadius(tokens.spacing.p16)
        .border(tokens.colors.surface.tint237, width: tokens.spacing.p1)
    }
    
    @ViewBuilder
    func getDayView(_ day: WeeklyStreaksData.Date) -> some View {
        switch day.type {
        case .passed:
            Icons.day_streak
                .resizable()
        case .active:
            Text("\(day.day)")
                .typography(tokens.typography.body.m)
                .foregroundColor(tokens.colors.icon.alwaysDark)
        case .currentDay:
            Text("\(day.day)")
                .typography(tokens.typography.body.m)
                .padding(tokens.spacing.p6)
                .foregroundColor(tokens.colors.icon.alwaysDark)
                .background(tokens.colors.surface.tint246)
                .border(tokens.colors.surface.tint237, width: tokens.spacing.p1)
                .cornerRadius(tokens.spacing.p24)
        case .inactive:
            Text("\(day.day)")
                .typography(tokens.typography.body.m)
                .foregroundColor(tokens.colors.primary.p217)
        }
    }
}

#Preview {
    WeeklyStreaksView()
}
