//
//  ListItemView.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//

import SwiftUI

struct ListItemView: View {
    var user: User
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.headline)
            HStack {
                Text("\(user.age)")
                Spacer()
                Text(user.company)
            }
        }
    }
}

#Preview {
    ListItemView(user: User(id: UUID(), name: "Kane", about: "lalalla", isActive: true, age: 29, company: "KrakenTech", email: "kb@hotmail.com", address: "107 eastbourne road", registered: .now, friends: [Friend](), tags: [String]()))
}
