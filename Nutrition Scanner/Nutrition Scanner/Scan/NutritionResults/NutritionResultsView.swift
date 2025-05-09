//
//  NutritionResultsView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct NutritionResultsView: View {
    @Tokens var tokens
    var body: some View {
        ScrollView {
            VStack(spacing: tokens.spacing.p20) {
                ZStack(alignment: .bottomLeading) {
                    Icons.pizza
                        .resizable()
                        .frame(height: 268)
                    
                    Spacer()
                        .frame(height: 108)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [tokens.colors.gradient.a0,
                                                                       tokens.colors.gradient.a68,
                                                                       tokens.colors.gradient.a100]),
                                           startPoint: .top,
                                           endPoint: .bottom)
                        )
                    Text("Pepperoni Pizza")
                        .typography(tokens.typography.label.l)
                        .foregroundStyle(tokens.colors.icon.alwaysDark)
                        .padding(tokens.spacing.p20)
                }
                
                ForEach(microNutrientSections) { section in
                    NutrientSectionView(model: section)
                }
                WeaklyMealView()
                
                NavigationLink(destination: StreaksView()) {
                    Text("Save to Daily Log")
                        .typography(tokens.typography.body.l)
                        .foregroundStyle(tokens.colors.icon.alwaysDark)
                        .padding(.vertical, tokens.spacing.p12)
                        .frame(width: UIScreen.main.bounds.width-tokens.spacing.p40)
                        .background(tokens.colors.primary.p500)
                        .cornerRadius(tokens.spacing.p12)
                }
                
                HStack(spacing: tokens.spacing.p2) {
                    Text("Want more insights?")
                        .typography(tokens.typography.body.m)
                        .foregroundStyle(tokens.colors.primary.p86)
                    
                    Text("Upgrade to Premium")
                        .typography(tokens.typography.body.m)
                        .foregroundStyle(tokens.colors.icon.alwaysDark)
                        .underline()
                }
                .padding(.bottom, tokens.spacing.p20)
            }
        }
    }
}

#Preview {
    NutritionResultsView()
}
