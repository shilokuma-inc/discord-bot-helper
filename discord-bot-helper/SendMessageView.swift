//
//  SendMessageView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/17.
//

import SwiftUI

struct SendMessageView: View {
    
    @State var inputURL = ""
    @State var inputUsername = ""
    @State var inputAvatarURL = ""
    @State var inputContext = ""
    private var viewModel = SendMessageViewModel()
    
    var body: some View {
        ZStack {
            Color.cyan
                .opacity(0.2)
                .ignoresSafeArea()
            VStack(spacing: .zero) {
                withIconTextFieldView(
                    icon: Image(systemName: "link.icloud.fill"),
                    placeholder: "URLを入れてください",
                    text: $inputURL
                )
                
                Spacer()
                    .frame(height: 8.0)
                
                withIconTextFieldView(
                    icon: Image(systemName: "rectangle.and.pencil.and.ellipsis"),
                    placeholder: "名前を入れてください",
                    text: $inputUsername
                )
                
                Spacer()
                    .frame(height: 8.0)
                
                withIconTextFieldView(
                    icon: Image(systemName: "person.crop.square"),
                    placeholder: "プロフィール画像のURLを入れてください",
                    text: $inputAvatarURL
                )
                
                Spacer()
                    .frame(height: 8.0)
                
                withIconTextFieldView(
                    icon: Image(systemName: "square.and.pencil"),
                    placeholder: "メッセージを入れてください",
                    text: $inputContext
                )
                
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

extension SendMessageView {
    private func withIconTextFieldView(icon: Image, placeholder: String, text: Binding<String>) -> some View {
        HStack{
            icon
                .foregroundStyle(.indigo)
                .frame(width: 24.0, height: 24.0)
            
            TextField(placeholder, text: text)
                .textFieldStyle(.capsule)
        }
    }
}

#Preview {
    SendMessageView()
}
