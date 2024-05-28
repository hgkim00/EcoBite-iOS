//
//  CustomCameraView.swift
//  EcoBite
//
//  Created by 김현기 on 5/28/24.
//

import SwiftUI

struct CustomCameraView: View {
    let cameraService = CameraService()
    @Binding var capturedImage: UIImage?

    @Environment(\.presentationMode) private var presentationMode

    var body: some View {
        ZStack {
            CameraView(cameraService: cameraService) { result in
                switch result {
                case .success(let photo):
                    if let data = photo.fileDataRepresentation() {
                        capturedImage = UIImage(data: data)
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        print("Error: No image data found")
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }

            VStack {
                Spacer()
                Button {
                    cameraService.capturePhoto()
                } label: {
                    Image(systemName: "circle")
                        .font(.system(size: 72))
                        .foregroundStyle(.white)
                }
                .padding(.bottom)
            }
        }
    }
}

// #Preview {
//    CustomCameraView()
// }
