//
//  MainNavigationController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation



class MainNavigationController: BaseNavigationController {
    
    private let splashController = SplashController()
    private lazy var homeController = HomeController()
    private lazy var detailController = DetailController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [splashController]
    }
    
    
    func goToHomeController() {
        pushViewController(homeController, animated: true)
    }
}
