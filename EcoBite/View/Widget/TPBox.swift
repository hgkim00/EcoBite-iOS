//
//  TPBox.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

struct TPBox: View {
    var tpInfo: Int

    var body: some View {
        Button {
            //
        } label: {
            Text("TP +\(tpInfo)")
                .font(.footnote)
                .padding(.vertical, 3)
        }
        .buttonStyle(.bordered)
        .background(.mint)
        .foregroundStyle(.black)
        .cornerRadius(5)
        .disabled(true)
    }
}

#Preview {
    TPBox(tpInfo: 50)
}
