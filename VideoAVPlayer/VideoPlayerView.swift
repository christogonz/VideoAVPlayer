//
//  VideoPlayerView.swift
//  VideoAVPlayer
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @State var player = AVPlayer()
    var videoURL = URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
    
    var body: some View {
            VideoPlayer(player: player)
                .ignoresSafeArea()
                .onAppear {
                    player = AVPlayer(url: videoURL!)
                }
    }
}

#Preview {
    VideoPlayerView()
}
