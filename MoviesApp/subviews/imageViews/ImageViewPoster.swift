//
//  ImageViewHomeCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation
import UIKit


class ImageViewPoster: BaseImageView {
    
    override func configure() {
        backgroundColor = .systemGreen
        layer.cornerRadius = Device.width * 0.02
        layer.masksToBounds = true
    }
}
