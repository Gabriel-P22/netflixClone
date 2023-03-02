//
//  CategoriesCarouselViewModel.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import Foundation

class CategoriesCarouselViewModel: ObservableObject {
    var movies: [String: [Movie]]
    
    init(movies: [String : [Movie]]) {
        self.movies = movies
    }
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
}
