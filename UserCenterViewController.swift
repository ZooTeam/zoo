//
//  ViewController.swift
//  zoo
//
//  Created by Ifeng on 15/1/1.
//  Copyright (c) 2015年 pincher. All rights reserved.
//  用户中心样式类

import UIKit

class UserCenterViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
// read plist
    var plistData:NSString = ""
    var data:NSMutableArray = NSMutableArray()
    var contentID:NSString=""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//  -----------读取plist文件----------------
    plistData = NSBundle.mainBundle().pathForResource("UserCenterCell", ofType: "plist")!
    data = NSMutableArray(contentsOfFile: plistData)!

        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
        //section 数量
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        var section = data[section] as NSMutableArray
        
        return data.count
        
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let tableCell:UserCenterCellClass = tableView.dequeueReusableCellWithIdentifier("UserCenterCell") as UserCenterCellClass
        


        
        self.view.addSubview(tableCell.userImage)
        self.view.addSubview(tableCell.title)
        self.view.addSubview(tableCell.detail)

        var dataRow = indexPath.row + 1
        var dataGroupA = data[0] as NSArray
        //println(dataGroupA)
        var dataGroupB = dataGroupA[0] as NSDictionary
        tableCell.title.text = dataGroupB["title"] as NSString
        tableCell.detailTextLabel?.text = "1231"
        tableCell.imageView?.backgroundColor = UIColor.blackColor()

  
        
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

