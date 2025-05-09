//
//  WeeklyStreaksData.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import Foundation

struct WeeklyStreaksData {
    struct Days {
        let name: String
        let isPassed: Bool
    }
    
    enum DateType {
        case passed
        case active
        case inactive
        case currentDay
    }
    struct Date {
        let day: Int
        let type: DateType
    }
    
    let days: [Days]
    let dates: [[WeeklyStreaksData.Date]]
}

let weeklyStreaksData: WeeklyStreaksData = .init(
    days: [
        .init(name: "M", isPassed: false),
        .init(name: "T", isPassed: true),
        .init(name: "W", isPassed: true),
        .init(name: "T", isPassed: true),
        .init(name: "F", isPassed: true),
        .init(name: "S", isPassed: true),
        .init(name: "S", isPassed: false)
    ], dates: [
        [.init(day: 30, type: .inactive),
         .init(day: 31, type: .passed),
         .init(day: 1, type: .passed),
         .init(day: 2, type: .passed),
         .init(day: 3, type: .passed),
         .init(day: 4, type: .passed),
         .init(day: 5, type: .currentDay)],
        [.init(day: 6, type: .active),
         .init(day: 7, type: .active),
         .init(day: 8, type: .active),
         .init(day: 9, type: .active),
         .init(day: 10, type: .inactive),
         .init(day: 11, type: .inactive),
         .init(day: 12, type: .inactive)]
    ])
