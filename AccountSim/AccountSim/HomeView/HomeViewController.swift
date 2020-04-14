//
//  HomeViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/04/13.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    @IBOutlet weak var 壁紙画像: UIImageView!
    
    @IBAction func 設定アイコンボタン(_ sender: Any) {
    }
    
    @IBAction func メールアイコンボタン(_ sender: Any) {
    }
    
    @IBAction func ブラウザアイコンボタン(_ sender: Any) {
        let browserViewController = UIStoryboard(name: "BrowserViewController", bundle: nil).instantiateInitialViewController()
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.fade
        view.window!.layer.add(transition, forKey: kCATransition)
        browserViewController?.modalPresentationStyle = .fullScreen
        self.present(browserViewController!, animated: false)
    }
    
    @IBAction func smartPayアイコンボタン(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
