//
//  ViewController.swift
//  Notes
//
//  Created by eric_360 on 06/11/15.
//  Copyright © 2015 Eric Hong tuan ha. All rights reserved.
//

import UIKit
import Contacts
class NTContactController: NTViewController {

    @IBOutlet var tableView: NTContactTable!
    // MARK: override UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Contact"
        self.getContacts()
    }
    // MARK: private
    func getContacts(){
        let keysToFetch = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey]
        let containerId = CNContactStore().defaultContainerIdentifier()
        let predicate: NSPredicate = CNContact.predicateForContactsInContainerWithIdentifier(containerId)
        do {
            let contacts = try CNContactStore().unifiedContactsMatchingPredicate(predicate, keysToFetch: keysToFetch)
            tableView.contacts = contacts
        }catch{
            print("Error")
        }
    }
    
}

