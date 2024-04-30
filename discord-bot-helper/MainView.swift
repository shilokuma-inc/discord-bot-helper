//
//  MainView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/30.
//

import SwiftUI

struct MainView: View {
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            SendMessageView()
                .tabItem {
                    Label("送信", systemImage: "paperplane.fill")
                }
                .tag(1)
            
            SettingView()
                .tabItem {
                    Label("設定", systemImage: "gear")
                }
                .tag(2)
        }
    }
}
