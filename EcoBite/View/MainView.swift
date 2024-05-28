//
//  HomeView.swift
//  EcoBite
//
//  Created by 김현기 on 5/21/24.
//

import SwiftUI

struct MainView: View {
    @State var index: Int

    var body: some View {
        NavigationStack {
            TabView(selection: .constant(index),
                    content: {
                        HomeView()
                            .tabItem {
                                Image(systemName: "house.fill")
                                Text("Home")
                            }.tag(0)
                        ContinueView()
                            .tabItem {
                                Image(systemName: "clock.arrow.circlepath")
                                Text("Continue")
                            }.tag(1)
                        ProfileView()
                            .tabItem {
                                Image(systemName: "person.fill")
                                Text("Profile")
                            }.tag(2)
                    })
                    .navigationTitle("")
                    .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    MainView(index: 0)
}
