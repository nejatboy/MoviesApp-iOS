//
//  DetailLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit



class DetailLayout: BaseControllerLayout<MainNavigationController, DetailController> {
    
    private let scrollView = VerticalScrollView()
    let imageViewPoster = ImageViewPoster()
    let ratingView = RatingView()
    let genreView = GenreView()
    let labelTitle = LabelTitleDetail()
    let labelDescription = LabelDescriptionDetail()
    
    
    override func setupSubviews() {
        scrollView.addSubview(imageViewPoster)
        scrollView.addSubview(ratingView)
        scrollView.addSubview(genreView)
        scrollView.addSubview(labelTitle)
        scrollView.addSubview(labelDescription)
        
        addSubview(scrollView)
        
        
        
        labelTitle.text = "alsş dksaşşdkl lksadşaşs"
        labelDescription.text = "alsş dksaşşdkl lksadşaşs l akslşdlk alksdlşksdklsşaakşlskşdlkasdlşasldas alsşdl şsa dl adsklşkdsl şasaşdlk sad klşsad kşlasd klşasdlşkdalşsd kaskşlddaksldklşassadlk şds klşd salkşsd alkşdlskaşdsklşsdlkş dlasşks adklsa dklşsa dklşsklşasa kdlş sklşalşks "
        ratingView.set(rating: "8.2")
        genreView.set(genre: "Action, Drama")
    }
    
    
    override func setConstraints() {
        let spacing: CGFloat = 15
        
        scrollView.fillTo(parent: self)
        
        NSLayoutConstraint.activate([
            imageViewPoster.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: spacing),
            imageViewPoster.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.6),
            imageViewPoster.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            imageViewPoster.heightAnchor.constraint(equalTo: imageViewPoster.widthAnchor, multiplier: 1.53),
            
            ratingView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -spacing),
            ratingView.topAnchor.constraint(equalTo: imageViewPoster.bottomAnchor, constant: 2 * spacing),
            
            genreView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: spacing),
            genreView.topAnchor.constraint(equalTo: imageViewPoster.bottomAnchor, constant: 2 * spacing),
            // WItDH
            
            labelTitle.topAnchor.constraint(equalTo: genreView.bottomAnchor, constant: 2 * spacing),
            labelTitle.leadingAnchor.constraint(equalTo: genreView.leadingAnchor),
            labelTitle.trailingAnchor.constraint(equalTo: ratingView.trailingAnchor),
            
            labelDescription.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 2 * spacing),
            labelDescription.leadingAnchor.constraint(equalTo: labelTitle.leadingAnchor),
            labelDescription.trailingAnchor.constraint(equalTo: labelTitle.trailingAnchor),
            
            scrollView.bottomAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 2 * spacing)
        ])
    }
}
