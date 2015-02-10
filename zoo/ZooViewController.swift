//
//  ViewController.swift
//  zoo
//
//  Created by Ifeng on 15/1/1.
//  Copyright (c) 2015年 pincher. All rights reserved.
//  首页列表样式类

import UIKit

class ZooViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    // read plist
    var plistData:NSString = ""
    var data:NSMutableDictionary = NSMutableDictionary()
    var contentID:NSString=""

   
    @IBAction func PublishButton(sender: AnyObject) {
        self.presentViewController(PublishViewController(), animated: true, completion: nil)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
// read plist
        
         plistData = NSBundle.mainBundle().pathForResource("TestCellPlist", ofType: "plist")!
         data = NSMutableDictionary(contentsOfFile: plistData)!
        
    //   println(data)
    //   println(data["1"])
        
//        let n = 1
//        if (n == 1)
//        {
//            self.presentViewController(LoginViewController(), animated: true, completion: nil)
//        }
//     
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return data.count   //列表数量等于数据个数
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        var tableCell :TableViewCell = tableView.dequeueReusableCellWithIdentifier("homeCell") as TableViewCell
        
        var dataRow = indexPath.row + 1 //数组元素从1开始的，所以+1 ，indexPath默认为0

        var dataGroup = data["\(dataRow)"] as NSDictionary
        
        tableCell.UserName.text = dataGroup["UserName"] as NSString     //cell用户名
        tableCell.PublishTime.text = dataGroup["PublishTime"] as NSString   //cell时间
        tableCell.PublishContent.text = dataGroup["PublishContent"] as NSString  //cell 内容
        
        
        var photoUrl = dataGroup["UserPhoto"] as NSString
        tableCell.UserPhoto.image = UIImage(named: "\(photoUrl)")              //cell头像
        
        var imageA = dataGroup["PublishImageA"] as NSString
        tableCell.PublishImageA.image = UIImage(named: "\(imageA)")
        var imageB = dataGroup["PublishImageB"] as NSString
        tableCell.PublishImageA.image = UIImage(named: "\(imageB)")
        var imageC = dataGroup["PublishImageC"] as NSString
        tableCell.PublishImageA.image = UIImage(named: "\(imageC)")


        
        return tableCell
        
        //cell内容
    }
    
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        // self.performSegueWithIdentifier("goDetailContentSugue", sender: indexPath)
        //cell选中跳转
        
        var idRow = indexPath.row + 1
        var idGroup = data["\(idRow)"] as NSDictionary
        contentID = idGroup["ContentID"] as NSString
        println("点击时")
        println(contentID)


    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
             if segue.identifier == "goDetailContentSegue"{
            var goDetailContent = segue.destinationViewController as DetailContentViewController
            goDetailContent.receive = contentID as NSString
            
                println("传值时的值")
                println(contentID)
        }
 
        
    }
        //segue 传值
    


}

