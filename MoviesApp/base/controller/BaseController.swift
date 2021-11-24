//
//  BaseController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseController<NC: BaseNavigationController>: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    func navigationController() -> NC? {
        return navigationController as? NC
    }

    
    func show(message: String, type: MessageType) {
        navigationController()?.show(message: message, type: type)
    }
    
    
    var firebaseService: FirebaseService? {
        return navigationController()?.firebaseService
    }
    
    
    var apiService: ApiService? {
        return navigationController()?.apiService
    }
}
