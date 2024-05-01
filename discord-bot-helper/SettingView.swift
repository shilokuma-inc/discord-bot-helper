//
//  SettingView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/30.
//

import SwiftUI

struct SettingView: View {
    @State private var isURLSettingPresented = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pink
                    .opacity(0.2)
                    .ignoresSafeArea(edges: [.top])
                List {
                    Section(content: {
                        Button {
                            isURLSettingPresented = true
                        } label: {
                            Text("URL設定")
                        }
                        .navigationDestination(isPresented: $isURLSettingPresented) {
                            WebhookURLSettingView()
                        }
                    }, header: {
                        Text("送信先URL設定")
                    })
                    
                    Section(content: {
                        Text("このアプリについて")
                    }, header: {
                        Text("アプリ情報")
                    })
                }
                .scrollContentBackground(.hidden)
                .background(.clear)
            }
        }
    }
}
