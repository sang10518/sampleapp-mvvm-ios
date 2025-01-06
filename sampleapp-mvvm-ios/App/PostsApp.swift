//
//  sampleapp_mvvm_iosApp.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import SwiftUI

import SwiftUI

@main
struct PostsApp: App {
    var body: some Scene {
        let repository = PostRepository(service: PostService())
        WindowGroup {
            PostListView(viewModel: PostViewModel(repository: repository))
        }
    }
}
