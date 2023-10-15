//
//  HomeCell2.swift
//  MoviesApp
//
//  Created by Nejat BOY on 23.11.2021.
//

import UIKit



class HomeCell: BaseCollectionViewCell<Movie> {
    
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
        let spacing = Device.height * 0.01
        
        NSLayoutConstraint.activate([
            imageViewPoster.topAnchor.constraint(equalTo: topAnchor),
            imageViewPoster.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageViewPoster.widthAnchor.constraint(equalTo: widthAnchor),
            imageViewPoster.heightAnchor.constraint(equalTo: imageViewPoster.widthAnchor, multiplier: 1.53),
            
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelTitle.topAnchor.constraint(equalTo: imageViewPoster.bottomAnchor, constant: spacing),
            labelTitle.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.95),
            
            labelYear.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelYear.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: spacing)
        ])
    }
    
    
    override func bindItem(item: Movie) {
        labelTitle.text = item.title
        labelYear.text = item.year
        imageViewPoster.loadFromUrl(url: item.poster)
    }
    
    
    override var isHighlighted: Bool {
        didSet {
            superview?.superview?.endEditing(true)
            UIView.animate(withDuration: 0.1) { [self] in
                imageViewPoster.transform = isHighlighted ? CGAffineTransform(scaleX: 0.8, y: 0.8) : CGAffineTransform.identity
            }
        }
    }
}
