//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    
    let emojis: [String] = ["🎃","👻","🐶","🐈", "🐶", "🐶", "🎃","👻","🐶","🐈", "🐶", "🐶", "🎃","👻","🐶","🐈", "🐶", "🐶", "🎃","👻","🐶","🐈", "🐶", "🐶", "🎃","👻","🐶","🐈", "🐶", "🐶"]
    
    @State var cardCount = 4
    
    var body: some View {
        
        
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    
                    ForEach(0..<cardCount, id: \.self) { index in
                        CardView(IsFaceUp: true, cardContent: emojis[index])
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            Spacer()
            HStack {
                cardCountAdjuster(offSet: -1, symbol: "rectangle.stack.fill.badge.minus")
                Spacer()
                cardCountAdjuster(offSet: 1, symbol: "rectangle.stack.fill.badge.plus")
            }
        }
        .padding()
        
    }
    
    func cardCountAdjuster(offSet: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offSet
        }, label: {
            Image(systemName: symbol)
        }).imageScale(.large)
            .font(.largeTitle)
            .disabled(cardCount + offSet < 1 || cardCount + offSet > emojis.count)
    }
}

#Preview {
    ContentView()
}
