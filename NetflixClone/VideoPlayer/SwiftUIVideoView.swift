//
//  SwiftUIVideoView.swift
//  NetflixClone
//
//  Created by Leandro Favre on 10/12/2021.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    // MARK: - PROPERTIES
    
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
