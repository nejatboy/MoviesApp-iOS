//
//  BaseTableViewHasHeader.swift
//  MoviesApp
//
//  Created by Nejat BOY on 20.11.2021.
//

import Foundation


class BaseTableViewHasHeader<C: BaseTableViewCell, L: BaseLayout, H: BaseTableViewHeader>: BaseTableView<C, L> {
    
    
    override func configuration() {
        register(H.self, forHeaderFooterViewReuseIdentifier: H.id)
    }
    
    
}
