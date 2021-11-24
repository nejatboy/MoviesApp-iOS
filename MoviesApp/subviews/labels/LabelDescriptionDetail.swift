//
//  LabelDescriptionDetail.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//

import Foundation


class LabelDescriptionDetail: BaseLabel {
    
    override func configure() {
        textColor = .lightGray
        set(fontSize: 15, isBold: false)
        textAlignment = .left
    }
}
