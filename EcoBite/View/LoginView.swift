//
//  LoginView.swift
//  EcoBite
//
//  Created by 김현기 on 5/20/24.
//

import AuthenticationServices
import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("ECOBITE")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(": 채소 섭취 챌린지 앱")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading, 30)
                    .padding(.top, 50)
                    Spacer()
                }
                Spacer()
                VStack {
                    Image("ecobite_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                }
                Spacer()
                NavigationLink {
                    OnBoarding0View()
                } label: {
                    SignInWithAppleButton(
                        onRequest: { _ in },
                        onCompletion: { _ in
                            print("Click Login")
                        }
                    )
                    .frame(height: 50)
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 50)
                }
            }
            .navigationTitle("")
        }
    }
}

#Preview {
    LoginView()
}
