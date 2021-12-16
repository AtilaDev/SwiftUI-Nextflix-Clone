//
//  ComingSoonVM.swift
//  NetflixClone
//
//  Created by Leandro Favre on 15/12/2021.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
