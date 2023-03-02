//
//  TopMoviePreviewViewModel.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import Foundation

class TopMoviePreviewViewModel: ObservableObject {
    
    let movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    func isNotLastCategory(_ category: String) -> Bool {
        let catCount = movie.categoties?.count
        
        if let index = movie.categoties?.firstIndex(of: category) {
            if index + 1 != catCount {
                return true
            }
        }
        
        return false
    }
    
}
