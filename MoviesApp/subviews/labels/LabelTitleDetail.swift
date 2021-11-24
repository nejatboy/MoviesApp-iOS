//
//  LabelYearCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation



class LabelTitleDetail: BaseLabel {
    
    override func configure() {
        textColor = .white
        set(fontSize: 18, isBold: true)
        textAlignment = .left
    }
}
