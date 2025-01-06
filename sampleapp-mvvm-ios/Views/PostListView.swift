//
//  PostListView.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import SwiftUI

struct PostListView: View {
    @StateObject var viewModel: PostViewModel

    var body: some View {
        NavigationView {
            if viewModel.isLoading {
                ProgressView()
            } else if let error = viewModel.errorMessage {
                Text("Error: \(error)")
            } else {
                List(viewModel.posts) { post in
                    NavigationLink(destination: PostDetailView(post: post)) {
                        Text(post.title)
                            .font(.headline)
                    }
                }
                .navigationTitle("Posts")
            }
        }
    }
}
