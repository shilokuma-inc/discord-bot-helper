//
//  ViewController.swift
//  AccountSim
//
//  Created by Takumi Muraishi on 2020/04/07.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

public var 練習モード: Int = 0

class ViewController: UIViewController {
    let homeViewController = UIStoryboard(name: "HomeViewController", bundle: nil).instantiateInitialViewController()
    
    @IBOutlet weak var 新規登録の練習ボタン: UIButton!
    @IBOutlet weak var ログインの練習ボタン: UIButton!
    @IBOutlet weak var パスワードを忘れた時の練習ボタン: UIButton!
    @IBOutlet weak var 初めから自分で練習ボタン: UIButton!
    
    @IBAction func 新規登録の練習関数(_ sender: Any) {
        練習モード = 1
        print(練習モード)
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        view.window!.layer.add(transition, forKey: kCATransition)
        homeViewController?.modalPresentationStyle = .fullScreen
        self.present(homeViewController!, animated: false)
    }
    @IBAction func ログインの練習関数(_ sender: Any) {
        練習モード = 2
        print(練習モード)
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        view.window!.layer.add(transition, forKey: kCATransition)
        homeViewController?.modalPresentationStyle = .fullScreen
        self.present(homeViewController!, animated: false)
    }
    @IBAction func パスワードを忘れた時の練習関数(_ sender: Any) {
        練習モード = 3
        print(練習モード)
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        view.window!.layer.add(transition, forKey: kCATransition)
        homeViewController?.modalPresentationStyle = .fullScreen
        self.present(homeViewController!, animated: false)
    }
    @IBAction func 初めから自分で練習関数(_ sender: Any) {
        練習モード = 4
        print(練習モード)
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        view.window!.layer.add(transition, forKey: kCATransition)
        homeViewController?.modalPresentationStyle = .fullScreen
        self.present(homeViewController!, animated: false)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

