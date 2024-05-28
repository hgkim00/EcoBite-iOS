//
//  OnBoarding0View.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

struct OnBoarding0View: View {
    @FocusState private var isFocused: Bool
    @State private var isLinkActive = false

    @State var name: String = ""
    @State var age: String = ""

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
                .onTapGesture {
                    isFocused = false
                }
            VStack {
                Text("기본 정보 입력")
                Spacer()
                HStack {
                    Text("이름을 입력해주세요 ☺️")
                    Spacer()
                }
                .padding(.leading, 5)
                TextField("이름 입력", text: $name)
                    .padding()
                    .background(Color.background)
                    .cornerRadius(10)
                    .focused($isFocused)
                    .padding(.bottom, 20)

                HStack {
                    Text("나이를 입력해주세요 😀")
                    Spacer()
                }
                .padding(.leading, 5)
                TextField("나이 입력", text: $age)
                    .padding()
                    .background(Color.background)
                    .cornerRadius(10)
                    .focused($isFocused)

                Spacer()

                NavigationLink(destination: OnBoarding1View(), isActive: $isLinkActive) {
                    EmptyView()
                }

                Button {
                    User.shared = User(
                        name: name,
                        age: Int(age) ?? -1,
                        currentChallenge: []
                    )
                    isLinkActive = true
                } label: {
                    Text("저장")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .cornerRadius(10)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle("")
    }
}

#Preview {
    OnBoarding0View()
}
