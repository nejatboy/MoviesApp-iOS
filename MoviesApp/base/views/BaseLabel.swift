//
//  BaseLabel.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import UIKit


class BaseLabel: UILabel {
    
    init() {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        numberOfLines = 0
        textAlignment = .center
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
    }
    
    
    func set(fontSize: CGFloat, isBold: Bool) {
        font = UIFont.getDynamic(of: fontSize, isBold: isBold)
    }
}

