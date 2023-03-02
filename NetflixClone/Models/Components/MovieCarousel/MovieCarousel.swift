//
//  MovieCarousel.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import SwiftUI

struct MovieCarousel: View {
    var moviesForCategory: [Movie]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(moviesForCategory, id: \.id) { movie in
                    StandartHomeMovie(movie: movie)
                        .frame(width: 100, height: 200)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 10)
                }
            }
        }
    }
}
