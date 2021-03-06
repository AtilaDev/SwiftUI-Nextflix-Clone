//
//  ComingSoonRow.swift
//  NetflixClone
//
//  Created by Leandro Favre on 15/12/2021.
//

import SwiftUI
import KingfisherSwiftUI
import AVKit

struct ComingSoonRow: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    let screen = UIScreen.main.bounds
    
    var player: AVPlayer {
        AVPlayer(url: URL(string: "https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4")!)
    }
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(height: 200)
            
            VStack {
                HStack {
                    KFImage(movie.thumbnailURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 3, height: 75)
                        .clipped()
                    
                    Spacer()
                    
                    Button(action: {
                        // remind me
                    }, label: {
                        VStack {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("Remind Me")
                        } //: VSTACK
                    }) //: BUTTON
                    .padding(.horizontal)
                    
                    Button(action: {
                        movieDetailToShow = movie
                    }, label: {
                        VStack {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("Remind Me")
                        } //: VSTACK
                    }) //: BUTTON
                    .padding(.trailing, 24)
                    
                } //: HSTACK
                .font(.caption)
                
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    
                    Text(movie.episodeDescriptionDisplay)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    
                } //: VSTACK
                
            } //: VSTACK
            .foregroundColor(.white)
            .padding(.horizontal)
            
        } //: VSTACK
    }
}

struct ComingSoonRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ComingSoonRow(movie: exampleMovie1, movieDetailToShow: .constant(nil))
        }
    }
}
