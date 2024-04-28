//
//  ContentView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/17.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    
    @State var inputName = ""
    private var viewModel = SendMessageViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            TextField("URLを入れてください", text: $inputName)
            Button(action: {
                viewModel.postDiscordWebhook(url: inputName)
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
