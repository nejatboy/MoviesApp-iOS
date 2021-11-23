//
//  HomeController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit



class HomeController: BaseController<MainNavigationController> {
    
    private let layout = HomeLayout()
    private var keyword: String!
    
    
    override func loadView() {
        view = layout
        
        navigationController().isNavigationBarHidden = false
        navigationItem.title = "Movies App"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(buttonSearchClicked))
        
        keyword = navigationController().keywords.randomElement()!
        
        request(page: 1)
    }
    
    
    func request(page: Int) {
        apiService.search(keyword: keyword, page: page) {
            self.layout.collectionView.addMovies($0)
        }
    }
    
    
    func searched(text: String) {
        layout.collectionView.clear()
        view.endEditing(true)
        
        keyword = text
        request(page: 1)
    }
    
    
    func onItemMovieClicked(movieID: String) {
        navigationController().goToDetailController(movieID: movieID)
    }
    
    
    @objc private func buttonSearchClicked() {
        navigationItem.rightBarButtonItem = nil
        layout.searchBar.show()
    }
}
