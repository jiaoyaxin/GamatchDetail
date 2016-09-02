//
//  BaseTabBarViewController.swift
//  GamatchDetail
//
//  Created by keneng6 on 16/9/2.
//  Copyright © 2016年 焦亚鑫. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeNav     = createNavigationController(SB_HOME, image: "tabbar_home", title: "数据")
        let settingNav  = createNavigationController(SB_SETTING, image: "tabbar_setting", title: "我的")
        setViewControllers([homeNav, settingNav], animated: true)
        tabBar.tintColor = COLOR16(MAIN_COLOR)
        selectedIndex = 0
    }
    
    private func createNavigationController(vcFromeSB: String, image: String, title: String) -> BaseNavigationController {
        let sb = UIStoryboard.init(name: vcFromeSB, bundle: nil)
        let vc = sb.instantiateInitialViewController()! as? BaseViewController
        let nav = BaseNavigationController(rootViewController: vc!)
        nav.tabBarItem!.title = title
        nav.tabBarItem!.image = UIImage.init(named: image)
        nav.tabBarItem!.selectedImage = UIImage.init(named: image.stringByAppendingString("_s"))
        return nav
    }
}
