//
//  ActivityStatusComponent.swift
//  FriendFinder
//
//  Created by Grace couch on 22/10/2024.
//

import SwiftUI

struct ActivityStatusComponent: View {
    var user: User
    var body: some View {
        if user.isActive {
            Circle()
                .foregroundStyle(.green)
                .shadow(color: .green, radius: 7)
        } else {
            Circle()
                .foregroundStyle(.red)
                .shadow(color: .red, radius: 7)
        }
    }
}

#Preview {
    ActivityStatusComponent(user: User(id: UUID(), name: "Kane", about: "lalalla", isActive: false, age: 29, company: "KrakenTech", email: "kb@hotmail.com", address: "107 eastbourne road", registered: .now, friends: [Friend](), tags: [String]()))
}
