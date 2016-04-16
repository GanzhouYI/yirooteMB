import UIKit

class FirstTableMessageItem
{
    var Num:Int?
    var FirstTableImage:UIImage?
    var FirstTablebiaoqian:UIImage?
    var FirstTableTitle:String?
    var FirstTableDetail:String?
    var FirstTable_yanjin_Num:String!
    var FirstTable_pinglun_Num:String!
    
       //构造空文本消息体
    init()
    {
        
    }
    
    init(num:Int, FirstTableImage:String,FirstTablebiaoqian:String,FirstTableTitle:String,FirstTableDetail:String,FirstTable_yanjin_Num:Int,FirstTable_pinglun_Num:Int)
    {
        self.Num=num
        
        self.FirstTableImage = UIImage(named: FirstTableImage)!
        
        self.FirstTablebiaoqian = UIImage(named: FirstTablebiaoqian)!
        
        self.FirstTableTitle = FirstTableTitle
        
        self.FirstTableDetail = FirstTableDetail
        
    
        self.FirstTable_yanjin_Num = {()->String in
            var num:String=""
            if(FirstTable_yanjin_Num<=999)
            {
                num = String(FirstTable_yanjin_Num)
            }
            else if (FirstTable_yanjin_Num>999&&FirstTable_yanjin_Num<=9999)
            {
                num = String(format:"%.1f",Double(FirstTable_yanjin_Num)/1000) + "k"
            }
            else if(FirstTable_yanjin_Num>99999&&FirstTable_yanjin_Num<=999999)
            {
                num = String(format:"%.1f",Double(FirstTable_yanjin_Num)/10000) + "万"
            }
            else if(FirstTable_yanjin_Num>999999)
            {
                num = "99万+"
            }
            return num
            }()
        
        
        self.FirstTable_pinglun_Num = {()->String in
            var num:String=""
            if(FirstTable_pinglun_Num<=999)
            {
                num = String(FirstTable_pinglun_Num)
            }
            else if (FirstTable_pinglun_Num>999&&FirstTable_pinglun_Num<=9999)
            {
                num = String(format:"%.1f",Double(FirstTable_pinglun_Num)/1000) + "k"
            }
            else if(FirstTable_pinglun_Num>99999&&FirstTable_pinglun_Num<=999999)
            {
                num = String(format:"%.1f",Double(FirstTable_pinglun_Num)/10000) + "万"
            }
            else if(FirstTable_pinglun_Num>999999)
            {
                num = "99万+"
            }
            return num
            }()
    }
    
    
}