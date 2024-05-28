//
//  HomeView.swift
//  EcoBite
//
//  Created by 김현기 on 5/21/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ContinueView()
                    .tabItem {
                        Image(systemName: "clock.arrow.circlepath")
                        Text("Continue")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
            }
            .navigationTitle("")
        }
    }
}

#Preview {
    MainView()
}
