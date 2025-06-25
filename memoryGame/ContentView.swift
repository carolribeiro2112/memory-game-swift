//
//  ContentView.swift
//  memoryGame
//
//  Created by Ana Carolina  Mauro Ribeiro on 09/06/25.
//

//alternative ways of typing an array
// let emojis: Array<String> = ["👻","🎃","🕷️","😈"]
// let emojis: [String] = ["👻","🎃","🕷️","😈"]

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","🕷️","😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){index in
                CardView(content:emojis[index])
            }
        }
       
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(style: StrokeStyle(lineWidth: 2), antialiased: true)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}
