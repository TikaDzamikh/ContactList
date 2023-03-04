//
//  Contact.swift
//  ContactList
//
//  Created by Timur Dzamikh on 04.03.2023.
//

struct Person {
    let name: String
    let surName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    static func getContactList() -> [Person] {
        var contacts: [Person] = []
        
        let names = dataStore.names.shuffled()
        let surNames = dataStore.surNames.shuffled()
        let phoneNumbers = dataStore.phones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        for index in 0..<names.count {
            let contact = Person(
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
