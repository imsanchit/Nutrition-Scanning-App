//
//  MicroNutrientSection.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import Foundation
import SwiftUI

struct NutrientSection: Identifiable {
    let id: UUID = UUID()
    let title: String
    let detail: String?
    let nutrients: [MicroNutrientItem]
}

struct MicroNutrientItem: Identifiable {
    let id: UUID = UUID()
    let image: Image
    let name: String
    let amount: String
}

let microNutrientSections: [NutrientSection] = [
    .init(
        title: "Nutritional Overview:",
        detail: nil,
        nutrients: [
            .init(image: Icons.calories, name: "Calories", amount: "320 kcal")
        ]
    ),
    .init(
        title: "Macronutrients",
        detail: "Total: 60g",
        nutrients: [
            .init(image: Icons.proteins, name: "Proteins", amount: "20g"),
            .init(image: Icons.carbs, name: "Carbs", amount: "40g"),
            .init(image: Icons.fats, name: "Fats", amount: "10g")
        ]
    ),
    .init(
        title: "Micronutrients",
        detail: "Total: 30%",
        nutrients: [
            .init(image: Icons.iron, name: "Vitamin A", amount: "10%"),
            .init(image: Icons.calcium, name: "Calcium", amount: "15%")
        ]
    )
]
