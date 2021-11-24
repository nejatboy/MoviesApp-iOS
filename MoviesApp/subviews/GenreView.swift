//
//  GenreView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//

import UIKit


class GenreView: BaseCardView {
    
    private let label = LabelCardView()
    
    
    override func setupSubviews() {
        addSubview(label)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: spacing),
            label.topAnchor.constraint(equalTo: topAnchor, constant: spacing),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -spacing),
            
            trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: spacing)
        ])
    }
    
    
    func set(genre: String) {
        label.text = genre
    }
}
