//
//  FriendFinderApp.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//
import SwiftData
import SwiftUI

@main
struct FriendFinderApp: App {
    var body: some Scene {
        WindowGroup {
            UserListView()
                .environment(UserViewModel())
        }
        .modelContainer(for: User.self)
    }
}
