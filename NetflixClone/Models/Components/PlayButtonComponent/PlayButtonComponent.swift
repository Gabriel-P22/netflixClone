//
//  PlayButtonComponent.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 23/02/23.
//

import SwiftUI

struct PlayButtonComponent: View {
    
    var text: String
    var imageName: String
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: imageName)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
            }
            .frame(width: 120)
            .padding(.vertical, 6)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(3.0)
            
        }

    }
}

struct PlayButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PlayButtonComponent(text: "Play", imageName: "play.fill") {
                
            }
        }
    }
}
