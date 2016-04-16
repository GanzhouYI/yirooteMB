
import UIKit

class FirstTableViewCell:UITableViewCell
{

    var FirstTableImage:UIButton?
    var FirstTablebiaoqian:UIButton?
    var FirstTableTitle:UILabel?
    var FirstTableDetail:UITextView?
    var FirstTable_yanjin_Image:UIButton?
    var FirstTable_yanjin_Num:UILabel?
    var FirstTable_pinglun_Image:UIButton?
    var FirstTable_pinglun_Num:UILabel?
    
    var msgItem:FirstTableMessageItem!//总体信息对象
    //- (void) setupInternalData
    init(frame:CGRect,data:FirstTableMessageItem, reuseIdentifier cellId:String)
    {
        self.msgItem = data
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier:cellId)
        self.backgroundColor = UIColor.whiteColor()
        self.frame = frame
        rebuildUserInterface()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func rebuildUserInterface()
    {
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        self.FirstTableImage = UIButton(frame:CGRectMake(5,40,110,90))
        self.FirstTableImage?.setBackgroundImage(self.msgItem.FirstTableImage, forState: UIControlState.Normal)
        self.addSubview(self.FirstTableImage!)
        
        self.FirstTablebiaoqian = UIButton(frame: CGRectMake(0,5,self.frame.width-5,28))
        self.FirstTablebiaoqian?.setBackgroundImage(self.msgItem.FirstTablebiaoqian, forState: UIControlState.Normal)
        self.addSubview(self.FirstTablebiaoqian!)
        
        self.FirstTableTitle = UILabel(frame: CGRectMake(125,32,self.frame.width-125,25))
        self.FirstTableTitle!.adjustsFontSizeToFitWidth = false//如果标题文字超过了宽度自动调整字体大小适应，false不开启
        self.FirstTableTitle?.font = UIFont.systemFontOfSize(20)
        self.FirstTableTitle?.text = self.msgItem.FirstTableTitle
        self.FirstTableTitle?.textAlignment = NSTextAlignment.Left
        self.addSubview(self.FirstTableTitle!)
        
        self.FirstTableDetail = UITextView(frame: CGRectMake(140,57,self.frame.width-140,45))
        self.FirstTableDetail?.text = self.msgItem.FirstTableDetail
        self.FirstTableDetail?.font = UIFont.systemFontOfSize(15)
        self.FirstTableDetail?.textColor = UIColor.grayColor()
        self.FirstTableDetail!.editable=false
        self.FirstTableDetail!.userInteractionEnabled=false
        self.addSubview(self.FirstTableDetail!)

        self.FirstTable_yanjin_Image = UIButton(frame: CGRectMake(245,106, 25,13))
        self.FirstTable_yanjin_Image?.setBackgroundImage(UIImage(named: "衣洛特iOS图标/主页FirstTable/主页眼镜1"), forState: UIControlState.Normal)
        self.addSubview(FirstTable_yanjin_Image!)
        
        self.FirstTable_yanjin_Num = UILabel(frame: CGRectMake(285 ,106, 50, 13))
        self.FirstTable_yanjin_Num!.text = String(self.msgItem.FirstTable_yanjin_Num)
        self.FirstTable_yanjin_Num?.textAlignment = NSTextAlignment.Center
        self.FirstTable_yanjin_Num!.font = UIFont.systemFontOfSize(15)
        self.FirstTable_yanjin_Num?.textColor = UIColor.grayColor()
        self.addSubview(FirstTable_yanjin_Num!)
        
        self.FirstTable_pinglun_Image = UIButton(frame: CGRectMake(335,106,25,13))
        self.FirstTable_pinglun_Image?.setBackgroundImage(UIImage(named: "衣洛特iOS图标/主页FirstTable/主页评论数量"), forState: UIControlState.Normal)
        self.addSubview(FirstTable_pinglun_Image!)
        
        self.FirstTable_pinglun_Num = UILabel(frame: CGRectMake(360,106,self.frame.width-360,13))
        self.FirstTable_pinglun_Num?.textAlignment = NSTextAlignment.Center
        self.FirstTable_pinglun_Num!.text = String(self.msgItem.FirstTable_pinglun_Num)
        self.FirstTable_pinglun_Num?.textColor = UIColor.grayColor()
        self.FirstTable_pinglun_Num!.font = UIFont.systemFontOfSize(15)
        self.addSubview(FirstTable_pinglun_Num!)
        
    }
}
