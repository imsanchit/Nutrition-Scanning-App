//
//  NutrientsChartView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI
import Charts

struct NutrientsChartView: View {
    @Tokens var tokens
    
    struct Item: Identifiable {
        let id = UUID()
        let day: String
        let nutrition: Int
    }
    
    let data: [Item] = [
        Item(day: "Su", nutrition: 250),
        Item(day: "Mo", nutrition: 350),
        Item(day: "Tu", nutrition: 450),
        Item(day: "We", nutrition: 500),
        Item(day: "Th", nutrition: 270),
        Item(day: "Fr", nutrition: 400),
        Item(day: "Sa", nutrition: 350)
    ]
    
    var body: some View {
        Chart(data) {
            BarMark(
                x: .value("Month", $0.day),
                y: .value("Visits", $0.nutrition), width: 10
            )
            .cornerRadius(tokens.spacing.p8)
            .foregroundStyle(by: .value("Value", "Nutrition"))
        }
        .chartForegroundStyleScale(["Nutrition": LinearGradient(gradient: Gradient(colors: [tokens.colors.primary.p700, tokens.colors.secondary.s700]), startPoint: .top, endPoint: .bottom)])
        .chartYAxis(.hidden)
        .frame(height: tokens.spacing.p150)
    }
}

#Preview {
    NutrientsChartView()
}
