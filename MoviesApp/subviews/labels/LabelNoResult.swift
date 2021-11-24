//
//  LabelNoResult.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//

import Foundation



class LabelNoResult: BaseLabel {
    
    override func configure() {
        textColor = .lightGray
        set(fontSize: 40, isBold: false)
        text = "Movie not found!"
        isHidden = true
    }
}
