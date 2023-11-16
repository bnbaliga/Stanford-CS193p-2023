//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    
    let emojis: [String] = ["🎃","👻","🐶","🐈"]
    var body: some View {
        VStack {
            
            ForEach(0..<4, id: \.self) { index in
                CardView(IsFaceUp: true, cardContent: emojis[index])
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
