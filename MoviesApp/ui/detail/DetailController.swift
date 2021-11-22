//
//  DetailController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation


class DetailController: BaseController<MainNavigationController> {
    
    private let layout = DetailLayout()
    
    
    override func loadView() {
        view = layout
    }
    
    
    func fetchMovieDetail(id: String) {
        apiService.fetchMovieDetail(id: id) { movieDetail in
            print("asd")
        }
    }
}
