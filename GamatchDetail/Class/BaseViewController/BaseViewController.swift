//
//  BaseViewController.swift
//  GamatchDetail
//
//  Created by keneng6 on 16/9/2.
//  Copyright © 2016年 焦亚鑫. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var navBarHidden = false;
    
    // MARK: - Push
    func pushViewController(viewController: AnyClass) {
        pushViewController(viewController, animated1: true)
    }
    
    func pushViewController(viewController: AnyClass, animated1: Bool) {
        let vc = storyboard!.instantiateViewControllerWithIdentifier(NSStringFromClass(viewController))
        vc.hidesBottomBarWhenPushed = true
        navigationController!.pushViewController(vc, animated: animated1)
    }
    
    func pushViewController(viewController: AnyClass, storyboard: String) {
        pushViewController(viewController, storyboard: storyboard, bottomBarHided: true, animated: true)
    }
    
    func pushViewController(viewController: AnyClass, storyboard: String, bottomBarHided: Bool, animated: Bool) {
        let sb = UIStoryboard.init(name: storyboard, bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier(NSStringFromClass(viewController)) as! BaseViewController
        vc.hidesBottomBarWhenPushed = bottomBarHided
        navigationController!.pushViewController(vc, animated: animated)
    }
    
    // MARK: -
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController!.setNavigationBarHidden(navBarHidden, animated: true)
    }
}
