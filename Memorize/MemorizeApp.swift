//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 周珊 on 2021/1/2.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
