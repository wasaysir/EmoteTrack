//
//  emotionalRegulationApp.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-14.
//

import SwiftUI
import UIKit
import CoreData

@main
struct emotionalRegulation_Watch_AppApp: App {
    let stack = CoreDataStack()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environment(\.managedObjectContext, stack.context)
            }
        }
    }
    
}

class GenSentimentType: Identifiable {
    public var id = UUID()
    var name: String
    var colour: UIColor
    
    init(name: String,
         colour: UIColor)
    {
        self.name = name
        self.colour = colour
    }
    
    init(name: String){
        self.name = name
        self.colour = UIColor(named: name) ?? UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
    }
}

class MoodType: GenSentimentType {
    var emotionList: [EmotionType] = []
    
    init(name: String,
         emotionList: [EmotionType])
    {
        super.init(name: name)
        self.emotionList = emotionList
    }
}

class EmotionType: GenSentimentType {
    var feelingList: [FeelingType] = []
    
    init(name: String,
         feelingList: [FeelingType])
    {
        super.init(name: name)
        self.feelingList = feelingList
    }
}

class FeelingType: GenSentimentType {
    init(name: String,
         parent: String)
    {
        super.init(
            name: name,
            colour: UIColor(named: parent) ?? UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0))
    }
}
