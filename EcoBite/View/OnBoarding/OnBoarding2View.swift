//
//  OnBoarding2View.swift
//  EcoBite
//
//  Created by 김현기 on 5/20/24.
//

import SwiftUI

struct OnBoarding2View: View {
    @State private var progress = 0.5

    // 1층
    @State private var btn1Clicked = false
    @State private var btn2Clicked = false
    @State private var btn3Clicked = false
    // 2층
    @State private var btn4Clicked = false
    @State private var btn5Clicked = false
    @State private var btn6Clicked = false
    // 3층
    @State private var btn7Clicked = false
    @State private var btn8Clicked = false
    @State private var btn9Clicked = false

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                ProgressView(value: progress)
                    .padding(.bottom, 50)
                Text("관심 있는 분야를 모두 선택해주세요")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                Text("관심 있는 분야를 2가지 이상 선택해주세요!")
                    .font(.subheadline)
                Text("알맞는 챌린지를 추천해드릴게요!")
                    .font(.subheadline)
                    .padding(.bottom, 50)

                HStack {
                    Spacer()
                    Button {
                        btn1Clicked.toggle()
                    } label: {
                        Text("식단")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn1Clicked ? .blue : .white)
                    .foregroundStyle(btn1Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                    Button {
                        btn2Clicked.toggle()
                    } label: {
                        Text("요리")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn2Clicked ? .blue : .white)
                    .foregroundStyle(btn2Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                    Button {
                        btn3Clicked.toggle()
                    } label: {
                        Text("채식")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn3Clicked ? .blue : .white)
                    .foregroundStyle(btn3Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                }
                .padding(.bottom, 10)

                HStack {
                    Spacer()
                    Button {
                        btn4Clicked.toggle()
                    } label: {
                        Text("친목")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn4Clicked ? .blue : .white)
                    .foregroundStyle(btn4Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                    Button {
                        btn5Clicked.toggle()
                    } label: {
                        Text("환경")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn5Clicked ? .blue : .white)
                    .foregroundStyle(btn5Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                    Button {
                        btn6Clicked.toggle()
                    } label: {
                        Text("건강")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn6Clicked ? .blue : .white)
                    .foregroundStyle(btn6Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                }
                .padding(.bottom, 10)

                HStack {
                    Spacer()
                    Button {
                        btn7Clicked.toggle()
                    } label: {
                        Text("습관")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn7Clicked ? .blue : .white)
                    .foregroundStyle(btn7Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                    Button {
                        btn8Clicked.toggle()
                    } label: {
                        Text("으악")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn8Clicked ? .blue : .white)
                    .foregroundStyle(btn8Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                    Button {
                        btn9Clicked.toggle()
                    } label: {
                        Text("몰루")
                            .frame(width: 50, height: 50)
                    }
                    .buttonStyle(.bordered)
                    .background(btn9Clicked ? .blue : .white)
                    .foregroundStyle(btn9Clicked ? .white : .blue)
                    .cornerRadius(10)

                    Spacer()
                }
                .padding(.bottom, 10)

                Spacer()

                NavigationLink {
                    OnBoarding3View()
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
    OnBoarding2View()
}
