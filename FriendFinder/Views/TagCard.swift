//
//  TagCard.swift
//  FriendFinder
//
//  Created by Grace couch on 21/10/2024.
//


import SwiftUI

struct TagCard: View {
    var text: String
    var systemName: String?
    var backgroundColor: Color
    var image: String?

    var body: some View {
        HStack {
            if let systemName {
                Image(systemName: systemName)
            }
            if let image {
                Image(image)
                    .resizable()
                    .clipShape(.circle)
                    .scaledToFill()
                    .frame(maxWidth: 100, maxHeight: 75)

            }
            Text(text)
        }
        .padding()
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 30))
    }
}


#Preview {
    TagCard(text: "hi", backgroundColor: .accentColor, image: "kaneImage")
}
