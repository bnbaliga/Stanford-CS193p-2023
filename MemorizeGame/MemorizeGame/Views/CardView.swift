//
//  CardView.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/15/23.
//

import SwiftUI

struct CardView: View {
    @State var IsFaceUp: Bool = false
    var body: some View {
        ZStack{
            
            if (IsFaceUp)
            {
                RoundedRectangle(cornerRadius: 12).fill(.orange)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👻").font(.system(size: 30))
            }
            else
            {
                RoundedRectangle(cornerRadius: 12).fill(.white).strokeBorder(lineWidth: 2)
            }
        }
        .padding().onTapGesture {
            IsFaceUp.toggle()
        }
    }
}

#Preview {
    CardView()
}
