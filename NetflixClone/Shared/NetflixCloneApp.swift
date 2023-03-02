//
//  NetflixCloneApp.swift
//  NetflixClone
//
//  Created by Gabriel Paschoal on 22/02/23.
//

import SwiftUI

@main
struct NetflixCloneApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
