//
//  LicenseView.swift
//  NinjacordApp
//
//  Created by 村石 拓海 on 2024/05/19.
//

import SwiftUI
import LicenseList

struct LicenseView: View {
    var body: some View {
        ZStack {
            Color.discordDarkGray
                .ignoresSafeArea(edges: [.top])
            List(Library.libraries, id: \.name) { library in
                Text(library.name)
                    .listRowBackground(Color.discordGray)
                    .foregroundStyle(.white)
            }
            .scrollContentBackground(.hidden)
            .background(.clear)
        }
    }
}

#Preview {
    LicenseView()
}
