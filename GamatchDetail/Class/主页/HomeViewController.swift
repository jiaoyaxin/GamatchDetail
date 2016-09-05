//
//  HomeViewController.swift
//  GamatchDetail
//
//  Created by keneng6 on 16/9/2.
//  Copyright © 2016年 焦亚鑫. All rights reserved.
//

import UIKit


class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navBarHidden = true
    HttpHelper.request(UrlSteamCurrentPlayers, parameters: nil)
    }
}
