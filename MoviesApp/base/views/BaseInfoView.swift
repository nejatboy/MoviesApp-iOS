//
//  BaseInfoView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 25.11.2021.
//

import UIKit


class BaseInfoView: UIView {
    
    init() {
        super.init(frame: Device.dimension)
        
        configure()
        setupSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
    }
    
    
    func setupSubviews() {
        
    }
    
    
    func setConstraints() {
        
    }
}

