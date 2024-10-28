//
//  UserListView.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//
import SwiftData
import SwiftUI

struct UserListView: View {
    @Environment(UserViewModel.self) var userViewModel
    @Environment(\.modelContext) var modelContext

    @Query var users: [User]

    var body: some View {
        NavigationStack {
            List {
                ForEach(userViewModel.users, id: \.self) { user in
                    NavigationLink {
                        UserDetailView(user: user)
                    } label: {
                        ListItemView(user: user)
                    }
                }
            }
            .task {
                if users.isEmpty {
                    await userViewModel.loadUsers()
                }
            }
            .onChange(of: users, { oldValue, newValue in
                newValue.forEach { user in
                    modelContext.insert(user)
                }
            })
            .navigationTitle("FriendFinder")
        }

    }
}

#Preview {
    UserListView()
        .environment(UserViewModel())
}
