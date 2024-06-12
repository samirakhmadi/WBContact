//
//  BottomBarView.swift
//  WBContact
//
//  Created by Samir on 08.06.2024.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "person.2.fill")
                Text("Контакты")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "bubble.left.and.bubble.right.fill")
                Text("Чаты")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "ellipsis.circle.fill")
                Text("Ещё")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView()
            .previewLayout(.sizeThatFits)
    }
}
