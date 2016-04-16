//
//  shezhi.swift
//  衣洛特
//
//  Created by __________V|R__________ on 16/2/19.
//  Copyright © 2016年 __________V|R__________. All rights reserved.
//

import Foundation
import UIKit
class shezhiView: UIView {
    
    var blackBackGround = UIButton()
    var shezhikuang = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        blackBackGround.backgroundColor = UIColor.blackColor()
        blackBackGround.alpha = 0.5
        blackBackGround.frame = CGRectMake(0, 20, self.frame.width, self.frame.height)
        blackBackGround.addTarget(self, action: "back", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(blackBackGround)
        
        shezhikuang.frame = CGRectMake(self.frame.width/3, self.frame.height, self.frame.width/3, self.frame.height/2)
        shezhikuang.image = UIImage(named: "衣洛特iOS图标/设置界面/设置中间背景.jpg")
        self.addSubview(shezhikuang)
        
        UIView.animateWithDuration(1, // 动画时长
            delay:0 ,// 动画延迟z
            usingSpringWithDamping:1.0 ,// 类似弹簧振动效果 0~1
            initialSpringVelocity:1.0 ,// 初始速度
            options:UIViewAnimationOptions.CurveEaseIn, // 动画过渡效果
            animations: {()-> Void in
                self.shezhikuang.frame = CGRectMake(self.frame.width/3, self.frame.height/4, self.frame.width/3, self.frame.height/2)
            }, completion: nil)
        
    }
    
    func back()
    {
        UIView.animateWithDuration(1, // 动画时长
            delay:0 ,// 动画延迟z
            usingSpringWithDamping:1.0 ,// 类似弹簧振动效果 0~1
            initialSpringVelocity:1.0 ,// 初始速度
            options:UIViewAnimationOptions.CurveEaseIn, // 动画过渡效果
            animations: {()-> Void in
                self.shezhikuang.frame = CGRectMake(self.frame.width/3, -self.frame.height/2, self.frame.width/3, self.frame.height/2)
            }, completion: {(finnish)-> Void in
                self.blackBackGround.removeFromSuperview()
                self.shezhikuang.removeFromSuperview()
                self.removeFromSuperview()
        })
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}

