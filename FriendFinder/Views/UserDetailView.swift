//
//  UserDetailView.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//

import SwiftUI

struct UserDetailView: View {
    var user: User
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 8) {
                    Image("birdImage")
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Age")
                                Text("Company")
                            }
                            .font(.headline)
                            Spacer()

                            VStack(alignment: .trailing, spacing: 8) {
                                Text("\(user.age)")
                                Text("\(user.company)")
                            }
                        }
                        Text("Interests:")
                            .font(.headline)
                        TagScrollingView(tags: user.tags)
                            .font(.footnote)
                            .foregroundStyle(.white)
                        HStack {
                            Image(systemName: "info.circle")
                            Text("More about \(user.name)")
                        }
                        .font(.headline)
                        Text(user.about)

                        HStack {
                            Image(systemName: "figure.2.right.holdinghands")
                            Text("Friends")
                        }
                        .font(.headline)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(user.friends, id: \.self) { friend in
                                    TagCard(text: friend.name, backgroundColor: .accentColor, image: "kaneImage")
                                        .foregroundStyle(.white)
                                }
                            }
                            .padding(.vertical)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .scrollBounceBehavior(.basedOnSize)
        .navigationTitle(user.name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                ActivityStatusComponent(user: user)
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    UserDetailView(user: User(id: UUID(), name: "Kane", about: "lalalla", isActive: true, age: 29, company: "KrakenTech", email: "kb@hotmail.com", address: "107 eastbourne road", registered: .now, friends: [Friend](), tags: ["Dogs", "Climbing", "Swimming"]))
}
