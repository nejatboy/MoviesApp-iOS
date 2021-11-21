//
//  HomeHeader.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import UIKit



class HomeHeader: BaseTableViewHeader {
    
    private let searchBar = SearchBar()
    
    
    override func configure() {
        addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            bottomAnchor.constraint(equalTo: searchBar.bottomAnchor)
        ])
    }
}
