//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by Leandro Favre on 10/12/2021.
//

import SwiftUI

struct MoreLikeThis: View {
    // MARK: - PROPERTIES

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var movies: [Movie]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0..<movies.count) { index in
                StandardHomeMovie(movie: movies[index])
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
