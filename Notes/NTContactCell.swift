//
//  NTContactCell.swift
//  Notes
//
//  Created by eric_360 on 14/11/15.
//  Copyright © 2015 Eric Hong tuan ha. All rights reserved.
//

import UIKit
import Contacts
class NTContactCell : UITableViewCell{
    var contact : CNContact?{
        didSet{
            self.display()
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.display()
    }
    func display(){
        nameLabel?.text = contact?.givenName
        phoneLabel?.text = "Phone"
        mailLabel?.text = "Mail"

//        phoneLabel?.text = contact?.phoneNumbers[0].label
//        mailLabel?.text = contact?.emailAddresses[0].label
    }
}