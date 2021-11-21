//
//  HomeController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import Foundation



class HomeController: BaseController<MainNavigationController> {
    
    private let layout = HomeLayout()
    
    
    override func loadView() {
        view = layout
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiService.fetchMovieDetail(id: "tt0120737")
    }
    
    
    func searched(text: String) {
        print("asd")
    }
}
