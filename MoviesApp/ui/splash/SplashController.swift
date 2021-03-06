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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showProgress()
        firebaseService?.fetchApplicationInfo(completion: infoFetched(_:))
    }
    
    
    private func infoFetched(_ info: Info) {
        layout.labelIntro.set(text: info.intro)
        
        guard let currentVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else { return }
        
        if info.version > currentVersion {
            show(message: Text.Error.updateApp, type: .error)
            return
        }
        
        firebaseService?.fetchKeywords(completion: keywordsFetched(keywords:))
    }
    
    
    private func keywordsFetched(keywords: [String]) {
        hideProgress()
        
        navigationController()?.keywords = keywords
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.navigationController()?.goToHomeController()
        }
    }
}
