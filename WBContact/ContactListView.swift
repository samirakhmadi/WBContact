//
//  ContactListView.swift
//  WBContact
//
//  Created by Samir on 08.06.2024.
//

import SwiftUI

struct ContactListView: View {
    @State private var searchText = ""
    
    var filteredContacts: [Contact] {
        if searchText.isEmpty {
            return contacts
        } else {
            return contacts.filter { $0.name.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                List(filteredContacts) { contact in
                    NavigationLink(destination: ContactDetailView(contact: contact)) {
                        HStack {
                            if let imageName = contact.profileImage, !imageName.isEmpty {
                                ZStack(alignment: .topTrailing) {
                                    Image(imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                    
                                    if contact.isOnline {
                                        Circle()
                                            .fill(Color.green)
                                            .frame(width: 10, height: 10)
                                            .offset(x: -5, y: 5)
                                    }
                                }
                            } else {
                                ZStack(alignment: .topTrailing) {
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 50, height: 50)
                                        .overlay(
                                            Text(contact.name.prefix(1))
                                                .foregroundColor(.white)
                                        )
                                    
                                    if contact.isOnline {
                                        Circle()
                                            .fill(Color.green)
                                            .frame(width: 10, height: 10)
                                            .offset(x: -5, y: 5)
                                    }
                                }
                            }
                            VStack(alignment: .leading) {
                                Text(contact.name)
                                    .font(.headline)
                                Text(contact.status)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                BottomBarView()
            }
            .background(Color.white) // Белый фон для экрана
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Text("Контакты")
                .font(.headline)
                .foregroundColor(.black),
                trailing: Button(action: {
                // Добавить контакт
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.black)
            })
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}

