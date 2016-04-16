import UIKit
class touViewController: UIViewController {
    let 上边背景 = UIImage(named:   "衣洛特iOS图标/头像界面/个人中心图标")
    let 头像 = UIImage(named: "衣洛特iOS图标/头像界面/蓝圆")
    let 我的消息 = UIImage(named: "衣洛特iOS图标/头像界面/我的消息")
    let 我的发帖 = UIImage(named: "衣洛特iOS图标/头像界面/我的发帖")
    let 我的草稿 = UIImage(named: "衣洛特iOS图标/头像界面/我的草稿")
    let 我的收藏 = UIImage(named: "衣洛特iOS图标/头像界面/我的收藏")
    let 我的参与 = UIImage(named:"衣洛特iOS图标/头像界面/我的参与")
    let 我的洛洛币 = UIImage(named: "衣洛特iOS图标/头像界面/我的洛洛币")
    let 返回图标 = UIImage(named:"衣洛特iOS图标/头像界面/返回图标")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        var  imageBcakGround = UIImageView(frame: CGRectMake(0, 20, self.view.frame.size.width,120*高比例))
        imageBcakGround.image = 上边背景
        imageBcakGround.contentMode=UIViewContentMode.ScaleToFill
        self.view.addSubview(imageBcakGround)
        
        var bt_tou = UIButton(frame: CGRectMake(self.view.frame.width/2-40*宽比例, 30*高比例, 70*宽比例,70*高比例))
        bt_tou.backgroundColor = UIColor.blackColor()
        bt_tou.layer.cornerRadius = 35*高比例
        bt_tou.layer.masksToBounds = true
        bt_tou.setBackgroundImage(头像, forState: UIControlState.Normal)
        bt_tou.contentMode=UIViewContentMode.Center
        self.view.addSubview(bt_tou)
        
        var la_name = UILabel(frame: CGRectMake(self.view.frame.width/2-75*宽比例, 105*高比例, 150*宽比例,20*高比例))
        la_name.text = "Openrun Yiroote"
        la_name.highlighted = true
        la_name.font = UIFont.systemFontOfSize(20*宽比例)
        la_name.textColor = UIColor.whiteColor()
        la_name.textAlignment = NSTextAlignment.Center
        self.view.addSubview(la_name)
        
        var bt_guanzhu = UIButton(frame: CGRectMake(40*宽比例,50*高比例,50*宽比例,30*高比例))
        //bt_guanzhu.backgroundColor = UIColor.blackColor()
        bt_guanzhu.titleLabel?.font = UIFont.systemFontOfSize(20*宽比例)
        bt_guanzhu.titleLabel?.textAlignment = NSTextAlignment.Center
        bt_guanzhu.titleLabel!.adjustsFontSizeToFitWidth=true
        bt_guanzhu.titleLabel!.baselineAdjustment = UIBaselineAdjustment.AlignBaselines
        
        bt_guanzhu.setTitle("关注", forState: UIControlState.Normal)
        self.view.addSubview(bt_guanzhu)
        
        var la_guanzhu = UILabel(frame: CGRectMake(40*宽比例,70*高比例,50*宽比例,30*高比例))
        la_guanzhu.font = UIFont.systemFontOfSize(15)
        la_guanzhu.tintColor = UIColor.blueColor()
        la_guanzhu.text = "9999"
        la_guanzhu.textAlignment = NSTextAlignment.Center
        self.view.addSubview(la_guanzhu)
        
        var bt_fensi = UIButton(frame: CGRectMake(self.view.frame.width-(40+50)*宽比例,50*高比例,50*宽比例,30*高比例))
        //bt_guanzhu.backgroundColor = UIColor.blackColor()
        bt_fensi.titleLabel?.font = UIFont.systemFontOfSize(20*宽比例)
        bt_fensi.titleLabel?.textAlignment = NSTextAlignment.Center
        bt_fensi.titleLabel!.adjustsFontSizeToFitWidth=true
        bt_fensi.titleLabel!.baselineAdjustment = UIBaselineAdjustment.AlignBaselines
        
        bt_fensi.setTitle("粉丝", forState: UIControlState.Normal)
        self.view.addSubview(bt_fensi)
        
