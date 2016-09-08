//
//  HttpHelper.swift
//  
//
//  Created by keneng6 on 16/9/5.
//
//

import UIKit
import Alamofire


class HttpHelper {
    
    class func requestGet(url:String, parameters: [String : AnyObject]?,  completionHandler: reponse:NSHTTPURLResponse -> Void) {
        Alamofire.request(.GET, url, parameters: parameters, encoding: .JSON, headers: nil)
            .responseJSON { response in
                print(response.result)
        }
    }
    
    class func requestPost(url:String, parameters: [String : AnyObject]?) {
        Alamofire.request(.POST, url, parameters: parameters, encoding: .JSON, headers: nil)
            .responseJSON { response in
                print(response.result)
        }
    }
    
}
