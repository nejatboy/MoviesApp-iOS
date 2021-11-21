//
//  SearchBar.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import UIKit


class SearchBar: BaseSearchBar {
    
    override func configure() {
        
    }
    
    
    override func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        (superview?.superview?.superview as? HomeLayout)?.controller().searched(text: text!)
        text = nil
    }
}
