//
//  BaseCardLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//

import UIKit



class BaseCardView: BaseSimpleView {
    
    let spacing = Device.width * 0.01
    
    
    override func configure() {
        backgroundColor = .white.withAlphaComponent(0.2)
        layer.cornerRadius = spacing
    }
}
