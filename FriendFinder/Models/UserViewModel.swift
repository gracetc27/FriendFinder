//
//  UserViewModel.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//
import SwiftData
import SwiftUI


@Observable
class UserViewModel {
    var users: [User] = []

    func loadUsers() async {
        let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decoded = try? decoder.decode([User].self, from: data) {
                users = decoded
            }
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}

