//
//  BaseNavigationController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseNavigationController: UINavigationController {
    
    var firebaseService = FirebaseService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firebaseService.messageListener = show(message:type:)
    }
    
    
    func show(message: String, type: MessageType) {
        print(message)
    }
}
