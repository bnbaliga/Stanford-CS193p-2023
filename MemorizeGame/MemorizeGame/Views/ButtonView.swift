//
//  ButtonView.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/16/23.
//

import SwiftUI

struct ButtonView: View {
    
    @State var _cardCount: Int
    @State var _offSet: Int
    @State var _symbol: String
    
    init(cardCount: Int, offSet: Int, symbol: String)
    {
        _cardCount = cardCount
        _offSet = offSet
        _symbol = symbol
    }
    
    var body: some View {
        Button(action: {
            _cardCount += _offSet
            
        }, label: {
            Image(systemName: _symbol)
        }).imageScale(.large)
            .font(.largeTitle)
    }
}

#Preview {
    ButtonView(cardCount: 1, offSet: 1, symbol: "rectangle.stack.fill.badge.plus")
}
