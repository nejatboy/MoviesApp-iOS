//
//  HomeController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit



class HomeController: BaseController<MainNavigationController> {
    
    private let layout = HomeLayout()
    var keyword: String!
    
    
    override func loadView() {
        view = layout
        
        navigationController()?.isNavigationBarHidden = false
        navigationItem.title = "Movies App"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(buttonSearchClicked))
        
        keyword = navigationController()?.keywords.randomElement()!
        
        request(page: 1, keyword: keyword)
    }
    
    
    func request(page: Int, keyword: String) {
        showProgress()
        
        apiService?.search(keyword: keyword, page: page) { [self] in
            if keyword != self.keyword && $0.isEmpty {
                layout.collectionView.isHidden = true
                layout.labelNoResult.isHidden = false
            }
            
            else {
                layout.collectionView.isHidden = false
                layout.labelNoResult.isHidden = true
                layout.collectionView.addMovies($0)
            }
            
            self.keyword = keyword
            hideProgress()
        }
    }
    
    
    func searched(text: String) {
        layout.collectionView.clear()
        view.endEditing(true)
        request(page: 1, keyword: text)
    }
    
    
    func onItemMovieClicked(movieID: String) {
        showProgress()
        
        apiService?.fetchMovieDetail(id: movieID) { [self] movieDetail in
            navigationController()?.goToDetailController(movieDetail: movieDetail)
            hideProgress()
        }   
    }
    
    
    @objc private func buttonSearchClicked() {
        navigationItem.rightBarButtonItem = nil
        layout.searchBar.show()
    }
}
