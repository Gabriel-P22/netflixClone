//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    
    let viewModel: TopMoviePreviewViewModel
    
    var body: some View {
        ZStack {
            KFImage(viewModel.movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(viewModel.movie.categoties ?? [], id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                                .bold()
                            
                            if viewModel.isNotLastCategory(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButtonComponent(
                        text: "My List",
                        isOnImage: "checkmark",
                        isOffImage: "plus",
                        isOn: true) {
                            //
                        }
                    Spacer()
                    PlayButtonComponent(text: "Play", imageName: "play.fill") {
                        //
                    }
                    Spacer()
                    SmallVerticalButtonComponent(
                        text: "Info",
                        isOnImage: "info.circle",
                        isOffImage: "info.circle",
                        isOn: true) {
                            //
                        }
                    Spacer()
                }.padding(.vertical, 20)
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 100)
                )
        }.foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(viewModel: TopMoviePreviewViewModel(movie: exampleMovie1))
    }
}
