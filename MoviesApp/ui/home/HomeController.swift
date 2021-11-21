//
//  HomeController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation



class HomeController: BaseController<MainNavigationController> {
    
    private let layout = HomeLayout()
    private var keyword: String!
    
    
    override func loadView() {
        view = layout
    }
    
    
    func request(page: Int) {
        apiService.search(keyword: keyword, page: page) {
            self.layout.tableView.addMovies($0)
        }
    }
    
    
    func searched(text: String) {
        layout.tableView.clear()
        view.endEditing(true)
        
        keyword = text
        request(page: 1)
    }
}
