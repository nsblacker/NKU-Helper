//
//  SettingTableViewController.swift
//  NKU Helper
//
//  Created by 陈乐天 on 15/3/1.
//  Copyright (c) 2015年 陈乐天. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        var nib:UINib = UINib(nibName: "HeaderFooter", bundle: nil)
        self.tableView.registerNib(nib, forHeaderFooterViewReuseIdentifier: "")
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberOfRowsInSection:Int = 1
        return numberOfRowsInSection
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
            var accountInfo:NSDictionary? = userDefaults.objectForKey("accountInfo") as NSDictionary?
            if let temp = accountInfo {
                var cell:AccountTableViewCell = tableView.dequeueReusableCellWithIdentifier("Account") as AccountTableViewCell
                var userID:String = accountInfo!.objectForKey("userID") as String
                var name:String = accountInfo?.objectForKey("name") as String
                var departmentAdmitted:String = accountInfo?.objectForKey("departmentAdmitted") as String
                
                var timeEnteringSchool:NSString = accountInfo?.objectForKey("timeEnteringSchool") as NSString
                timeEnteringSchool = timeEnteringSchool.substringWithRange(NSMakeRange(2, 2))
                cell.nameLabel.text = name
                cell.userIDLabel.text = userID
                cell.departmentLabel.text = departmentAdmitted + timeEnteringSchool + "级本科生"
                return cell

            }
            else {
                var cell = tableView.dequeueReusableCellWithIdentifier("AddAccount") as UITableViewCell
                
                cell.textLabel?.text = "请先登录！"
                cell.detailTextLabel?.text = "欢迎使用NKU Helper！"
                return cell

            }
            //case 1:
            
            //cell = tableView.dequeueReusableCellWithIdentifier("1234") as UITableViewCell
            
        default: var cell = tableView.dequeueReusableCellWithIdentifier("1234") as UITableViewCell
        return cell

            
            
        }
    }

    
    
}
