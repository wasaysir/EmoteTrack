//
//  EmotionSelect.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-24.
//

import SwiftUI
import CoreData


struct EmotionSelect: View {
    @Environment(\.managedObjectContext) private var context
    
    @State var mood: MoodType
    
    var body: some View {
        List {
            ForEach(mood.emotionList) {
                emotion in
                NavigationLink(destination: FeelingSelect(emotion: emotion)
                    .environment(\.managedObjectContext, context)
                ){
                    OptionBlockView(sentiment: emotion)
                }
                .background(Color.init(emotion.colour))
            }
        }
    }
}

struct EmotionSelect_Previews: PreviewProvider {
    static var previews: some View {
        EmotionSelect(mood:
                        MoodType(
                            name: "Happy",
                            emotionList: [
                                EmotionType(
                                    name: "Playful",
                                    feelingList: [
                                        FeelingType(name: "Aroused", parent: "Playful"),
                                        FeelingType(name: "Cheeky", parent: "Playful")]),
                                EmotionType(
                                    name: "Content",
                                    feelingList: [
                                        FeelingType(name: "Free", parent: "Content"),
                                        FeelingType(name: "Joyful", parent: "Content")])]))
    }
}
