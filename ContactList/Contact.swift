//
//  Contact.swift
//  ContactList
//
//  Created by Timur Dzamikh on 04.03.2023.
//

struct Contact {
    let name: String
    let surName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    static func getContactList() -> [Contact] {
        var contacts: [Contact] = []
        
        let names = dataStore.names.shuffled()
        let surNames = dataStore.surNames.shuffled()
        let phoneNumbers = dataStore.phones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        for index in 0...9 {
            let contact = Contact(
                name: names[index],
                surName: surNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            contacts.append(contact)
        }
        
        return contacts
    }
}
