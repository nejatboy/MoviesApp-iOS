//
//  LabelIntro.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import UIKit



class LabelIntroSplash: BaseLabel {
    
    override func configure() {
        textColor = .gray
        set(fontSize: 40, isBold: true)
        textAlignment = .center
        alpha = 0
    }
    
    
    func set(text: String) {
        self.text = text
        
        UIView.animate(withDuration: 0.5) {
            self.alpha = 1
        }
    }
}
