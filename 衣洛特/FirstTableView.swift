import UIKit

class FirstTableView:UITableView,UITableViewDelegate, UITableViewDataSource,
First_ScrollView_Delegate{
    //用于保存所有消息
    var bubbleSection:Array<FirstTableMessageItem>!
    //数据源，用于与 ViewController 交换数据
    var FirstDataProtocol:FirstTableDataSource!
    var imageArray :[String!] = ["衣洛特iOS图标/beautiful1.png","衣洛特iOS图标/beautiful2.png","衣洛特iOS图标/beautiful3.png","衣洛特iOS图标/beautiful4.png"]
    var First_Scroll_Title :[String!] = ["beautiful1.png","iOS图标/beautiful2.png","衣洛特iOS图标/beautiful3.png","衣洛特iOS图标/beautiful4.png"]
    
    //拉刷新控制器
    var refreshControl = UIRefreshControl()
    var timer:NSTimer!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    init(frame:CGRect)
    {
        self.bubbleSection = Array<FirstTableMessageItem>()
        
        super.init(frame:frame,  style:UITableViewStyle.Plain)

        var First_Scroll = First_ScrollView()
        First_Scroll = First_ScrollView(frame: CGRectMake(0, 0, self.frame.width, 200*高比例),defaultTimeInterval: 3)
        First_Scroll.backgroundColor = UIColor.clearColor()
        First_Scroll.delegate = self
        self.backgroundColor = UIColor.grayColor()
        self.tableHeaderView = First_Scroll
        self.separatorStyle = UITableViewCellSeparatorStyle.None//分隔符风格
        self.delegate = self
        self.dataSource = self
        
        //添加刷新
        refreshControl.addTarget(self, action: "refreshData",
            forControlEvents: UIControlEvents.ValueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "下拉刷新数据")
        self.addSubview(refreshControl)
        refreshData()
        
    }
 
    // 刷新数据
    func refreshData() {
        //移除老数据

        print("刷新")
        print(imageArray.count)
        self.reloadData()
        self.refreshControl.endRefreshing()
    }
    

    
    override func reloadData()
    {
        
        self.showsVerticalScrollIndicator = true
        self.showsHorizontalScrollIndicator = true//滚动的提示条
        
        var count =  0
        if ((self.FirstDataProtocol != nil))
        {
            count = self.FirstDataProtocol.rowsForFirstTable(self)
            
            if(count > 0)
            {   
                
                for (var i = 0; i < count; i += 1)
                {
                    
                    let object =  self.FirstDataProtocol.FirstTableViewDetail(self, dataForRow:i)
                    bubbleSection.append(object)
                    
                }
                
            }
        }
        super.reloadData()
    }
    //第一个方法返回分区数，在本例中，就是1
    func numberOfSectionsInTableView(tableView:UITableView)->Int
    {
        return 1
    }
    
    /** First_ScrollViewDelegate*/
    func First_numberOfPages() -> Int {
        
        return imageArray.count;
    }
    func First_currentPageViewIndex(index: Int) -> String {
        
        return imageArray[index]
    }
    func First_didSelectCurrentPage(index: Int) {
        
        
    }
    func First_currentPageLabel_Title(index: Int) -> String {
        return First_Scroll_Title[index]
    }

    
    //返回指定分区的行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.bubbleSection.count
    }
        
    //用于确定单元格的高度，如果此方法实现得不对，单元格与单元格之间会错位
    func tableView(tableView:UITableView,heightForRowAtIndexPath  indexPath:NSIndexPath) -> CGFloat
    {
        
        return 140
    }

    
    //返回自定义的 TableViewCell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
          
        let cellId = "MsgCell"
            print("ROWBegin")
            print(indexPath.row)
            print(self.bubbleSection.count)
            let data =  self.bubbleSection[indexPath.row]
            let image_frame = CGRectMake(0, 0, self.frame.width, 120)
            let cell =  FirstTableViewCell(frame:image_frame,data:data, reuseIdentifier:cellId)
            return cell

    }
}
