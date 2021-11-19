//
//  MainNavigationController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation



class MainNavigationController: BaseNavigationController {
    
    private let splashController = SplashController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [splashController]
    }
}
