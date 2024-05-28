//
//  CertificationView.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

struct CertificationView: View {
    var body: some View {
        VStack {
            Button {
                //
            } label: {
                Text("사진 찍어서 인증하기")
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: 50)
            }
            .buttonStyle(.borderedProminent)
            .accentColor(.green)
        }
    }
}

#Preview {
    CertificationView()
}
