//
//  HomeView.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

struct HomeView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("🍃 EcoBite")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                        Spacer()
                        HStack {
                            Button {
                                //
                            } label: {
                                Image(systemName: "bookmark")
                                    .padding(.trailing, 10)
                            }
                            Button {
                                //
                            } label: {
                                Image(systemName: "magnifyingglass")
                            }
                        }
                        .padding()
                    }
                    .padding(.bottom, 10)
                    HStack {
                        Text("추천 챌린지")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                    }
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< 3) { idx in
                            NavigationLink {
                                ChallengeDetailView(info: mockChallengeData[idx])
                            } label: {
                                ChallengeCell(info: mockChallengeData[idx])
                                    .foregroundStyle(.black)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    .padding(.bottom, 10)
                    HStack {
                        Text("전체 챌린지")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                    }
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< mockChallengeData.count) { idx in
                            NavigationLink {
                                ChallengeDetailView(info: mockChallengeData[idx])
                            } label: {
                                ChallengeCell(info: mockChallengeData[idx])
                                    .foregroundStyle(.black)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    .padding(.bottom, 10)

                    Spacer()
                }
            }
            .navigationTitle("")
        }
    }
}

#Preview {
    MainView(index: 0)
}
