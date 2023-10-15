//
//  BaseImageView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit


class BaseImageView: UIImageView {
    
    
    init() {
        super.init(image: nil)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {}
}
