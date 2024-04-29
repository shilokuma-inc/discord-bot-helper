//
//  Extension+TextFieldStyle.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/29.
//

import SwiftUI

struct WithIconCapsuleTextFieldStyle: TextFieldStyle {
    @FocusState private var isFocused
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack(spacing: 8) {
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                
                configuration
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 12)
            .background(.gray.opacity(0.3), in: Capsule())
            
            Button {
                isFocused = false
            } label: {
                Text("❌")
            }
            .foregroundStyle(.primary)
        }
    }
}

extension TextFieldStyle where Self == WithIconCapsuleTextFieldStyle {
    static var withIconCapsule: WithIconCapsuleTextFieldStyle {
        .init()
    }
}
