//
//  NTRootTableView.swift
//  Notes
//
//  Created by eric_360 on 06/11/15.
//  Copyright © 2015 Eric Hong tuan ha. All rights reserved.
//
import UIKit
import Contacts

class NTContactTable : UITableView, UITableViewDataSource {
    // MARK: var
    var contacts : [CNContact]?{
        didSet{
            self.reloadData()
        }
    }
    // MARK: override UITableView
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self
        self.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    // MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let contacts = contacts{
            return contacts.count
        }
        return 0
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCellWithIdentifier("Cell")
        if let  contact = contacts?[indexPath.row]{
            cell!.textLabel!.text = contact.givenName
        }
        return cell!
    }
}