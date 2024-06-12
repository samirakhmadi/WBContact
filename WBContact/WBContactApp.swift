//
//  WBContactApp.swift
//  WBContact
//
//  Created by Samir on 08.06.2024.
//

import SwiftUI

@main
struct ContactsApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .black
    }
    
    var body: some Scene {
        WindowGroup {
            ContactListView()
        }
    }
}


