//
//  ContinueView.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

struct ContinueView: View {
    var body: some View {
        if User.shared.currentChallenge.isEmpty {
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
                Spacer()
                Text("현재 진행 중인 챌린지가 없습니다!!")
                    .font(.title2)
                    .bold()
                Spacer()
            }
        }
        else {
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

                ScrollView {
                    VStack {
                        ForEach(0 ..< User.shared.currentChallenge.count) { idx in
                            NavigationLink {
                                CertificationView(info: User.shared.currentChallenge[idx])
                            } label: {
                                CurrentChallengeView(info: User.shared.currentChallenge[idx])
                            }

                            Divider()
                                .frame(height: 5)
                                .background(.green)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainView(index: 1)
}
