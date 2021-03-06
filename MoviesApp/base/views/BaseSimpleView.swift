//
//  BaseSimpleView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit


class BaseSimpleView: UIView {
    
    
    init() {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        
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
