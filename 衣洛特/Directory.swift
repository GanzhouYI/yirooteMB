//
//  Directory.swift
//  getImage
//
//  Created by __________V|R__________ on 16/4/16.
//  Copyright © 2016年 __________V|R__________. All rights reserved.
//

import Foundation
//创建文件夹，操作文件

class yirooteDirectory
{
    
    static var yirooteDir:yirooteDirectory?
    static var predicate:dispatch_once_t = 0
    
    class func shareyirooteDir() -> yirooteDirectory {
        dispatch_once(&predicate) { () -> Void in
            yirooteDir = yirooteDirectory()
            //获取数据库实例
        }
        return yirooteDir!
    }



func yirooteInitDirectory(userDir:String)//如果没有以下文件夹则创建
{
    let dongtaiDirectory:String = NSHomeDirectory() + "/Documents/yiroote/user/"+userDir+"/dongtai"
    let dynamicDirectory:String = NSHomeDirectory() + "/Documents/yiroote/user/"+userDir+"/dynamic"

    let fileManager = NSFileManager.defaultManager()
    
    if(!fileManager.fileExistsAtPath(dongtaiDirectory))//如果yiroote/user不存在
    {
        //withIntermediateDirectories为ture表示路径中间如果有不存在的文件夹都会创建
        try! fileManager.createDirectoryAtPath(dongtaiDirectory,withIntermediateDirectories: true, attributes: nil)
    }
    
    if(!fileManager.fileExistsAtPath(dynamicDirectory))//如果yiroote/tongzhi不存在
    {
        //withIntermediateDirectories为ture表示路径中间如果有不存在的文件夹都会创建
        try! fileManager.createDirectoryAtPath(dynamicDirectory,withIntermediateDirectories: true, attributes: nil)
    }
    
    print(NSHomeDirectory())
}


}
//判断是否有文件夹，没有则创建

//                                                         /Document/yiroote
//          user
//      dynamic                                tongzhi

//user
//user1 user2
//touImage,plist(用户文字信息)


//dynamic
//


//tongzhi
//