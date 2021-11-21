//
//  HomeTableView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 21.11.2021.
//

import Foundation
import UIKit

// 9893101c

class HomeTableView<C: HomeCell, H: HomeHeader>: BaseTableViewHasHeader<C, HomeLayout, H>, UITableViewDelegate, UITableViewDataSource {
    
    private let movies = [MoviesResponseModel]()
    
    
    override func configuration() {
        super.configuration()
        
        delegate = self
        dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: C.id, for: indexPath) as! C
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return dequeueReusableHeaderFooterView(withIdentifier: H.id) as! H
    }
}
