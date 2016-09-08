//
//  HomeViewControllerRequest.swift
//  GamatchDetail
//
//  Created by keneng6 on 16/9/6.
//  Copyright © 2016年 焦亚鑫. All rights reserved.
//

import UIKit

class HomeViewControllerRequest {
    
    class func steamCurrentPlayers() {
        HttpHelper.requestGet(UrlSteamCurrentPlayers, parameters: nil)
    }
}
