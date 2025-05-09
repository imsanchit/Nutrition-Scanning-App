//
//  ProcessingView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct ProcessingView: View {
    @Tokens var tokens
    @State private var downloadAmount = 0.0
    @State private var isSucceeded = false
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            if !isSucceeded {
                VStack(spacing: tokens.spacing.p48) {
                    ProgressView()
                    VStack(spacing: tokens.spacing.p12) {
                        Text("Scanning in Progress...")
                            .typography(tokens.typography.label.s)
                            .foregroundStyle(tokens.colors.primary.p86)
                        
                        ProgressView("Downloading…", value: downloadAmount, total: 100)
                            .onReceive(timer) { _ in
                                if downloadAmount < 100 {
                                    downloadAmount += 2
                                } else {
                                    isSucceeded = true
                                }
                            }
                            .tint(tokens.colors.secondary.sBase)
                            .frame(height: tokens.spacing.p6)
                        
                        Text("\(downloadAmount, specifier: "%.2f")%")
                            .typography(tokens.typography.label.l)
                            .foregroundStyle(tokens.colors.icon.alwaysDark)
                    }
                }
                .padding(.horizontal, tokens.spacing.p28)
            } else {
                NutritionResultsView()
            }
        }
    }
}

#Preview {
    ProcessingView()
}
