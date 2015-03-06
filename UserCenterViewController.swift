//
//  ViewController.swift
//  zoo
//
//  Created by Ifeng on 15/1/1.
//  Copyright (c) 2015年 pincher. All rights reserved.
//  用户中心样式类

import UIKit

class UserCenterViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
// read plist declare
    var plistData:NSString = ""
    var dataSource:NSMutableArray = NSMutableArray()
    var contentID:NSString=""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       var tableView = UITableView(frame: CGRectMake(0, 0, 320, 500))
        tableView.delegate = self
        tableView.dataSource = self
        //创建一个重用的单元格
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "UserCenterCell")
        self.view.addSubview(tableView)
        
        
//        tableView.delegate = self
//        tableView.dataSource = self
        

        
//  -----------读取plist文件----------------
    plistData = NSBundle.mainBundle().pathForResource("UserCenterCell", ofType: "plist")!
    dataSource = NSMutableArray(contentsOfFile: plistData)!

        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return dataSource.count
        
        //section 数量
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        var section = dataSource[section] as NSMutableArray
        return dataSource.count

    }
    func tableView(tableView:UITableView, titleForHeaderInSection
        section:Int)->String
    {
        return "有2个控件"
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        
        //同一形式的单元格重复使用，在声明时已注册
        let cellIdentifier = "UserCenterCell" as String
        var cell:UserCenterCellClass? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UserCenterCellClass
        
        if cell == nil{
            cell = UserCenterCellClass(style:UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
        }
        
        
        var dataRow = indexPath.row + 1
        var dataGroupA = dataSource[0] as NSArray
        var dataGroupB = dataGroupA[0] as NSDictionary

        cell?.cellTitle.text = dataGroupB["title"] as NSString
        
        return cell!
        
        
        
//        return tableCell
        
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

