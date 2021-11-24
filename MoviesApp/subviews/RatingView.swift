//
//  RatingView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit


class RatingView: BaseCardView {
    
    private let imageViewStar = ImageViewStar()
    private let labelRating = LabelCardView()
    
    
    override func setupSubviews() {
        addSubview(imageViewStar)
        addSubview(labelRating)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            labelRating.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -spacing),
            labelRating.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            
            bottomAnchor.constraint(equalTo: labelRating.bottomAnchor, constant: spacing),
            
            imageViewStar.trailingAnchor.constraint(equalTo: labelRating.leadingAnchor, constant: -spacing),
            imageViewStar.heightAnchor.constraint(equalToConstant: 20),
            imageViewStar.widthAnchor.constraint(equalToConstant: 20),
            imageViewStar.centerYAnchor.constraint(equalTo: centerYAnchor),
    
            leadingAnchor.constraint(equalTo: imageViewStar.leadingAnchor, constant: -spacing)
        ])
    }
    
    
    func set(rating: String) {
        labelRating.text = "\(rating) / 10"
    }
}
