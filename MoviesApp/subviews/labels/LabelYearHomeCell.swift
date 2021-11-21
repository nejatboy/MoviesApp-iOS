//
//  LabelDescriptionHomeCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation



class LabelYearHomeCell: BaseLabel {
    
    override func configure() {
        textColor = .gray
        set(fontSize: 14, isBold: false)
        numberOfLines = 5
    }
}
