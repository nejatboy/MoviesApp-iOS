//
//  BaseCollectionViewCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 23.11.2021.
//


import UIKit


class BaseCollectionViewCell: UICollectionViewCell {
    
    static let id = UUID().uuidString
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
    }
}
