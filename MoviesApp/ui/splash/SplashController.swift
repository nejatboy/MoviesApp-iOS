//
//  SplashController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation


class SplashController: BaseController<MainNavigationController> {
    
    private let layout = SplashLayout()
    
    
    override func loadView() {
        view = layout
    }
}
