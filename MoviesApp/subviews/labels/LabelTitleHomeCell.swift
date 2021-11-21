//
//  LabelTitleCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation


class LabelTitleHomeCell: BaseLabel {
    
    
    override func configure() {
        textColor = .black
        set(fontSize: 17, isBold: true)
        textAlignment = .center
        numberOfLines = 2
    }
}
