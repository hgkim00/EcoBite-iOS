//
//  ProfileView.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "gearshape")
                    }
                }
                .padding()
                .background(.white)
                
                Button {
                    //
                } label: {
                    HStack {
                        Image("profile_image")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .padding(.trailing, 10)
                        
                        VStack {
                            HStack {
                                Text(User.shared.name)
                                    .font(.title2)
                                    .bold()
                                    .padding(.bottom, 5)
                                    .foregroundStyle(.black)
                                Spacer()
                            }
                            HStack {
                                Text("기본 정보 보기")
                                    .foregroundStyle(.black)
                                Spacer()
                            }
                        }
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .padding(.trailing, 10)
                    }
                }
                .padding(20)
                
                HStack {
                    VStack {
                        Text("레벨")
                            .padding(.bottom, 15)
                        Text("12")
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                    VStack {
                        Text("티어")
                            .padding(.bottom, 15)
                        Text("GOLD")
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                    VStack {
                        Text("상위")
                            .padding(.bottom, 15)
                        Text("10%")
                            .font(.title3)
                            .bold()
                    }
                }
                .padding(20)
                .background(.white)
                .cornerRadius(10)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                
                HStack {
                    Text("🏃‍♂️ 챌린지 현황")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                .padding(20)
                .padding(.top, 10)
                
                HStack {
                    VStack {
                        Text("진행중")
                            .padding(.bottom, 10)
                        Text("1")
                            .font(.title3)
                            .bold()
                    }
                    Divider()
                        .frame(minWidth: 1, maxHeight: 60)
                        .background(.black)
                        .padding(.horizontal, 30)
                    VStack {
                        Text("성공한")
                            .padding(.bottom, 10)
                        Text("3")
                            .font(.title3)
                            .bold()
                    }
                    Divider()
                        .frame(minWidth: 1, maxHeight: 60)
                        .background(.black)
                        .padding(.horizontal, 30)
                    VStack {
                        Text("실패한")
                            .padding(.bottom, 10)
                        Text("7")
                            .font(.title3)
                            .bold()
                    }
                }
                .frame(maxHeight: 100)
                
                HStack {
                    Text("🏃‍♀️ 현재 진행 중인 챌린지")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                .padding(20)
                .padding(.vertical, 10)
                
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
                
                Spacer()
            }
        }
//        .background(Color.background)
    }
}

#Preview {
    MainView(index: 0)
}
