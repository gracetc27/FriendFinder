//
//  TagScrollingView.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//

import SwiftUI

struct TagScrollingView: View {
    var tags: [String]
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(tags, id: \.self) { tag in
                    TagCard(text: tag, systemName: "figure.play", backgroundColor: .accentColor)
                }
            }
            .padding(.vertical, 4)
        }
    }
}




#Preview {
    TagScrollingView(tags: ["Books", "Climbing", "Cooking", "Coding", "Dogs"])
}
