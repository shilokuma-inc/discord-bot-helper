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
                Text("このアプリについて")
            }
            .scrollContentBackground(.hidden)
            .background(.clear)
        }
    }
}
