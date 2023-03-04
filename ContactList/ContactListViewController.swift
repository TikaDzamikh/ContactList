//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Timur Dzamikh on 04.03.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let contactList = Contact.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Back"
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.contact = contactList[indexPath.row]
    }
    

}

// MARK: - UITableViewDataSource
extension ContactListViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
