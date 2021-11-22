//
//  BaseTableViewCell.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation
import UIKit



class BaseTableViewCell: UITableViewCell {
    
    static let id = UUID().uuidString
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configure()
        
        selectionStyle = .none
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
    }
}
