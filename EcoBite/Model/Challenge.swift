//
//  Challenge.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

class Challenge: ObservableObject {
    @Published var title: String
    @Published var description: String
    @Published var imageURL: String
    @Published var participateCount: Int
    @Published var tagList: [String]
    @Published var expScore: Int
    @Published var tpScore: Int

    init(title: String, description: String, imageURL: String, participateCount: Int, tagList: [String], expScore: Int, tpScore: Int) {
        self.title = title
        self.description = description
        self.imageURL = imageURL
        self.participateCount = participateCount
        self.tagList = tagList
        self.expScore = expScore
        self.tpScore = tpScore
    }
}
