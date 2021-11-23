//
//  LabelTitleCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation


class LabelTitleHomeCell: BaseLabel {
    
    
    override func configure() {
        textColor = .white
        set(fontSize: 14, isBold: false)
        numberOfLines = 2
    }
}
