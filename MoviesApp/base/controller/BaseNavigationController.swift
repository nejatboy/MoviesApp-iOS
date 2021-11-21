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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isNavigationBarHidden = true
        
        firebaseService.messageListener = show(message:type:)
        apiService.messageListener = show(message:type:)
    }
    
    
    func show(message: String, type: MessageType) {
        print(message)
    }
}
