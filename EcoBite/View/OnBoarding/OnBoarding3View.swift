//
//  OnBoarding3View.swift
//  EcoBite
//
//  Created by 김현기 on 5/20/24.
//

import SwiftUI

struct OnBoarding3View: View {
    @State private var progress = 0.75

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
                Text("좋아하는 채소를 모두 선택해주세요")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                Text("좋아하는 채소를 2가지 이상 선택해주세요!")
                    .font(.subheadline)
                Text("좋아하는 채소 위주로 챌린지를 시작해보세요!")
                    .font(.subheadline)
                    .padding(.bottom, 50)

                HStack {
                    Spacer()
                    Button {
                        btn1Clicked.toggle()
                    } label: {
                        VStack {
                            Image("onion")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn1Clicked ? .blue : .white)
                    .foregroundStyle(btn1Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn1Clicked ? .blue : .clear)

                    Spacer()
                    Button {
                        btn2Clicked.toggle()
                    } label: {
                        VStack {
                            Image("brocolli")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn2Clicked ? .blue : .white)
                    .foregroundStyle(btn2Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn2Clicked ? .blue : .clear)

                    Spacer()
                    Button {
                        btn3Clicked.toggle()
                    } label: {
                        VStack {
                            Image("tomato")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn3Clicked ? .blue : .white)
                    .foregroundStyle(btn3Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn3Clicked ? .blue : .clear)

                    Spacer()
                }
                .padding(.bottom, 10)

                HStack {
                    Spacer()
                    Button {
                        btn4Clicked.toggle()
                    } label: {
                        VStack {
                            Image("cucumber")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn4Clicked ? .blue : .white)
                    .foregroundStyle(btn4Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn4Clicked ? .blue : .clear)

                    Spacer()
                    Button {
                        btn5Clicked.toggle()
                    } label: {
                        VStack {
                            Image("egg")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn5Clicked ? .blue : .white)
                    .foregroundStyle(btn5Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn5Clicked ? .blue : .clear)

                    Spacer()
                    Button {
                        btn6Clicked.toggle()
                    } label: {
                        VStack {
                            Image("cabbage")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn6Clicked ? .blue : .white)
                    .foregroundStyle(btn6Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn6Clicked ? .blue : .clear)

                    Spacer()
                }
                .padding(.bottom, 10)

                HStack {
                    Spacer()
                    Button {
                        btn7Clicked.toggle()
                    } label: {
                        VStack {
                            Image("banana")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn7Clicked ? .blue : .white)
                    .foregroundStyle(btn7Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn7Clicked ? .blue : .clear)

                    Spacer()
                    Button {
                        btn8Clicked.toggle()
                    } label: {
                        VStack {
                            Image("walnut")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .background(btn8Clicked ? .blue : .white)
                    .foregroundStyle(btn8Clicked ? .white : .blue)
                    .cornerRadius(10)
                    .border(btn8Clicked ? .blue : .clear)

                    Spacer()
                    Button {
                        btn9Clicked.toggle()
                    } label: {
                        VStack {
                            Image("sweetPotato")
                                .frame(width: 50, height: 50)
                        }
                    }
                    .buttonStyle(.bordered)
                    .cornerRadius(10)
                    .buttonBorderShape(.circle)
                    .border(btn9Clicked ? .blue : .clear)

                    Spacer()
                }
                .padding(.bottom, 10)

                Spacer()

                NavigationLink {
                    MainView(index: 0)
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
    OnBoarding3View()
}
