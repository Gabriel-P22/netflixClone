//
//  LinearGradient.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 23/02/23.
//

import Foundation
import SwiftUI

extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)],
        startPoint: .top,
        endPoint: .bottom
    )
}
