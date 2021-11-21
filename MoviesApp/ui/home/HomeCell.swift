//
//  HomeCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit


class HomeCell: BaseTableViewCell {
    
    private let imageViewPoster = ImageViewPoster()
    private let labelTitle = LabelTitleHomeCell()
    private let labelRunTime = LabelRunTimeHomeCell()
    private let ratingView = RatingView()
    private let labelDescription = LabelDescriptionHomeCell()
    
    
    override func configure() {
        setupSubviews()
        
        setConstraints()
        
        labelTitle.text = "(2001) The Lord of the Rings: The Fellowship of the Ring asd asd asd asd asdas das das"
        labelRunTime.text = "178 min"
        labelDescription.text = "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."
        ratingView.set(rating: "8.8")
    }
    
    
    private func setupSubviews() {
        addSubview(imageViewPoster)
        addSubview(labelTitle)
        addSubview(labelRunTime)
        addSubview(ratingView)
        addSubview(labelDescription)
    }
    
    
    private func setConstraints() {
        let spacing = Device.width * 0.02
        
        NSLayoutConstraint.activate([
            imageViewPoster.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            imageViewPoster.leadingAnchor.constraint(equalTo: leadingAnchor, constant: spacing),
            imageViewPoster.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            imageViewPoster.heightAnchor.constraint(equalTo: imageViewPoster.widthAnchor, multiplier: 1.7),
            
            bottomAnchor.constraint(equalTo: imageViewPoster.bottomAnchor, constant: spacing),
            
            labelTitle.leadingAnchor.constraint(equalTo: imageViewPoster.trailingAnchor, constant: spacing),
            labelTitle.topAnchor.constraint(equalTo: imageViewPoster.topAnchor),
            labelTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -spacing),
            
            labelRunTime.leadingAnchor.constraint(equalTo: labelTitle.leadingAnchor),
            labelRunTime.bottomAnchor.constraint(equalTo: imageViewPoster.bottomAnchor),
            
            ratingView.trailingAnchor.constraint(equalTo: labelTitle.trailingAnchor),
            ratingView.bottomAnchor.constraint(equalTo: imageViewPoster.bottomAnchor),
            
            labelDescription.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: spacing),
            labelDescription.trailingAnchor.constraint(equalTo: labelTitle.trailingAnchor),
            labelDescription.leadingAnchor.constraint(equalTo: labelTitle.leadingAnchor)
        ])
    }
}
