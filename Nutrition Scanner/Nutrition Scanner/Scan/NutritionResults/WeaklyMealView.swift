//
//  WeaklyMealView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct WeaklyMealView: View {
    @Tokens var tokens
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly Meal Nutrition")
                .typography(tokens.typography.label.m)
                .foregroundStyle(tokens.colors.icon.alwaysDark)
            NutrientsChartView()
        }
        .padding(.vertical, tokens.spacing.p12)
        .padding(.horizontal, tokens.spacing.p16)
        .background(tokens.colors.surface.tint246)
        .border(tokens.colors.surface.tint237, width: tokens.spacing.p1)
        .padding(.horizontal, tokens.spacing.p20)
    }
}

#Preview {
    WeaklyMealView()
}
