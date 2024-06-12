//
//  ContactDetailView.swift
//  WBContact
//
//  Created by Samir on 08.06.2024.
//

import SwiftUI

struct ContactDetailView: View {
    var contact: Contact

    var body: some View {
        VStack {
            if let imageName = contact.profileImage, !imageName.isEmpty {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            } else {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Text(contact.name.prefix(1))
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    )
            }
            Text(contact.name)
                .font(.largeTitle)
            Text(contact.status)
                .font(.title)
                .foregroundColor(.gray)
            Spacer()
        }
        .navigationBarTitle(Text(contact.name), displayMode: .inline)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: contacts[0])
    }
}
