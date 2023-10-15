//
//  MainNavigationController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation


class MainNavigationController: BaseNavigationController {
    
    var keywords = ["fear", "love", "dark", "award", "sword", "kight", "power", "want", "hell", "captain"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [SplashController()]
    }
    
    
    func goToHomeController() {
        let homeController = HomeController()
        pushViewController(homeController, animated: true)
        
        viewControllers.removeAll {
            $0 is SplashController
        }
    }
    
    
    func goToDetailController(movieDetail: MovieDetailResponse) {
        let detailController = DetailController()
        detailController.movieDetail = movieDetail
        
        pushViewController(detailController, animated: true)
    }
}
