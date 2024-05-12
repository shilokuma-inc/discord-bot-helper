//
//  discord_bot_helperApp.swift
//  NinjacordApp
//
//  Created by 村石 拓海 on 2024/04/17.
//

import SwiftUI

@main
// swiftlint:disable:next type_name
struct discord_bot_helperApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
