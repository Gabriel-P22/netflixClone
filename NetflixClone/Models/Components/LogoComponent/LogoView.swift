//
//  LogoView.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 23/02/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Button {
            //
        } label: {
            Image("netflix_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
