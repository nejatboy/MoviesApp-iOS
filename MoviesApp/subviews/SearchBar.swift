//
//  SearchBar.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import UIKit


class SearchBar: BaseSearchBar<HomeLayout> {
    
    var heightConstraint = NSLayoutConstraint()
    
    override func configure() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        
        
        heightConstraint = heightAnchor.constraint(equalToConstant: 0)
        heightConstraint.isActive = true
    }
    
    
    override func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = self.text?.lowercased()
                .replacingOccurrences(of: " ", with: "")
                .replacingOccurrences(of: "ç", with: "c")
                .replacingOccurrences(of: "ş", with: "s")
                .replacingOccurrences(of: "ı", with: "i")
                .replacingOccurrences(of: "ü", with: "u")
                .replacingOccurrences(of: "ö", with: "o")
                .replacingOccurrences(of: "ğ", with: "g")
        else { return }
        
        parent().controller().searched(text: text)
        self.text = nil
    }
    
    
    func show() {
        UIView.animate(withDuration: 0.3) { [self] in
            heightConstraint.constant = 50
            parent().layoutIfNeeded()
        }
    }
}
