//
//  Friend.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//
import SwiftData
import SwiftUI


@Model
class Friend: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }

    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }

    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
    }
}
