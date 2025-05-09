//
//  HomeView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct HomeView: View {
    @Tokens var tokens
    
    var body: some View {
        VStack(alignment: .leading, spacing: tokens.spacing.p24) {
            HStack(alignment: .top) {
                Icons.user
                VStack(alignment: .leading) {
                    Text("Good Morning, Ahmed!")
                        .typography(tokens.typography.label.s)
                    Text("Track Nutrition, stay healthy!")
                        .typography(tokens.typography.body.m)
                }
            }
            VStack(spacing: tokens.spacing.p12) {
                BannerView(title: "Scan Your Food",
                           subtitle: "Instantly analyze your meal’s nutrition by scanning it.",
                           image: Icons.scan,
                           gradientColors: [tokens.colors.secondary.s100, tokens.colors.secondary.s300],
                           borderColor: tokens.colors.secondary.s400)
                BannerView(title: "Discover Healthy Recipes",
                           subtitle: "Find meals that fit your nutrition goals.",
                           image: Icons.recipes,
                           gradientColors: [tokens.colors.primary.p50, tokens.colors.primary.p200],
                           borderColor: tokens.colors.primary.p400)
            }
            HStack {
                Spacer()
                Text("More Content")
                Spacer()
            }
            .padding(.top)
            Spacer()
        }
        .padding(.horizontal, tokens.spacing.p20)
    }
}

#Preview {
    HomeView()
}
