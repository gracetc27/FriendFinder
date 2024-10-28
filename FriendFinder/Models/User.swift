//
//  User.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
import SwiftData
import SwiftUI

@Model
class User: Hashable, Codable {
    enum CodingKeys: String, CodingKey {
        case name
        case about
        case company
        case email
        case address
        case id
        case age
        case registered
        case isActive
        case friends
        case tags
    }
    var id: UUID
    var name: String
    var about: String
    var isActive: Bool
    var age: Int
    var company: String
    var email: String
    var address: String
    var registered: Date
    var friends: [Friend]
    var tags: [String]

    init(
        id: UUID,
        name: String,
        about: String,
        isActive: Bool,
        age: Int,
        company: String,
        email: String,
        address: String,
        registered: Date,
        friends: [Friend],
        tags: [String]
    ) {
        self.id = id
        self.name = name
        self.about = about
        self.isActive = isActive
        self.age = age
        self.company = company
        self.email = email
        self.address = address
        self.registered = registered
        self.friends = friends
        self.tags = tags
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.about = try container.decode(String.self, forKey: .about)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.age = try container.decode(Int.self, forKey: .age)
        self.company = try container.decode(String.self, forKey: .company)
        self.email = try container.decode(String.self, forKey: .email)
        self.address = try container.decode(String.self, forKey: .address)
        self.registered = try container.decode(Date.self, forKey: .registered)
        self.friends = try container.decode([Friend].self, forKey: .friends)
        self.tags = try container.decode([String].self, forKey: .tags)
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(about, forKey: .about)
        try container.encode(isActive, forKey: .isActive)
        try container.encode(age, forKey: .age)
        try container.encode(company, forKey: .company)
        try container.encode(email, forKey: .email)
        try container.encode(address, forKey: .address)
        try container.encode(friends, forKey: .friends)
        try container.encode(tags, forKey: .tags)
    }
}

