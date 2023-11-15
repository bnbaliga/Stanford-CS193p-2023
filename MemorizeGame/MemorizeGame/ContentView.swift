//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(IsFaceUp: true)
            CardView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
