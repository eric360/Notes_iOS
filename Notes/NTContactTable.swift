//
//  NTRootTableView.swift
//  Notes
//
//  Created by eric_360 on 06/11/15.
//  Copyright © 2015 Eric Hong tuan ha. All rights reserved.
//
import UIKit
import Contacts

class NTContactTable : UITableView, UITableViewDataSource, UITableViewDelegate {
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
        self.registerNib(UINib(nibName: "NTContactCell", bundle: nil), forCellReuseIdentifier: "Cell")
        self.delegate = self
    }
    // MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let contacts = contacts{
            return contacts.count
        }
        return 0
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = self.dequeueReusableCellWithIdentifier("Cell") as? NTContactCell{
            if let  contact = contacts?[indexPath.row]{
                cell.contact = contact
            }
             return cell
        }
       return UITableViewCell()
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 95
    }
}