//
//  MainViewController.swift
//  衣洛特
//
//  Created by __________V|R__________ on 16/3/20.
//  Copyright © 2016年 __________V|R__________. All rights reserved.
//

import Foundation
import UIKit

extension  MainViewController{
    //==========SecondTableView===========下面====================
    
    func setupSecondTable()
    {
        self.Secondtable = SecondTableView(frame:CGRectMake(self.view.frame.width, 20+60*高比例, self.view.frame.width, self.view.frame.height - 130*高比例))
        print("ViewController")
        print(self.view.frame)
        //创建一个重用的单元格
        self.Secondtable!.registerClass(SecondTableViewCell.self, forCellReuseIdentifier: "MsgCell")
        for i in 0...3
        {
            var num:Int = i
            var temp = SecondTableMessageItem( num: num,Pic: Pic[i],biaoqian1: biaoqian1[i],Detail: Detail[i],biaoqian2: biaoqian2[i])
            SecondtableData.append(temp)
        }
        
        self.Secondtable.SecondDataProtocol = self
        self.Secondtable.reloadData()
        
        BG_ScrollView.addSubview(self.Secondtable)
    }
    
    func rowsForSeoncdTable(tableView:SecondTableView) -> Int
    {
        return self.SecondtableData.count
    }
    
    func SecondTableViewDetail(tableView:SecondTableView, dataForRow row:Int) -> SecondTableMessageItem
    {
        return SecondtableData[row]
    }
    //==========SecondTableView===========上面====================
    
    
    func setupFirstTable()
    {
        self.Firsttable = FirstTableView(frame:CGRectMake(0
            , 20+60*高比例, self.view.frame.width, 604*高比例))

        //创建一个重用的单元格
        self.Firsttable!.registerClass(FirstTableViewCell.self, forCellReuseIdentifier: "MsgCell")
        
        for i in 0...3
        {
            var num:Int = i
            var temp = FirstTableMessageItem(num: num,FirstTableImage: FirstTableImage[i],FirstTablebiaoqian: FirstTablebiaoqian[i],FirstTableTitle: FirstTableTitle[i],FirstTableDetail: FirstTableDetail[i],FirstTable_yanjin_Num: FirstTable_yanjin_Num[i],FirstTable_pinglun_Num: FirstTable_pinglun_Num[i])
            FirsttableData.append(temp)
        }
        self.Firsttable.FirstDataProtocol = self
        self.Firsttable.reloadData()
        
        BG_ScrollView.addSubview(self.Firsttable)
    }
    
    func rowsForFirstTable(tableView:FirstTableView) -> Int
    {
        return self.FirsttableData.count
    }
    
    func FirstTableViewDetail(tableView:FirstTableView, dataForRow row:Int) -> FirstTableMessageItem
    {
        return FirsttableData[row]
    }
    //==========FirstTableView===============上面===================
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        //BG_PageControl滑动结束更换seg图片
        let index = Int(scrollView.contentOffset.x/self.view.frame.size.width)
        initSeg()
        if index == 1
        {
            dian.frame = CGRectMake(195*宽比例,20+40*高比例,5*宽比例,5*高比例)
            self.seg_2.setBackgroundImage(推荐, forState: UIControlState.Normal)
        }
        else if index == 2
        {
            dian.frame = CGRectMake(295*宽比例,20+40*高比例,5,5*高比例)
            self.seg_3.setBackgroundImage(广场, forState: UIControlState.Normal)
        }
        else
        {
            dian.frame = CGRectMake(105*宽比例,20+40*高比例,5*宽比例,5*高比例)
            self.seg_1.setBackgroundImage(资讯, forState: UIControlState.Normal)
        }
        
    }
    
    func initSeg()
    {
        self.seg_1.setBackgroundImage(资讯_未, forState: UIControlState.Normal)
        self.seg_2.setBackgroundImage(推荐_未, forState: UIControlState.Normal)
        self.seg_3.setBackgroundImage(广场_未, forState: UIControlState.Normal)
    }
    
    //点击seg图片，BG_PageControl调到seg指定位置
    func segClick(seg:UIButton)
    {
        initSeg()
        switch(seg.titleLabel!.text!)
        {
        case "seg_1":
            dian.frame = CGRectMake(105*宽比例,20+40*高比例,5*宽比例,5*高比例)
            self.seg_1.setBackgroundImage(资讯, forState: UIControlState.Normal)
            BG_ScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
            break
        case "seg_2":
            dian.frame = CGRectMake(195*宽比例,20+40*高比例,5,5*高比例)
            self.seg_2.setBackgroundImage(推荐, forState: UIControlState.Normal)
            BG_ScrollView.setContentOffset(CGPointMake(BG_ScrollView.frame.size.width, 0), animated: true)
            break
        case "seg_3":
            dian.frame = CGRectMake(295*宽比例,20+40*高比例,5*宽比例,5*高比例)
            self.seg_3.setBackgroundImage(广场, forState: UIControlState.Normal)
            BG_ScrollView.setContentOffset(CGPointMake(BG_ScrollView.frame.size.width*2, 0), animated: true)
            break
        default:
            break
        }
    }
    
    //底部按钮，跳转到指定功能
    func tail_segClick(seg:UIButton)
    {
        switch(seg.titleLabel!.text!)
        {
        case "摄像":
            let nav = UINavigationController(rootViewController: shexiangController())
            //self.window?.rootViewController=nav
            self.presentViewController(nav, animated: true, completion: nil)
            break
            
        default:
            break
        }
    }
    
    
    func 设置()
    {
        let begin = shezhiView(frame:self.view.frame)
        self.view.addSubview(begin)
    }
    
    func touClick()
    {
        let reg=touViewController()
        self.presentViewController(reg, animated: true, completion: nil)
        
    }
    
        
    /** Second_ScrollViewDelegate*/
    func Second_numberOfPages() -> Int {
        
        return Second_imageArray.count;
    }
    func Second_currentPageViewIndex(index: Int) -> String {
        
        return Second_imageArray[index]
    }
    func Second_didSelectCurrentPage(index: Int) {
        
        
    }
    
    func 关注(btn:UIButton)
    {
        是否关注 = !是否关注
        if 是否关注 == true
        {
            btn.backgroundColor = UIColor.redColor()
        }
        else
        {
            btn.backgroundColor = UIColor.grayColor()
        }
    }
    

}