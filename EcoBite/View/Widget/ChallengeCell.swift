//
//  ChallengeCell.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

struct ChallengeCell: View {
    @StateObject var info: Challenge

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: info.imageURL)) { image in
                image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .cornerRadius(15)
            .padding(.bottom, 10)

            HStack {
                Text(info.title)
                    .font(.title3)
                    .bold()
                Spacer()
            }
            .padding(.bottom, 10)
            Spacer()
            HStack {
                ForEach(0 ..< info.tagList.count) { index in
                    TagBox(tagName: info.tagList[index])
                        .scaledToFit()
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ChallengeCell(
        info: Challenge(
            title: "매일 기상 후 물 한 잔",
            description: "매일 아침에 기상 후 바로 물을 마시는 행동은 우리에게 정말 삶의 활력을 불어넣어줍니다! ...",
            imageURL: "https://images.unsplash.com/photo-1624948465027-6f9b51067557?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            participateCount: 132,
            tagList: ["습관", "건강"],
            expScore: 50,
            tpScore: 50
        )
    )
}
