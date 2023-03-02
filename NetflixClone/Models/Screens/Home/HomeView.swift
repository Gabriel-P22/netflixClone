//
//  HomeView.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import SwiftUI

struct HomeView: View {
    let viewModel: HomeViewModel
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    ZStack(alignment: .top) {
                        TopMoviePreview(viewModel: TopMoviePreviewViewModel(movie: exampleMovie1))
                                .frame(width: screen.width)
                                .padding(.top, -100)
                        TopCategoriesView()
                    }
                    
                    
                    CategoriesCarouselComponent(viewModel: CategoriesCarouselViewModel(movies: viewModel.movies))
                        .padding(.horizontal, 10)
                }
            }
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
