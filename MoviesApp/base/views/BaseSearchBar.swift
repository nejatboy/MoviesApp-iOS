//
//  BaseSearchView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import UIKit


class BaseSearchBar: UISearchBar, UISearchBarDelegate {
    
    var searched: ((String) -> Void)?
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        backgroundImage = UIImage()
        
        translatesAutoresizingMaskIntoConstraints = false
        delegate = self
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {}
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {}
}
