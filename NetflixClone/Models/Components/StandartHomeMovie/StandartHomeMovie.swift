//
//  StandartHomeMovie.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import SwiftUI
import Kingfisher

struct StandartHomeMovie: View {
    var movie: Movie?
    
    var body: some View {
        if let movie = movie {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
        }
    }
}

struct StandartHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMovie1)
            
    }
}
