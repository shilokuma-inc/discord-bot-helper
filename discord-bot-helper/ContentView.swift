//
//  ContentView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputURL = ""
    @State var inputContext = ""
    private var viewModel = SendMessageViewModel()
    
    var body: some View {
        VStack {
            TextField("URLを入れてください", text: $inputURL)
                .textFieldStyle(.roundedBorder)
            TextField("メッセージを入れてください", text: $inputContext)
                .textFieldStyle(.roundedBorder)
            Button(action: {
                viewModel.postDiscordWebhook(url: inputURL,
                                             messageEntity: MessageEntity(
                                                content: inputContext
                                             )
                )
            }, label: {
                Text("Send")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
