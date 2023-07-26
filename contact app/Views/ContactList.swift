//
//  ContactList.swift
//  contact app
//
//  Created by Phạm Long on 26/07/2023.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        NavigationView {
            List(contacts){
                contact in
                NavigationLink{
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(contact: contact)
                }
                .navigationTitle("SSET Contact 📒")
            }
        }
        
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
