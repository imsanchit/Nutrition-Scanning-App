//
//  MicroNutrientView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct MicroNutrientView: View {
    @Tokens var tokens
    let model: MicroNutrientItem
    
    var body: some View {
        HStack {
            model.image
                .resizable()
                .frame(width: 21, height: 27)
            VStack(alignment: .leading, spacing: tokens.spacing.p2) {
                Text(model.name)
                    .typography(tokens.typography.body.m)
                    .foregroundStyle(tokens.colors.primary.p86)
                Text(model.amount)
                    .typography(tokens.typography.label.xs)
                    .foregroundStyle(tokens.colors.icon.alwaysDark)
            }
            Spacer()
        }
        .padding(tokens.spacing.p10)
        .background(tokens.colors.surface.tint246)
        .cornerRadius(tokens.spacing.p12)
    }
}

#Preview {
    MicroNutrientView(model: MicroNutrientItem(image: Icons.home, name: "Calories", amount: "20g"))
}
