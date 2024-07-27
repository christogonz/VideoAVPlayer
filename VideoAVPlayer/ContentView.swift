//
//  ContentView.swift
//  VideoAVPlayer
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State private var showModal: Bool = false
    
    var body: some View {
        ZStack {
            CustomButton(text: "Show Video")
                .onTapGesture {
                    showModal = true
                }
        }
        .sheet(isPresented: $showModal, content: {
            
                VideoPlayerView()
          
        })
    }
}

#Preview {
    ContentView()
}
