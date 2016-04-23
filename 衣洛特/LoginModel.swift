//
//  MyNet.swift
//  衣洛特
//
//  Created by __________V|R__________ on 16/4/7.
//  Copyright © 2016年 __________V|R__________. All rights reserved.
//
import Foundation
import Alamofire
class LoginModel:NSObject {
    static var Model:LoginModel?
    static var predicate:dispatch_once_t = 0
    class func sharedLoginModel()->LoginModel?{
        
        dispatch_once(&predicate) { () -> Void in
            Model = LoginModel()
        }
        return Model
    }
    
    typealias NetworkBlock = (dataInfo:String)->Void
    
    func conNet(view:UIView,username:String,pwd:String,block:NetworkBlock?)
    {
        let urlString:String = "http://www.loveinbc.com/yiroote/login.php"
        let parameters = ["username": username,"pwd": pwd]
        print(parameters)
        MBProgressHUD.showHUDAddedTo(view, animated: true)
        
        Alamofire.request(.POST, urlString, parameters: parameters)
            .responseJSON{ response in
                print("数据")
                MBProgressHUD.hideHUDForView(view, animated: true)
                switch response.result
                {
                case .Success:
                    print("网络连接正常")
                    print(response.result.value!)
                    let str = (response.result.value!)as?String
                    
                    if(str == "用户名或密码错误")
                    {
                        print("验证错误")
                        block!(dataInfo:"用户名或密码错误")
                    }
                    else if let JSON = response.result.value as? NSArray
                    {
                        print("验证正确")
                        block!(dataInfo:"验证正确")
                        print(JSON)
                        //保存密码
                        let userDefault = NSUserDefaults.standardUserDefaults()//返回NSUserDefaults对象
                        userDefault.setObject(JSON[0], forKey: "uid")
                        userDefault.setObject(JSON[1], forKey: "username")
                        userDefault.setObject(JSON[2], forKey: "pwd")
                        userDefault.synchronize()//同步
                        
                        var infoData:[String:String]=["uid":JSON[0] as! String,
                            "username":JSON[1] as! String,
                            "pwd":JSON[2] as! String,
                            "email":JSON[3] as! String,
                            "phone":JSON[4] as! String,
                            "gender":JSON[5] as! String,
                            "intro":JSON[6] as! String,
                            "diqu":JSON[7] as! String,
                            "logo":JSON[8] as! String]
                        print("info")
                        print(infoData)
                        MySQL.shareMySQL().initUser(infoData)
                        MySQL.shareMySQL().isExitsDynamic(String(0))
                    }
                    break
                case .Failure:
                    print("网络连接错误")
                    block!(dataInfo:"网络错误")
                    break
                }
        }
        
        
    }
    
    
}

