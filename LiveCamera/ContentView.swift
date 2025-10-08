//
//  ContentView.swift
//  LiveCamera
//
//  Created by Angel Docampo on 8/10/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    
    var body: some View {
        CameraView(image: model.frame)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
