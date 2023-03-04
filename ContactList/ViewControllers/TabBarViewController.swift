//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Timur Dzamikh on 04.03.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private let contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Back"
        
        let contactListVC = viewControllers?.first as! ContactListViewController
        contactListVC.contacts = contactList
        
        let contactSectionVC = viewControllers?.last as! ContactSectionViewController
        contactSectionVC.contacts = contactList
    }
}
