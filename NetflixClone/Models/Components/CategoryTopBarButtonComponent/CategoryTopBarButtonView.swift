//
//  CategoryTopBarButtonView.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 23/02/23.
//

import SwiftUI

struct CategoryTopBarButtonView: View {
    let title: String
    
    var body: some View {
        Button {
            //
        } label: {
            Text(title)
                .font(.title3)
                .bold()
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CategoryTopBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTopBarButtonView(title: "option")
    }
}
