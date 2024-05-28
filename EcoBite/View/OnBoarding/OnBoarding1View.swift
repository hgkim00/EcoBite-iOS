//
//  OnBoarding1View.swift
//  EcoBite
//
//  Created by 김현기 on 5/20/24.
//

import SwiftUI

struct OnBoarding1View: View {
    @State private var progress = 0.25

    @State private var btn1Clicked = false
    @State private var btn2Clicked = false
    @State private var btn3Clicked = false
    @State private var btn4Clicked = false

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                ProgressView(value: progress)
                    .padding(.bottom, 50)
                Text("어떤 목적으로 채소 섭취를")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("습관화하려고 하나요?")
                    .font(.headline)
                    .fontWeight(.bold)

                Button(action: {
                    // 첫 번째 버튼의 액션
                    btn1Clicked.toggle()
                }) {
                    Text("💪 다이어트 및 체중 관리")
                        .frame(maxWidth: .infinity)
                        .padding(12)
                }
                .buttonStyle(.bordered)
                .foregroundStyle(btn1Clicked ? .white : .blue)
                .background(btn1Clicked ? .blue : .white)
                .cornerRadius(10)
                .padding(.top, 50)

                Button(action: {
                    // 두 번째 버튼의 액션
                    btn2Clicked.toggle()
                }) {
                    Text("🥗 식습관 개선")
                        .frame(maxWidth: .infinity)
                        .padding(12)
                }
                .buttonStyle(.bordered)
                .foregroundStyle(btn2Clicked ? .white : .blue)
                .background(btn2Clicked ? .blue : .white)
                .cornerRadius(10)

                Button(action: {
                    // 세 번째 버튼의 액션
                    btn3Clicked.toggle()
                }) {
                    Text("😀 건강한 삶 유지")
                        .frame(maxWidth: .infinity)
                        .padding(12)
                }
                .buttonStyle(.bordered)
                .foregroundStyle(btn3Clicked ? .white : .blue)
                .background(btn3Clicked ? .blue : .white)
                .cornerRadius(10)

                Button(action: {
                    // 네 번째 버튼의 액션
                    btn4Clicked.toggle()
                }) {
                    Text("🚽 대변 활동 원활")
                        .frame(maxWidth: .infinity)
                        .padding(12)
                }
                .buttonStyle(.bordered)
                .foregroundStyle(btn4Clicked ? .white : .blue)
                .background(btn4Clicked ? .blue : .white)
                .cornerRadius(10)

                Spacer()

                NavigationLink {
                    OnBoarding2View()
                } label: {
                    Text("다음")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .cornerRadius(10)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            .navigationTitle("")
        }
    }
}

#Preview {
    OnBoarding1View()
}
