//
//  PreviewVM.swift
//  NetflixClone
//
//  Created by Leandro Favre on 16/12/2021.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}

