//
//  ContentView.swift
//  memoryGame
//
//  Created by Ana Carolina  Mauro Ribeiro on 09/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
       
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(style: StrokeStyle(lineWidth: 2), antialiased: true)
                Text("👻").font(.largeTitle)
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
