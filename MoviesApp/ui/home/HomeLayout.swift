//
//  HomeLayout.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class HomeLayout: BaseControllerLayout<MainNavigationController, HomeController> {
    
    let searchBar = SearchBar()
    let collectionView = HomeCollectionView()
    let labelNoResult = LabelNoResult()
    
    
    override func setupSubviews() {
        addSubview(searchBar)
        addSubview(collectionView)
        addSubview(labelNoResult)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            searchBar.widthAnchor.constraint(equalTo: widthAnchor),
            searchBar.centerXAnchor.constraint(equalTo: centerXAnchor),
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            
            collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelNoResult.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelNoResult.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
