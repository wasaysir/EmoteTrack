//
//  FeelingSelect.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-24.
//

import SwiftUI
import CoreData

struct FeelingSelect: View {
    @Environment(\.managedObjectContext) private var context
    
    @State var emotion: EmotionType
    
    var body: some View {
        List {
            ForEach(emotion.feelingList) {
                feeling in
                Button(action: {
                    let newEntity = FeelingLog(context: context)
                    newEntity.feeling = feeling.name
                    newEntity.timestamp = Date()

                    do {
                        try context.save()
                    } catch {
                        print("Error saving context: \(error)")
                    }
                })
                {
                    OptionBlockView(sentiment: feeling)
                }
                .background(Color.init(feeling.colour))
            }
        }
    }
}

struct FeelingSelect_Previews: PreviewProvider {
    static var previews: some View {
        FeelingSelect(emotion:
            EmotionType(
                name: "Playful",
                feelingList: [
                    FeelingType(name: "Aroused", parent: "Playful"),
                    FeelingType(name: "Cheeky", parent: "Playful")]))
    }
}
