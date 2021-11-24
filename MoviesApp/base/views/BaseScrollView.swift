//
//  BaseScrollView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//

import Foundation
import UIKit


class BaseScrollView: UIScrollView {
    
    
    init() {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
