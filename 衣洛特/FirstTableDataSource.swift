import Foundation

/*
  数据提供协议
*/
protocol FirstTableDataSource
{
    
    /*返回对话记录中的全部行数*/
    func rowsForFirstTable( tableView:FirstTableView) -> Int
    /*返回某一行的内容*/
    func FirstTableViewDetail(tableView:FirstTableView, dataForRow:Int)-> FirstTableMessageItem

}