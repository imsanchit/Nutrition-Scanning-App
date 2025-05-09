//
//  NutrientSectionView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct NutrientSectionView: View {
    @Tokens var tokens
    let model: NutrientSection
    
    private var itemSize: CGFloat {
        (UIScreen.main.bounds.width-tokens.spacing.p20*2-tokens.spacing.p12)/2
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(model.title)
                    .typography(tokens.typography.label.xs)
                    .foregroundStyle(tokens.colors.icon.alwaysDark)
                
                Spacer()
                
                if let detail = model.detail {
                    Text(detail)
                        .typography(tokens.typography.body.s)
                        .foregroundStyle(tokens.colors.primary.p86)
                }
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                      spacing: tokens.spacing.p12) {
                ForEach(model.nutrients) { item in
                    MicroNutrientView(model: item)
                        .frame(width: itemSize)
                }
            }
        }
        .padding(.horizontal, tokens.spacing.p20)
    }
}

#Preview {
    NutrientSectionView(model: microNutrientSections[1])
}
