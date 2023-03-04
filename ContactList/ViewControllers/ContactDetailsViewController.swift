//
//  ContactDetailsController.swift
//  ContactList
//
//  Created by Timur Dzamikh on 04.03.2023.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullName
        phoneLabel.text = "phone: \(contact.phoneNumber)"
        emailLabel.text = "e-mail: \(contact.email)"
    }
}
