//
//  TagBox.swift
//  EcoBite
//
//  Created by 김현기 on 5/27/24.
//

import SwiftUI

struct TagBox: View {
    var tagName: String

    var body: some View {
        Button {
            //
        } label: {
            Text(tagName)
                .font(.footnote)
        }
        .buttonStyle(.bordered)
        .foregroundStyle(.black)
        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TagBox(tagName: "건강")
}
