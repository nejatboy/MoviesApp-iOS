//
//  HomeCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit
import Kingfisher


class HomeCell: BaseTableViewCell {
    
    private let imageViewPoster = ImageViewPoster()
    private let labelTitle = LabelTitleHomeCell()
    private let labelYear = LabelYearHomeCell()
    
    
    override func configure() {
        setupSubviews()
        
        setConstraints()
    }
    
    
    private func setupSubviews() {
        addSubview(imageViewPoster)
        addSubview(labelTitle)
        addSubview(labelYear)
    }
    
    
    private func setConstraints() {
        let spacing = Device.width * 0.02
        
        NSLayoutConstraint.activate([
            imageViewPoster.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            imageViewPoster.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            imageViewPoster.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageViewPoster.heightAnchor.constraint(equalTo: imageViewPoster.widthAnchor, multiplier: 1.53),        //Image dimension ratio!
                
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelTitle.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.95),
            labelTitle.topAnchor.constraint(equalTo: imageViewPoster.bottomAnchor, constant: spacing),
            
            labelYear.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelYear.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: spacing),
        
            bottomAnchor.constraint(equalTo: labelYear.bottomAnchor, constant: spacing),
        ])
    }
    
    
    func bind(movie: Movie) {
        labelTitle.text = movie.title
        labelYear.text = movie.year
        imageViewPoster.kf.setImage(with: URL(string: movie.poster))
    }
}
