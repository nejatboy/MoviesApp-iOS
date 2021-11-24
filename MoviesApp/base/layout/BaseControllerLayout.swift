//
//  BaseControllerLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class BaseControllerLayout<NC: BaseNavigationController, C: BaseController<NC>>: BaseLayout {
    
    init() {
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
    
    
    func controller() -> C {
        return next as! C
    }
    
    
    func setupSubviews() {
        
    }
    
    
    func setConstraints() {
        
    }
}
