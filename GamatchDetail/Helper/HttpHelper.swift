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
    
    class func request(url:String, parameters: [String : AnyObject]?) {
        Alamofire.request(.POST, url, parameters: parameters, encoding: .JSON, headers: nil)
            .responseJSON { (response:Response) in
                response
        }
    }
}
