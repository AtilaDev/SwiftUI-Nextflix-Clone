//
//  Trailer.swift
//  NetflixClone
//
//  Created by Leandro Favre on 10/12/2021.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
