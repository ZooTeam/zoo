//
//  DetailContentViewController.swift
//  zoo
//
//  Created by Ifeng on 15/1/1.
//  Copyright (c) 2015年 pincher. All rights reserved.
//  详细内容页样式类


import UIKit

class DetailContentViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var receive:NSString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("接受到的值")
        println(receive)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 3
        //表格数量
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
        //section数量
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
      
        return "section"
        
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        var tableCell :TableViewCell = tableView.dequeueReusableCellWithIdentifier("DetailContentCell") as TableViewCell
        return tableCell
        
        //cell内容
    }
    
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        //self.performSegueWithIdentifier("DetailContentSugue", sender: indexPath)
        
        //cell选中跳转
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //segue 传值
    }
    


}