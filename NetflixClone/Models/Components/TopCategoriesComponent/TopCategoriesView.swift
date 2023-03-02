//
//  TopCategoriesView.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 23/02/23.
//

import SwiftUI

struct TopCategoriesView: View {
    var body: some View {
        HStack {
            LogoView()
            Spacer()
            CategoryTopBarButtonView(title: "TV Shows")
            Spacer()
            CategoryTopBarButtonView(title: "Movies")
            Spacer()
            CategoryTopBarButtonView(title: "My List")
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}



struct TopCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
