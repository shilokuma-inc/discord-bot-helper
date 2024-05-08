//
//  SettingView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/30.
//

import SwiftUI

struct SettingView: View {
    let appInfo = AppInfo()
    @State private var isURLSettingPresented = false
    @State private var isPrivacyPolicyPresented = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.discordGray
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
                        .disabled(true)
                    }, header: {
                        Text("送信先URL設定")
                    })

                    Section(content: {
                        Text("このアプリについて")
                            .foregroundStyle(.gray)

                        Button {
                            isPrivacyPolicyPresented = true
                        } label: {
                            HStack {
                                Text("プライバシーポリシー")
                                    .foregroundStyle(.black)

                                Spacer()

                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.gray)
                            }
                        }
                        .navigationDestination(isPresented: $isPrivacyPolicyPresented) {
                            PrivacyPolicyView()
                        }

                        Text("ライセンス")
                            .foregroundStyle(.gray)

                        HStack {
                            Text("アプリバージョン")

                            Spacer()

                            Text(appInfo.getVersion())
                                .foregroundStyle(.gray)
                        }
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
