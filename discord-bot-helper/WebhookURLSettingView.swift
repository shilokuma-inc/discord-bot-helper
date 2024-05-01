//
//  WebhookURLSettingView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/05/01.
//

import SwiftUI

struct WebhookURLSettingView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color.pink
                .opacity(0.2)
                .ignoresSafeArea(edges: [.top])
            VStack {
                Text("URL設定")
                Button(action: {
                    dismiss()
                }) {
                    Text("設定完了")
                }
            }
        }
    }
}
