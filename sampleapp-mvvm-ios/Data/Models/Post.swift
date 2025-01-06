//
//  Post.swift
//  sampleapp-mvvm-ios
//
//  Created by Sangwon Choi on 06/01/2025.
//

import Foundation

struct Post: Identifiable, Codable {
    let id: Int
    let title: String
    let body: String
}
