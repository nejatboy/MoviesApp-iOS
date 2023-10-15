//
//  HomeController.swift
//  MoviesApp
//
//  Created by Nejat BOY on 19.11.2021.
//

import UIKit


class HomeController: BaseController<MainNavigationController, HomeLayout> {
    
    var keyword: String?
    
    
    override func loadView() {
        super.loadView()
        
        layout.collectionView.onItemClicked = onItemMovieClicked
        layout.collectionView.lastItemScrolled = lastMovieScrolled
        layout.searchBar.searched = searched
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Movies App"
        navigationController?.isNavigationBarHidden = false
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(buttonSearchClicked))
        
        if let randomKeyword = navController?.keywords.randomElement() {
            request(page: 1, keyword: randomKeyword)
        }
    }
    
    
    func request(page: Int, keyword: String) {
        showProgress()
        
        apiService?.search(keyword: keyword, page: page) { [self] in
            if keyword != self.keyword && $0.isEmpty {
                layout.collectionView.isHidden = true
                
            } else {
                layout.collectionView.isHidden = false
                layout.collectionView.addItems($0)
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
    
    
    private func onItemMovieClicked(movie: Movie) {
        showProgress()
        
        apiService?.fetchMovieDetail(id: movie.imdbID) { [self] movieDetail in
            navController?.goToDetailController(movieDetail: movieDetail)
            hideProgress()
        }   
    }
    
    
    @objc private func buttonSearchClicked() {
        navigationItem.rightBarButtonItem = nil
        layout.searchBar.show()
    }
    
    
    private func lastMovieScrolled(numberOfMovies: Int) {
        let numberOfMoviesOnAPage = 10
        let pageNumber = numberOfMovies / numberOfMoviesOnAPage + 1
        
        guard let keyword = keyword else { return }
        request(page: pageNumber, keyword: keyword)
    }
}
