//
//  ImageViewHomeCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import SDWebImage


class ImageViewPoster: BaseImageView {
    
    override func configure() {
        layer.cornerRadius = Device.width * 0.02
        layer.masksToBounds = true
    }
    
    
    func loadFromUrl(url: String?) {
        guard let url = url else { return }
        
        sd_setImage(
            with: URL(string: url)
        )
    }
}
