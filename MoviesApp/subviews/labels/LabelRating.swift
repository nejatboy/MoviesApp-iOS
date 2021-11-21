//
//  LabelRatingCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation



class LabelRating: BaseLabel {
    
    override func configure() {
        textColor = .lightGray
        set(fontSize: 14, isBold: false)
    }
}
