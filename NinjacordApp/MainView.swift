//
//  MainView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/30.
//

import SwiftUI

struct MainView: View {
    let analytics = FirebaseAnalytics()
    @State var selection = 1

    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.discordLightGray)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.discordSuperLightGray)
    }

    var body: some View {
        TabView(selection: $selection) {
            SendMessageView()
                .tabItem {
                    Label("送信", systemImage: "paperplane.fill")
                }
                .tag(1)
                .onAppear {
                    analytics.sendAnalyticsScreen(screenName: "SendMessageView")
                }

            SettingView()
                .tabItem {
                    Label("設定", systemImage: "gear")
                }
                .tag(2)
                .onAppear {
                    analytics.sendAnalyticsScreen(screenName: "SettingView")
                }
        }
        .accentColor(.discordPurple)
    }
}
