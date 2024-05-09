//
//  NativeAdModel.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/05/09.
//

import GoogleMobileAds

class NativeAdModel: NSObject, ObservableObject, GADNativeAdLoaderDelegate {
    @Published var nativeAd: GADNativeAd?
    private var adLoader: GADAdLoader?

    func load(windowScene: UIWindowScene?,
              rootViewController: UIViewController?) {
        let adLoader = GADAdLoader(
            adUnitID: "ca-app-pub-7683522872696760/1379062983",
            rootViewController: rootViewController,
            adTypes: [.native],
            options: nil
        )
        self.adLoader = adLoader
        adLoader.delegate = self
        let request = GADRequest()
        request.scene = windowScene
        adLoader.load(request)
    }

    func adLoader(_ adLoader: GADAdLoader, didReceive nativeAd: GADNativeAd) {
        self.nativeAd = nativeAd
    }

    func adLoader(_ adLoader: GADAdLoader, didFailToReceiveAdWithError error: Error) {
    }
}
