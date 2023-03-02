//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies.shuffled()
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Horror"] = exampleMovies.shuffled()
        movies["Comedy"] = exampleMovies.shuffled()
        movies["Romance"] = exampleMovies.shuffled()
    }
    
}
