//
//  PostViewModel.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil

    private let repository: PostRepository

    init(repository: PostRepository) {
        self.repository = repository
        fetchPosts()
    }

    func fetchPosts() {
        isLoading = true
        errorMessage = nil

        repository.getPosts { [weak self] result in
            guard let self = self else { return }
            self.isLoading = false
            switch result {
            case .success(let posts):
                self.posts = posts
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
}
