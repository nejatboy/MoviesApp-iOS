//
//  BaseNavigationController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseNavigationController: UINavigationController {
    
    var firebaseService = FirebaseService()
    var apiService = ApiService()
    private let progressView = ProgressView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(progressView)
        
        setupNavigationBar()
        
        firebaseService.messageListener = show(message:type:)
        apiService.messageListener = show(message:type:)
    }
    
    
    private func setupNavigationBar() {
        isNavigationBarHidden = true
        let navImage = UIImage()
        
        navigationBar.also { it in
            it.tintColor = .white
            it.shadowImage = navImage
            it.setBackgroundImage(navImage, for: .default)
            it.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]        // Title color
        }
    }
    
    
    func show(message: String, type: MessageType) {
        hideProgress()
        
        DispatchQueue.main.async {
            let messageView = MessageView()
            messageView.show(parent: self.view, message: message)
        }
    }
    
    
    func showProgress() {
        progressView.show()
    }
    
    
    
    func hideProgress() {
        progressView.hide()
    }
}