        var la_fensi = UILabel(frame: CGRectMake(self.view.frame.width-(40+50)*宽比例,70*高比例,50*宽比例,30*高比例))
        la_fensi.font = UIFont.systemFontOfSize(15)
        la_fensi.tintColor = UIColor.blueColor()
        la_fensi.text = "9999"
        la_fensi.textAlignment = NSTextAlignment.Center
        self.view.addSubview(la_fensi)
        
        var bt_message = UIButton(frame: CGRectMake(30*宽比例, 160*高比例, 130*宽比例,40*高比例))
        bt_message.backgroundColor = UIColor.whiteColor()
        bt_message.addTarget(self, action: "fun_我的消息", forControlEvents: UIControlEvents.TouchUpInside)
        bt_message.setBackgroundImage(我的消息, forState: UIControlState.Normal)
        self.view.addSubview(bt_message)
        
        var bt_fatie = UIButton(frame: CGRectMake(30*宽比例, 250*高比例, 130*宽比例,40*高比例))
        bt_fatie.backgroundColor = UIColor.whiteColor()
        bt_fatie.addTarget(self, action: "fun_我的发帖", forControlEvents: UIControlEvents.TouchUpInside)
        bt_fatie.setBackgroundImage(我的发帖, forState: UIControlState.Normal)
        bt_fatie.contentMode=UIViewContentMode.Bottom
        self.view.addSubview(bt_fatie)
        
        var bt_caogao = UIButton(frame: CGRectMake(30*宽比例, 340*高比例, 130*宽比例,40*高比例))
        bt_caogao.backgroundColor = UIColor.whiteColor()
        bt_caogao.addTarget(self, action: "fun_我的草稿", forControlEvents: UIControlEvents.TouchUpInside)
        bt_caogao.setBackgroundImage(我的草稿, forState: UIControlState.Normal)
        self.view.addSubview(bt_caogao)
        
        var bt_shoucang = UIButton(frame: CGRectMake(200*宽比例, 160*高比例, 130*宽比例,40*高比例))
        bt_shoucang.backgroundColor = UIColor.whiteColor()
        bt_shoucang.addTarget(self, action: "fun_我的收藏", forControlEvents: UIControlEvents.TouchUpInside)
        bt_shoucang.setBackgroundImage(我的收藏, forState: UIControlState.Normal)
        self.view.addSubview(bt_shoucang)
        
        var bt_cangyu = UIButton(frame: CGRectMake(200*宽比例, 250*高比例, 130*宽比例,40*高比例))
        bt_cangyu.backgroundColor = UIColor.whiteColor()
        bt_cangyu.addTarget(self, action: "fun_我的参与", forControlEvents: UIControlEvents.TouchUpInside)
        bt_cangyu.setBackgroundImage(我的参与, forState: UIControlState.Normal)
        self.view.addSubview(bt_cangyu)
        
        var bt_luoluobi = UIButton(frame: CGRectMake(200*宽比例, 340*高比例, 140*宽比例,40*高比例))
        bt_luoluobi.backgroundColor = UIColor.whiteColor()
        bt_luoluobi.setBackgroundImage(我的洛洛币, forState: UIControlState.Normal)
        bt_luoluobi.addTarget(self, action: "fun_我的洛洛币", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(bt_luoluobi)
        
        
        var bt_back = UIButton(frame: CGRectMake(self.view.frame.width-40*宽比例, self.view.frame.height-40*高比例, 20*宽比例,20*高比例))
        bt_back.backgroundColor = UIColor.whiteColor()
        bt_back.layer.cornerRadius = 10*高比例
        bt_back.layer.masksToBounds = true
        bt_back.setBackgroundImage(返回图标, forState: UIControlState.Normal)
        bt_back.addTarget(self, action: "back", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(bt_back)
    }
    
    func fun_我的消息()
    {
        let other = Message()
        self.presentViewController(other, animated: true, completion: nil)
    }
    
    func fun_我的发帖()
    {
        
    }
    
    func fun_我的草稿()
    {
        
    }
    
    func fun_我的收藏()
    {
        
    }
    
    func fun_我的参与()
    {
        
    }
    
    func fun_我的洛洛币()
    {
        
    }
    
    func back()
    {
        let main = MainViewController()
        self.presentViewController(main, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
