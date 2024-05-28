//
//  ChallengDetailView.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

struct ChallengeDetailView: View {
    @StateObject var info: Challenge
    @State private var isLinkActive = false

    var body: some View {
        NavigationStack {
            AsyncImage(url: URL(string: info.imageURL)) { image in
                image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
                    .padding(.top, 100)
            }
            VStack {
                VStack {
                    HStack {
                        Text(info.title)
                            .font(.title)
                            .bold()
                        
                        Spacer()
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    
                    HStack {
                        Image(systemName: "person.2.fill")
                        Text("현재 \(info.participateCount)명")
                        
                        Spacer()
                    }
                    
                    HStack {
                        ForEach(0 ..< info.tagList.count) { idx in
                            TagBox(tagName: info.tagList[idx])
                        }
                        Spacer()
                    }
                    .padding(.bottom, 20)
                }
                .padding(.horizontal, 20)
                
                Divider()
                    .frame(minHeight: 10)
                    .background(Color.green)
                
                ScrollView {
                    VStack {
                        Text(info.description)
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 20)
                        
                        Text(info.description)
                            .padding(.vertical, 20)
                        Text(info.description)
                            .padding(.vertical, 20)
                        Text(info.description)
                            .padding(.vertical, 20)
                        Text(info.description)
                            .padding(.vertical, 20)
                        Text(info.description)
                            .padding(.vertical, 20)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 50)
                }
                
                NavigationLink(
                    destination: MainView(index: 1),
                    isActive: $isLinkActive
                ) {
                    EmptyView()
                }
                
                Button {
                    User.shared.currentChallenge.append(info)
                    isLinkActive = true
                } label: {
                    Text("참여하기")
                        .bold()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, minHeight: 30)
                }
                .buttonStyle(.borderedProminent)
                .padding(.horizontal, 20)
                .accentColor(/*@START_MENU_TOKEN@*/ .green/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

//
// TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
//        content:  {
//    Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
//    Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
// })

// NavigationStack(path: <#T##Binding<NavigationPath>#>, root: <#T##() -> View#>)

#Preview {
    ChallengeDetailView(info: Challenge(
        title: "매일 기상 후 물 한 잔",
        description: "매일 아침에 기상 후 바로 물을 마시는 행동은 우리에게 정말 삶의 활력을 불어넣어줍니다! ...",
        imageURL: "https://images.unsplash.com/photo-1624948465027-6f9b51067557?q=80&w=400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        participateCount: 132,
        tagList: ["습관", "건강"],
        expScore: 50,
        tpScore: 50
    ))
}
