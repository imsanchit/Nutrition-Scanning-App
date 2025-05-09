//
//  BannerView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal1 on 09/05/25.
//

import SwiftUI

struct BannerView: View {
    @Tokens var tokens
    
    let title: String
    let subtitle: String
    let image: Image
    let gradientColors: [Color]
    let borderColor: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: tokens.spacing.p0) {
            VStack(alignment: .leading, spacing: tokens.spacing.p4) {
                Text(title)
                    .typography(tokens.typography.label.s)
                    .foregroundStyle(tokens.colors.icon.alwaysDark)
                Text(subtitle)
                    .typography(tokens.typography.body.m)
                    .foregroundStyle(tokens.colors.primary.p86)
            }
            .padding(.leading, tokens.spacing.p16)
            Spacer()
            image
        }
        .background(
            RadialGradient(colors: gradientColors,
                           center: .center,
                           startRadius: tokens.spacing.p10,
                           endRadius: 100)
            )
        .border(borderColor, width: tokens.spacing.p1)
        .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: tokens.spacing.p12,
                                                           bottomLeading: tokens.spacing.p12,
                                                           bottomTrailing: tokens.spacing.p12,
                                                           topTrailing: tokens.spacing.p12)))
    }
}

#Preview {
    @Tokens var tokens
    BannerView(title: "Good Morning, Ahmed!",
               subtitle: "Track Nutrition, stay healthy!",
               image: Icons.scan,
               gradientColors: [tokens.colors.secondary.s100, tokens.colors.secondary.s300],
               borderColor: tokens.colors.secondary.s400)
}
