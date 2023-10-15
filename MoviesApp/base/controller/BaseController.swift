//
//  BaseController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseController<NC: BaseNavigationController, L: BaseControllerLayout>: UIViewController {
    
    
    override func loadView() {
        view = L()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    var navController: NC? {
        navigationController as? NC
    }

    
    func show(message: String, type: MessageType) {
        navController?.show(message: message, type: type)
    }
    
    
    var apiService: ApiService? {
        navController?.apiService
    }
    
    
    func showProgress() {
        navController?.showProgress()
    }
    
    
    func hideProgress() {
        navController?.hideProgress()
    }
    
    
    var layout: L {
        view as! L
    }
}
