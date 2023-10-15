//
//  SplashController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation


class SplashController: BaseController<MainNavigationController, SplashLayout> {
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showProgress()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: goToHome)
    }
    
    
    private func goToHome() {
        hideProgress()
        navController?.goToHomeController()
    }
}
