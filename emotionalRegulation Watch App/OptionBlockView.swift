//
//  OptionBlockView.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-24.
//

import SwiftUI

struct OptionBlockView: View {
    let sentiment: GenSentimentType

    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
              HStack(alignment: .top) {
                // The workout symbol
                Image(systemName: "face.smiling")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 96, height: 40, alignment: .leading)
                  .foregroundColor(.white)
                Spacer()
              }
              // The name of the workout
              Text(sentiment.name)
                .foregroundColor(.white)
            }
            .background(Color.init(sentiment.colour))
            .padding(16)
            
    }
}

struct OptionBlockView_Previews: PreviewProvider {
    
    static var previews: some View {
        OptionBlockView(sentiment: GenSentimentType(
            name: "Happy",
            colour: UIColor(named: "Happy") ?? UIColor(red: 255.0, green: 0.0, blue: 0.0, alpha: 0.0)
        ))
    }
}
