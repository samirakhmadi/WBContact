//
//  Contact.swift
//  WBContact
//
//  Created by Samir on 08.06.2024.
//

import SwiftUI

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let status: String
    let lastSeen: String
    let profileImage: String?
    let isOnline: Bool
}

