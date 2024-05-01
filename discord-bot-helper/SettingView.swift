//
//  SettingView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/30.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        ZStack {
            Color.pink
                .opacity(0.2)
                .ignoresSafeArea(edges: [.top])
            List {
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
