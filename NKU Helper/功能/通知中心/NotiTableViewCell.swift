//
//  NotiTableViewCell.swift
//  NKU Helper
//
//  Created by 陈乐天 on 15/12/8.
//  Copyright © 2015年 陈乐天. All rights reserved.
//

import UIKit

class NotiTableViewCell: UITableViewCell {

    @IBOutlet var providerIcon: UIImageView! {
        didSet {
            providerIcon.layer.cornerRadius = 5
            providerIcon.layer.borderWidth = 1
            providerIcon.layer.borderColor = UIColor(red: 135.7/255, green: 67.2/255, blue: 164.8/255, alpha: 1.0).cgColor
        }
    }
    @IBOutlet var title: UILabel!
    @IBOutlet var content: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var provider: UILabel!
    @IBOutlet var displayView: UIView! {
        didSet {
            displayView.layer.cornerRadius = 10
        }
    }
    
    var notiData:Notification! {
        didSet {
            providerIcon.image = R.image.南开()
            title.text = notiData.title
            content.text = notiData.text
            time.text = notiData.time
            provider.text = "NKU Helper"
        }
    }
    
    
}
