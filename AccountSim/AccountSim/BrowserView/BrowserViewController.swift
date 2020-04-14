//
//  BrowserViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/04/13.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var containerView: UIView! //webページの画面
    var webView: WKWebView!
    
    var topPadding: CGFloat = 0
    @IBOutlet weak var 戻る: UIBarButtonItem!
    @IBOutlet weak var 進む: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // webページ表示の実装 参照:https://i-app-tec.com/ios/web-browser.html //
        
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
        if #available(iOS 11.0, *) {
            // 'keyWindow' was deprecated in iOS 13.0: Should not be used for applications
            let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            topPadding = window!.safeAreaInsets.top
        }
        
        let rect = CGRect(x: 0,
                          y: topPadding,
                          width: screenWidth,
                          height: screenHeight - topPadding)
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: rect, configuration: webConfiguration)
        
        let webUrl = URL(string: "https://www.google.co.jp")!
        let myRequest = URLRequest(url: webUrl)
        webView.load(myRequest)
        
        webView.uiDelegate = self
        containerView.addSubview(webView)
        
        webView.allowsBackForwardNavigationGestures = true
    }

    @IBAction func 戻るボタン(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func 進むボタン(_ sender: Any) {
        webView.goForward()
    }
}
