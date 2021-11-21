//
//  LabelDescriptionHomeCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation



class LabelDescriptionHomeCell: BaseLabel {
    
    override func configure() {
        textColor = .gray
        set(fontSize: 15, isBold: false)
        numberOfLines = 5
    }
}
