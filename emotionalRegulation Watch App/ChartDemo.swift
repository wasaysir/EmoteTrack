//
//  ChartDemo.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-25.
//

import SwiftUI
import Charts
import CoreData

struct ChartDemo: View {
    
    struct FrequencyOfMood: Identifiable {
        var id: UUID
        
        var mood: String
        var date: Date
        var frequency: Double

        init(mood: String, day: Int, frequency: Double) {
            let calendar = Calendar.autoupdatingCurrent
            self.id = UUID()
            self.mood = mood
            self.date = calendar.date(from: DateComponents(year: 2023, month: 3, day: day))!
            self.frequency = frequency
        }
    }
    
    var data: [FrequencyOfMood] = [
        FrequencyOfMood(mood: "Happy", day: 1, frequency: 6),
        FrequencyOfMood(mood: "Sad", day: 1, frequency: 8),
        
        FrequencyOfMood(mood: "Happy", day: 2, frequency: 8),
        FrequencyOfMood(mood: "Sad", day: 2, frequency: 6),
        
        FrequencyOfMood(mood: "Happy", day: 3, frequency: 10),
        FrequencyOfMood(mood: "Sad", day: 3, frequency: 4),
        
        FrequencyOfMood(mood: "Happy", day: 4, frequency: 11),
        FrequencyOfMood(mood: "Sad", day: 4, frequency: 3),
        
        FrequencyOfMood(mood: "Happy", day: 5, frequency: 12),
        FrequencyOfMood(mood: "Sad", day: 5, frequency: 2)
    ]
    
    var body: some View {
        Chart(data) {
            LineMark(
                x: .value("Day", $0.date),
                y: .value("Frequency", $0.frequency)
                    )
                .foregroundStyle(by: .value("Mood", $0.mood))
        }
    }
}

struct ChartDemo_Previews: PreviewProvider {
    static var previews: some View {
        ChartDemo()
    }
}
