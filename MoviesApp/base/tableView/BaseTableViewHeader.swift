//
//  BaseTableViewHeader.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation
import UIKit


class BaseTableViewHeader: UITableViewHeaderFooterView {
    
    static let id = UUID().uuidString
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
    }
}
