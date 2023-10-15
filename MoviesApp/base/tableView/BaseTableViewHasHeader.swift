//
//  BaseTableViewHasHeader.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation


class BaseTableViewHasHeader<C: BaseTableViewCell, H: BaseTableViewHeader>: BaseTableView<C> {
    
    
    override func configuration() {
        register(H.self, forHeaderFooterViewReuseIdentifier: H.id)
    }
    
    
}
