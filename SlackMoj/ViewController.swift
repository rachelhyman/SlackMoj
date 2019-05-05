//
//  ViewController.swift
//  SlackMoj
//
//  Created by Hyman, Rachel on 5/4/19.
//  Copyright © 2019 Hyman, Rachel. All rights reserved.
//

import UIKit

import SlackKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bot = SlackKit()
        let oauthConfig = OAuthConfig(clientID: "", clientSecret: "")
        bot.addServer(oauth: oauthConfig)
        bot.webAPI?.emojiList(success: { (emojis) in
            print(emojis)
        }, failure: { (error) in
            print(error)
        })
    }


}

