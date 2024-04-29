//
//  SendMessageView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/17.
//

import SwiftUI

struct SendMessageView: View {
    
    @State var inputURL = ""
    @State var inputContext = ""
    private var viewModel = SendMessageViewModel()
    
    var body: some View {
        ZStack {
            Color.cyan
                .opacity(0.2)
                .ignoresSafeArea()
            VStack(spacing: .zero) {
                TextField("URLを入れてください", text: $inputURL)
                    .textFieldStyle(.capsule)
                
                Spacer()
                    .frame(height: 8.0)
                
                TextField("メッセージを入れてください", text: $inputContext)
                    .textFieldStyle(.capsule)
                    .lineLimit(0...10)
                
                Spacer()
                    .frame(height: 16.0)
                
                Button(action: {
                    viewModel.postDiscordWebhook(url: inputURL,
                                                 messageEntity: MessageEntity(
                                                    content: inputContext
                                                 )
                    )
                }, label: {
                    Text("メッセージを送信！")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .foregroundStyle(.gray)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 30.0)
                                .foregroundStyle(.ultraThickMaterial)
                                .shadow(radius: 5.0)
                        )
                })
            }
            .padding()
        }
    }
}

#Preview {
    SendMessageView()
}
