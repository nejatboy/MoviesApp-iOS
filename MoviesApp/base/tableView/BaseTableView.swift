//
//  BaseTableView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation
import UIKit



class BaseTableView<C: BaseTableViewCell>: UITableView {
    
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: .zero, style: .plain)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        register(C.self, forCellReuseIdentifier: C.id)
        
        configuration()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configuration() {
        
    }
}
