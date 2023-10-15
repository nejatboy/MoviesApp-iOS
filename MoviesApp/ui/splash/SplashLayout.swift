//
//  SplashLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class SplashLayout: BaseControllerLayout {
    
    let labelIntro = LabelIntroSplash()
    
    
    override func setupSubviews() {
        addSubview(labelIntro)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            labelIntro.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelIntro.centerYAnchor.constraint(equalTo: centerYAnchor),
            labelIntro.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8)
        ])
    }
}
