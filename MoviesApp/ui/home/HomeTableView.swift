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
    
    private var movies = [Movie]()
    
    
    override func configuration() {
        super.configuration()
        
        delegate = self
        dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: C.id, for: indexPath) as! C
        let movie = movies[indexPath.row]
        cell.bind(movie: movie)
        
        if indexPath.row == movies.count - 1 {
            let page = movies.count / 10 + 1
            parent().controller().request(page: page)
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return dequeueReusableHeaderFooterView(withIdentifier: H.id) as! H
    }
    
    
    func addMovies(_ movies: [Movie]) {
        self.movies.append(contentsOf: movies)
        reloadData()
    }
    
    
    func clear() {
        movies.removeAll()
        reloadData()
    }
}
