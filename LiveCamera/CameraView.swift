//
//  CameraView.swift
//  LiveCamera
//
//  Created by Angel Docampo on 8/10/25.
//

import SwiftUI

struct CameraView: View {
    var image: CGImage?
    private let label = Text("frame")
    
    var body: some View {
        if let image = image {
            Image(image, scale: 1.0, orientation: .up, label: label)
        } else {
            Color.black
        }
    }
}

#Preview {
    CameraView()
}

