//
//  CertificationView.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

struct CertificationView: View {
    @StateObject var info: Challenge
    @State var isLinkActive: Bool = false
    @State var isPictured: Bool = false
    
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("🍃 EcoBite")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                    Spacer()
                    if isPictured {
                        NavigationLink {
                            MainView(index: 1)
                        } label: {
                            Text("인증")
                                .bold()
                                .padding(.vertical, 5)
                        }
                        .background(.green)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        .buttonStyle(.bordered)
                        .padding(.trailing, 20)
                    }
                }
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
                
                Spacer()
                
                //                NavigationLink(
                //                    destination: MainView(index: 1),
                //                    isActive: $isLinkActive
                //                ) {
                //                    EmptyView()
                //                }
                ZStack {
                    if capturedImage != nil {
                        Image(uiImage: capturedImage!)
                            .resizable()
                            .scaledToFit()
                    } else {
                        Color(.systemBackground)
                    }
                }
                    
                Button {
                    //                    isLinkActive = true
                    isCustomCameraViewPresented.toggle()
                    isPictured = true
                } label: {
                    Image(systemName: "camera.fill")
                        .font(.largeTitle)
                        .padding()
                        .background(.green)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                }
                .sheet(isPresented: $isCustomCameraViewPresented, content: {
                    CustomCameraView(capturedImage: $capturedImage)
                })
            }
        }
    }
}

#Preview {
    CertificationView(
        info: Challenge(
            title: "매일 기상 후 물 한 잔",
            description: "매일 아침에 기상 후 바로 물을 마시는 행동은 우리에게 정말 삶의 활력을 불어넣어줍니다! ...",
            imageURL: "https://images.unsplash.com/photo-1624948465027-6f9b51067557?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            participateCount: 132,
            tagList: ["습관", "건강"],
            expScore: 50,
            tpScore: 50
        ))
}
