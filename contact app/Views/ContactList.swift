//
//  ContactList.swift
//  contact app
//
//  Created by Phạm Long on 26/07/2023.
//

import SwiftUI

struct ContactList: View {
    @AppStorage("isDarkMode") private var isDark = false
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactCard(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitleDisplayMode(.inline) // Set the title display mode to inline
            .navigationBarTitle(Text("SSET Contact 📒"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { isDark.toggle() }) {
                        Label(isDark ? "Dark" : "Light", systemImage: isDark ? "lightbulb.fill" : "lightbulb")
                    }
                    .padding(.vertical)
                }
            }
        }
        .environment(\.colorScheme, isDark ? .dark : .light)
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
