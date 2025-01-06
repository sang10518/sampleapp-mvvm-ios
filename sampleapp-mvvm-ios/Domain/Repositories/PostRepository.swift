//
//  PostRepository.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import Foundation

class PostRepository {
    private let service: PostService

    init(service: PostService) {
        self.service = service
    }

    func getPosts(completion: @escaping (Result<[Post], Error>) -> Void) {
        service.fetchPosts { result in
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
}
