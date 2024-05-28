//
//  User.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

class User: ObservableObject {
    @Published var name: String
    @Published var age: Int
    @Published var currentChallenge: [Challenge]

    static var shared = User(name: "", age: 0, currentChallenge: [])

    init(name: String, age: Int, currentChallenge: [Challenge]) {
        self.name = name
        self.age = age
        self.currentChallenge = currentChallenge
    }
}
