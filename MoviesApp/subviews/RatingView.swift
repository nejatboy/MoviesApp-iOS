//
//  RatingView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit


class RatingView: BaseSimpleView {
    
    private let imageViewStar = ImageViewStar()
    private let labelRating = LabelRating()
    
    
    override func setupSubviews() {
        addSubview(imageViewStar)
        addSubview(labelRating)
        
    }
    
    
    override func setConstraints() {
        let spacing = Device.width * 0.02
        
        NSLayoutConstraint.activate([
            labelRating.trailingAnchor.constraint(equalTo: trailingAnchor),
            labelRating.topAnchor.constraint(equalTo: topAnchor),
            
            bottomAnchor.constraint(equalTo: labelRating.bottomAnchor),
            
            imageViewStar.trailingAnchor.constraint(equalTo: labelRating.leadingAnchor, constant: -spacing),
            imageViewStar.heightAnchor.constraint(equalToConstant: 2 * spacing),
            imageViewStar.widthAnchor.constraint(equalToConstant: 2 * spacing),
            imageViewStar.centerYAnchor.constraint(equalTo: centerYAnchor),
    
            leadingAnchor.constraint(equalTo: imageViewStar.leadingAnchor)
        ])
    }
    
    
    func set(rating: String) {
        labelRating.text = "\(rating) / 10"
    }
}
