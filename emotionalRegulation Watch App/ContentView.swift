//
//  ContentView.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-26.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        TabView {
            SelectView()
                .tabItem{
                    Label("Select",
                        systemImage: "circle")
                }
                .environment(\.managedObjectContext, context)
            ChartView()
                .tabItem{
                    Label("History",
                            systemImage: "circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
