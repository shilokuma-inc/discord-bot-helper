//
//  FirebaseAnalytics.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/05/05.
//

import FirebaseAnalytics

final class FirebaseAnalytics {
    func sendAnalyticsScreen(screenName: String) {
        Analytics.logEvent(
            AnalyticsEventScreenView,
            parameters: [
                AnalyticsParameterScreenName: screenName
            ]
        )
    }
}
