//
//  PostData.swift
//  H4XOR News (iOS)
//
//  Created by Runyasak Chaengnaimuang on 7/2/2564 BE.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
