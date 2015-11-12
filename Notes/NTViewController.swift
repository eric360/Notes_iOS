//
//  NTViewController.swift
//  Notes
//
//  Created by eric_360 on 06/11/15.
//  Copyright © 2015 Eric Hong tuan ha. All rights reserved.
//

import UIKit
import Contacts
class NTViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = .None
        let keysToFetch = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey]
        let containerId = CNContactStore().defaultContainerIdentifier()
        let predicate: NSPredicate = CNContact.predicateForContactsInContainerWithIdentifier(containerId)
         do {
            let contacts = try CNContactStore().unifiedContactsMatchingPredicate(predicate, keysToFetch: keysToFetch)
            print(contacts)
         }catch{
            print("Error")
        }
    }
}