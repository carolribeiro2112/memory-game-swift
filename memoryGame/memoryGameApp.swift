//
//  memoryGameApp.swift
//  memoryGame
//
//  Created by Ana Carolina  Mauro Ribeiro on 09/06/25.
//

import SwiftUI

@main
struct memoryGameApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
