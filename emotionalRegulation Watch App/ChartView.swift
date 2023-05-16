//
//  ChartView.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-26.
//

import SwiftUI
import Charts
import CoreData

struct ChartView: View {
    
    @Environment(\.managedObjectContext) private var context
    
    
    var data: [FeelingLog] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "FeelingLog")
        do {
            let results = try context.fetch(request)
            return results as? [FeelingLog] ?? []
        } catch {
            print("Could not fetch. \(error)")
            return []
        }
    }
    
    
    var body: some View {

         Chart(data){
            LineMark(
                x: .value("Time", $0.timestamp ?? Date.now),
                y: .value("Feeling", $0.feeling ?? "Mood")
                )
            .foregroundStyle(by: .value("feeling", $0.feeling ?? "Mood"))
         
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
