//
//  BaseControllerLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseControllerLayout: UIView {
    
    
    required init() {
        super.init(frame: Device.dimension)
        
        backgroundColor = .black
        
        setupSubviews()
        
        setConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        endEditing(true)
    }
    
    
    func setupSubviews() {
        
    }
    
    
    func setConstraints() {
        
    }
}
