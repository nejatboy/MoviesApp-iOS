//
//  SplashController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation


class SplashController: BaseController<MainNavigationController> {
    
    private let layout = SplashLayout()
    private let interactor = SplashInteractor()
    
    
    override func loadView() {
        view = layout
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.requestFetchApplicationInfo(firebaseService: firebaseService, completion: infoFetched(_:))
    }
    
    
    private func infoFetched(_ info: Info) {
        layout.labelIntro.set(text: info.intro)
        
        guard let currentVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else { return }
        
        if info.version > currentVersion {
            // New Version
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.navigationController().goToHomeController()
        }
    }
}
