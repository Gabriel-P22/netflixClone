//
//  CategoriesCarouselComponent.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import SwiftUI

struct CategoriesCarouselComponent: View {
    let viewModel: CategoriesCarouselViewModel
    
    init(viewModel: CategoriesCarouselViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            LazyVStack {
                ForEach(viewModel.allCategories, id: \.self) { category in
                    VStack {
                        HStack {
                            Text(category)
                                .font(.title3)
                                .bold()
                            Spacer()
                        }
                        MovieCarousel(moviesForCategory: viewModel.getMovie(forCategory: category))
                    }
                }
            }
        }
    }
}
