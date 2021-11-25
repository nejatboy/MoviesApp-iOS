//
//  ProgressView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 25.11.2021.
//

import UIKit


class ProgressView: BaseInfoView {
    
    private let imageView = ImageViewProgress().also { it in
        it.animationDuration = 0.5
    }
    
    
    override func configure() {
        backgroundColor = UIColor.black.withAlphaComponent(0.5)
        isHidden = true
        
        loadImages()
        
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        ])
    }
    
    
    private func loadImages() {
        var images = [UIImage]()
        
        for i  in 1...5 {
            let image = UIImage(named: "progress_\(i)")!
            images.append(image)
        }
        
        imageView.animationImages = images
    }
    
    
    func show() {
        isHidden = false
        imageView.startAnimating()
    }
    
    
    func hide() {
        async { [self] in
            isHidden = true
            imageView.stopAnimating()
        }
    }
}

