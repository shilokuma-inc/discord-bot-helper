//
//  PrivacyPolicyView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/05/05.
//

import SwiftUI
import WebKit

struct PrivacyPolicyView: View {
    let privacyPolicyUrlString: String = "https://shilokuma-inc.github.io/iOS-Release-Sample/PrivacyPolicy/discord-bot-helper/PrivacyPolicy.html"
    
    var body: some View {
        if let privacyPolicyUrl = URL(string: privacyPolicyUrlString) {
            PrivacyPolicyWebView(url: privacyPolicyUrl)
                .navigationTitle("プライバシーポリシー")
        } else {
            EmptyView()
        }
    }
}

private struct PrivacyPolicyWebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
