//
//  ContentView.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-14.
//

import SwiftUI
import CoreData

struct SelectView: View {
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        List {
            ForEach(emotionCategories.moodList) {
                mood in
                NavigationLink(destination: EmotionSelect(mood: mood)
                    .environment(\.managedObjectContext, context)
                )
                {
                    OptionBlockView(sentiment: mood)
                }
                .background(Color.init(mood.colour))
            }
        }
    }
}
    
struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
    }
}


