//
//  PostDetailView.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(post.title)
                .font(.largeTitle)
                .bold()

            Text(post.body)
                .font(.body)

            Spacer()
        }
        .padding()
        .navigationTitle("Post Detail")
    }
}
