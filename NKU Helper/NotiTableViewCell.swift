//
//  NotiTableViewCell.swift
//  NKU Helper
//
//  Created by 陈乐天 on 15/12/8.
//  Copyright © 2015年 &#38472;&#20048;&#22825;. All rights reserved.
//

import UIKit

class NotiTableViewCell: UITableViewCell {

    @IBOutlet var providerIcon: UIImageView! {
        didSet {
            providerIcon.layer.cornerRadius = 5
            providerIcon.layer.borderWidth = 1
            providerIcon.layer.borderColor = UIColor(red: 155/255, green: 92/255, blue: 180/255, alpha: 1).CGColor
        }
    }
    @IBOutlet var title: UILabel!
    @IBOutlet var content: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var provider: UILabel!
    @IBOutlet var displayView: UIView!
    
    var notiData:Notification! {
        didSet {
            providerIcon.image = UIImage(named: "NanKai.png")!
            title.text = notiData.title
            content.text = notiData.text
            time.text = notiData.time
            provider.text = "NKU Helper"
        }
    }
    
    
}