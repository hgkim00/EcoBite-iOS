//
//  EXPBox.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

struct EXPBox: View {
    var expInfo: Int

    var body: some View {
        Button {
            //
        } label: {
            Text("EXP +\(expInfo)")
                .font(.footnote)
                .padding(.vertical, 3)
        }
        .buttonStyle(.bordered)
        .background(.orange)
        .foregroundStyle(.black)
        .cornerRadius(5)
        .disabled(true)
    }
}

#Preview {
    EXPBox(expInfo: 50)
}
